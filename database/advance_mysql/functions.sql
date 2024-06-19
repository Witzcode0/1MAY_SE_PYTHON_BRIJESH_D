-- a function is a reusable block of SQL code that performs a specific task and returns a value. Functions are used to simplify complex SQL operations, improve code reusability, and make your SQL queries more modular. MySQL provides several built-in functions, and you can also create your own custom functions.

-- To create a user-defined function in MySQL, you use the CREATE FUNCTION statement. 

-- The basic syntax is as follows:

CREATE FUNCTION function_name (parameter1 datatype, parameter2 datatype, ...)
RETURNS return_datatype
deterministic | non-deterministic (Optional)
BEGIN
    -- Function body: SQL statements
    -- Return statement if applicable
END;

CREATE FUNCTION: This keyword starts the definition of a new function in MySQL.

function_name: This is the name of the function you want to create.

parameter1, parameter2, ...: These are optional parameters that the function may accept. Each parameter is specified with a name and a data type.

RETURNS: Specifies the data type that the function will return. If the function does not return a value, you can use RETURNS VOID.


ChatGPT
The main difference between deterministic and non-deterministic functions is that deterministic functions always produce the same output for a given set of inputs, while non-deterministic functions can produce different outputs even with the same inputs due to external factors or randomness.

BEGIN ... END: This encloses the body of the function. Inside the BEGIN and END block, you write the SQL statements that constitute the logic of your function.

Function body: Contains the SQL statements that perform the desired operations. This can include queries, conditional statements (IF, CASE), loops (WHILE, LOOP), variable declarations, etc.

Return statement: If the function is supposed to return a value, you use the RETURN keyword followed by the value to be returned. 

For example:
RETURN some_value;



Example :

-- create database maths; 

use maths;

DELIMITER //

CREATE FUNCTION calculate_area(radius FLOAT)
RETURNS FLOAT
DETERMINISTIC
BEGIN
    DECLARE area FLOAT;
    SET area = PI() * radius * radius;
    RETURN area;
END//

DELIMITER ;



Using SELECT Statement:
SELECT calculate_area(5.0);

DELIMITER //

CREATE FUNCTION square(x INT)
  RETURNS INT
  DETERMINISTIC
BEGIN
  DECLARE result INT;
  SET result = x * x;
  RETURN result;
END;

//

DELIMITER ;


Integrating into an INSERT or UPDATE Statement:
INSERT INTO circle_areas (radius, area)
VALUES (5.0, calculate_area(5.0));

SELECT *
FROM circles
WHERE calculate_area(radius) > 50.0;


Deterministic Function Example:

CREATE FUNCTION calculate_area(radius FLOAT)
RETURNS FLOAT
DETERMINISTIC
BEGIN
    DECLARE area FLOAT;
    SET area = PI() * radius * radius;
    RETURN area;
END;


Non-Deterministic Function Example:
CREATE FUNCTION current_datetime()
RETURNS DATETIME
NOT DETERMINISTIC
BEGIN
    DECLARE current_time DATETIME;
    SET current_time = NOW();
    RETURN current_time;
END;
