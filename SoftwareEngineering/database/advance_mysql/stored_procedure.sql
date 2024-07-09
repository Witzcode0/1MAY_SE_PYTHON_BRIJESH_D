--  a stored procedure is a set of SQL statements that can be stored in the database and executed as a single unit. Stored procedures allow for modular programming, improved performance, and reusable code.

syntax: 

DELIMITER //

CREATE PROCEDURE procedure_name (IN/OUT/INOUT param1 datatype, IN/OUT/INOUT param2 datatype, ...)
BEGIN
    -- Procedure body
    DECLARE variable_name datatype DEFAULT default_value; -- Local variable declaration
    
    -- SQL statements
    -- For example:
    SELECT ...;
    INSERT INTO ... VALUES (...);
    UPDATE ... SET ... WHERE ...;
    DELETE FROM ... WHERE ...;
    CALL another_procedure(...);

    -- Conditional statements
    IF condition THEN
        -- Statements
    ELSEIF another_condition THEN
        -- Statements
    ELSE
        -- Statements
    END IF;

    -- Loops
    WHILE condition DO
        -- Statements
    END WHILE;
    
    REPEAT
        -- Statements
    UNTIL condition
    END REPEAT;

    -- Cursors and other complex logic
    -- ...

END //

DELIMITER ;

DELIMITER: Changes the statement delimiter from the default ; to another character sequence (// in this example). This is necessary because the body of the procedure can contain multiple statements separated by ;.

CREATE PROCEDURE procedure_name: Declares the name of the stored procedure.

(IN/OUT/INOUT param1 datatype, ...): Defines the parameters that the procedure accepts:

IN parameter: Input parameter (default if no keyword is specified).
OUT parameter: Output parameter that can be modified by the procedure and returned.
INOUT parameter: Input parameter that can be modified and returned.
BEGIN ... END: Marks the beginning and the end of the procedure body.

DECLARE variable_name datatype DEFAULT default_value: Used to declare local variables within the procedure.

SQL statements: You can include any valid SQL statements here, such as SELECT, INSERT, UPDATE, DELETE, or even calling other stored procedures using CALL.

Control-flow statements: You can use IF...THEN...ELSE, WHILE...DO, REPEAT...UNTIL, and other control structures to implement complex logic.


-- ------------------------------------------------------
CREATE TABLE employees (
    id INT AUTO_INCREMENT PRIMARY KEY,  -- A primary key column with auto-increment to uniquely identify each employee
    name VARCHAR(50) NOT NULL,          -- The name column, which must match the empName input parameter
    salary DECIMAL(10,2) NOT NULL,      -- The salary column, matching the empSalary input parameter
    department_id INT NOT NULL,         -- The department_id column, matching the empDeptId input parameter
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,  -- Optional: a timestamp for when the record was created
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP  -- Optional: a timestamp for when the record was last updated
);


DELIMITER //

CREATE PROCEDURE AddEmployee (
IN empName VARCHAR(50),
IN empSalary DECIMAL(10,2),
IN empDeptId INT
)
BEGIN
INSERT INTO employees (name, salary, department_id)
VALUES (empName, empSalary, empDeptId);
END //

DELIMITER ;

CALL AddEmployee('John Doe', 75000.00, 1);
