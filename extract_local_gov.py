#!/usr/bin/env python3

import requests
import re
from bs4 import BeautifulSoup


def retrieve_data(data_url):
    response = requests.get(data_url)
    if response.status_code == 200:
        return response.json()
    else:
        print(f"Failed to retrieve data from {data_url}")
        return None


def get_html_text(page_url):
    response = requests.get(page_url)
    if response.status_code == 200:
        soup = BeautifulSoup(response.text, 'html.parser')
        return soup.get_text()
    else:
        print(f"Failed to retrieve content from {page_url}. Status code: {response.status_code}")
        return None


def local_gov_type_name_to_id(type_name):
    local_gov_type_name_to_id_map = {
        "gaunpalika": "1",
        "nagarpalika": "2",
        "upamahanagarpalika": "3",
        "mahanagarpalika": "4",
    }

    return local_gov_type_name_to_id_map.get(type_name.lower(), "0")


def nepali_to_english(text):
    nepali_to_english_map = {
        '०': '0',
        '१': '1',
        '२': '2',
        '३': '3',
        '४': '4',
        '५': '5',
        '६': '6',
        '७': '7',
        '८': '8',
        '९': '9'
    }
    return ''.join([nepali_to_english_map.get(char, char) for char in text])


def find_duplicates(local_gov_list):
    id_dict = {}
    duplicate_entries = []
    unique_entries = []

    for entry in local_gov_list:
        entry_id = entry["LocalGovIdForDistrict"] + "-" + entry["district_id"]
        if entry_id in id_dict:
            id_dict[entry_id] += 1
            if id_dict[entry_id] > 1:
                duplicate_entries.append(entry_id)
        else:
            id_dict[entry_id] = 1
            unique_entries.append(entry)

    return duplicate_entries, unique_entries


provinceDataBaseUrl = "https://sthaniya.gov.np/gis/data/Province{number}.json"
districtDataBaseUrl = "https://sthaniya.gov.np/gis/data/Dist_GaPa/{targetCode}.json"
municipalityDataBaseUrl = "https://sthaniya.gov.np/gis/gapanapa.php?p={did}-{gnid}-00"

provinceUrls = [provinceDataBaseUrl.replace("{number}", str(x)) for x in range(1, 8)]

provinceData = []
for url in provinceUrls:
    print(f"Retrieving Data From {url}")
    province_data = retrieve_data(url)
    if province_data:
        print("--> Success!")
        provinceData.append(province_data)
    else:
        print("--> Failure!")

print("Extracting districts from province data.")
_districts = []
for provinceInfo in provinceData:
    _districts.append(provinceInfo["features"])
__districts = [dist["properties"] for distList in _districts for dist in distList]
districts = [
    {
        "DistrictId": district["districtid"],
        "Nepali": district["DISTRICT"],
        "Province": district["Province"],
        "Level": district["Level"],
        "TARGET": district["TARGET"],
    } for district in __districts
]

print("Creating district urls.")
districtUrls = [districtDataBaseUrl.replace("{targetCode}", x["TARGET"].title()) for x in districts]

districtData = []
for url in districtUrls:
    print(f"Retrieving Data From {url}")
    district_data = retrieve_data(url)
    if district_data:
        print("--> Success!")
        districtData.append(district_data)
    else:
        print("--> Failure!")

print("Extracting local governments from district data.")
_municipalities = []
for districtInfo in districtData:
    _municipalities.append(districtInfo["features"])
__municipalities = [mun["properties"] for municipalityList in _municipalities for mun in municipalityList]
municipalities = [
    {
        "Name": municipality.get("FIRST_GaPa", ""),
        "Type": local_gov_type_name_to_id(municipality.get("FIRST_Type", "")),
        "DistrictId": municipality.get("did", 0),
        "LocalGovId": municipality.get("gnid", 0),
    } for municipality in __municipalities
]

print("Creating local government urls.")
municipalityUrls = []
for municipality in municipalities:
    name = municipality["Name"]
    mun_type = municipality["Type"]
    gnid = str(municipality["LocalGovId"])
    did = str(municipality["DistrictId"])
    if did != "0" and gnid != "0" and mun_type != "":
        municipalityUrls.append((
            name,
            mun_type,
            municipalityDataBaseUrl.replace("{gnid}", gnid).replace("{did}", did),
            did,
            gnid
        ))

municipalityData = []
for url in municipalityUrls:
    print(f"Retrieving Data From {url[2]}")
    municipality_data = get_html_text(url[2])
    if municipality_data:
        total_ward_pattern = r'जम्मा वडा संख्या\n(.+)'
        total_ward_match = re.search(total_ward_pattern, municipality_data, re.MULTILINE)

        nepali_name_pattern = r'(.+)पालिका.*'
        nepali_name_match = re.search(nepali_name_pattern, municipality_data, re.MULTILINE)

        if total_ward_match and nepali_name_match:
            print("--> Success!")

            nepali_name = nepali_name_match.group(1)
            nepali_name = (nepali_name
                           .replace("उपमहानगर", "")
                           .replace("महानगर", "")
                           .replace("नगर", "")
                           .replace("गाउँ", "")
                           ).strip()

            municipalityData.append((
                url[0],
                nepali_name,
                url[1],
                nepali_to_english(total_ward_match.group(1)).strip(),
                url[3],
                url[4]
            ))
        else:
            print("--> Skip!")
    else:
        print("--> Failure!")

localGovData = []
for municipality in municipalityData:
    localGovData.append({
        "english": municipality[0],
        "nepali": municipality[1],
        "district_id": municipality[4],
        "city_type_id": municipality[2],
        "total_wards": municipality[3],
        "LocalGovIdForDistrict": municipality[5]
    })

print(f"[*] Retrieved total of {len(localGovData)} records.")
duplicates, unique = find_duplicates(localGovData)
print(f"[*] Duplicate records: {len(duplicates)}")
print(f"[*] Unique records: {len(unique)}")

print("[+] Generating local_level.sql file")
# noinspection SqlDialectInspection,SqlNoDataSourceInspection
local_level_sql = '''
CREATE TABLE IF NOT EXISTS local_level (
  id int NOT NULL AUTO_INCREMENT,
  english TEXT COLLATE utf8mb4_unicode_ci NOT NULL,
  nepali TEXT COLLATE utf8mb4_unicode_ci NOT NULL,
  district_id int NOT NULL,
  city_type_id int NOT NULL,
  total_wards int NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (district_id) REFERENCES district(id),
  FOREIGN KEY (city_type_id) REFERENCES city_type(id)
) CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO `local_level` (`id`, `english`, `nepali`, `district_id`, `city_type_id`, `total_wards`) VALUES'''

i = 1
for local_level in unique:
    local_level_sql += (f"\n(\n{i},\n'{local_level['english']}',\n'{local_level['nepali']}',\n"
                        f"{local_level['district_id']},\n{local_level['city_type_id']},\n{local_level['total_wards']}\n"
                        f"),\n")
    i += 1

local_level_sql = local_level_sql.strip().strip(",").strip()
local_level_sql += ";\n"

local_level_sql_file = open("local_level.sql", "w")
local_level_sql_file.write(local_level_sql)
local_level_sql_file.close()
print(">>> DONE!!!")
