select all data from the table
SELECT * FROM <table-name>;

get all records with specific columns
SELECT col1, col2 FROM <table-name>;

get data using filter
SELECT * FROM <table-name> WHERE <condition>;

get first n records
SELECT * FROM <table-name> LIMIT n;

get data by orders
SELECT * FROM <table-name> ORDER BY <column-name>; # default ASC
SELECT * FROM <table-name> ORDER BY <column-name> DESC;
SELECT * FROM users ORDER BY user_id DESC limit 5;