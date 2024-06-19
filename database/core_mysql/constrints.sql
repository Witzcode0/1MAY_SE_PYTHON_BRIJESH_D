
MySQL constraints are rules enforced on data columns to ensure the integrity, accuracy, and reliability of the data within the database.

1] PRIMARY KEY: Ensures that the column(s) uniquely identify each row in the table.
 - only one primary key column in a table
 - primary key are always uniquely
 - primary key can not to be null

 Example : PRIMARY KEY (column_name)

2] FOREIGN KEY: Ensures that the value in a column corresponds to values in a column of another table.
 - FOREIGN key can be multiple in a table

Example: FOREIGN KEY (column_name) REFERENCES other_table(column_name)

3] UNIQUE: Ensures that all values in a column are unique across the rows of the table.
 - unique key can be multiple in a table
 - unique key can be null

 Example : UNIQUE (column_name)

4] NOT NULL: Ensures that a column cannot have a NULL value.

Example : column_name datatype NOT NULL

5] CHECK: Ensures that the value in a column meets a specific condition.

Example : CHECK (condition)

6] DEFAULT: Sets a default value for a column if no value is specified.

Example : column_name datatype DEFAULT default_value
