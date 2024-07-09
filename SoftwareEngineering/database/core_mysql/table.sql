1] create table
CREATE TABLE `<database-name>`.`<table-name>`(
    <column_name> <data_type> [constraints....]
	student_id int auto_increment primary key,
    first_name varchar(255) not null,
    last_name varchar(255) not null,
    email varchar(255) unique,
    mobile varchar(255) unique,
    password varchar(255)
);

2] modify column in existing table
ALTER TABLE students MODIFY <column_name> <data_type> [constraints....];

3] add new column in existing table
ALTER TABLE students add <column_name> <data_type> [constraints....];

4] delete column in existing table
ALTER TABLE students drop <column_name>;

5] delete table
drop table `<database-name>`.`<table-name>`;

6] show table structure
describe `<database-name>`.`<table-name>`;