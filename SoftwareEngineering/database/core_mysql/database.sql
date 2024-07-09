-- Database:
-- 1] create database
mysql> create database <your-database-name>;
Query OK, 1 row affected (0.00 sec)

-- 2] Show all database 
mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| college            |
| company            |
| facebook           |
| information_schema |
| instagram          |
| mysql              |
| newschema          |
| performance_schema |
| php_api_crud       |
| school             |
| sys                |
| telebot            |
+--------------------+

-- 3] use database
mysql> use <your-database>;
Database changed


-- 4] database import/export (update database/transfer database)
EXPORT Database:
s-1] open your CMD:
(specific-dir)>>>mysqldump -u <username> -p <import_database_name> > <data-dump>.sql
Enter password: ****

s-2] check your specific dir(specific-dir)
 - <data-dump>.sql

IMPORT Database:
s-3] (specific-dir)>>> mysql -u <username> -p <new_database> < <data-dump>.sql
 


-- 5] delete database
mysql> drop database <your-database>;
Query OK, 1 row affected (0.06 sec)

