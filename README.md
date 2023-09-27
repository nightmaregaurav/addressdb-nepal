# addressdb-nepal
Database of address in nepal, Province, Districts and local government. With hq of province and districts. And ward numbers of local levels.

## Source:
 - Data about local government are automatically extracted every month's first day exactly at 0:00 from: https://sthaniya.gov.np/gis/website/ and https://sthaniya.gov.np/gis/
 - Data about District and District capital are collected from various documents.(Might be outdated)

## Note:
- Prefer copying content of file and executing in your sql command prompt/terminal
- Importing from file may fail
- Set Characterset of database to utf8mb4
- Set collate to utf8mb4_unicode_ci
- Must be executed/imported in an order.

## Order
- province.sql
- district.sql
- city_type.sql
- local_level.sql

---
Open For Contribution
---
Any help on correction/update are appreciated.
