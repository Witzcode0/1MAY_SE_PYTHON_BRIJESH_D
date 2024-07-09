-- a cursor is a database object used to retrieve, manipulate, and navigate through a result set row-by-row. Cursors are particularly useful in stored procedures and triggers when you need to perform operations on each row individually rather than operating on the entire result set at once.

-- Cursor Lifecycle:
-- 1] Declare the Cursor: Define the cursor and the query it will use to fetch rows.
--DECLARE cursor_name CURSOR FOR select_statement;

cursor_name: The name of the cursor.
select_statement: The SQL query that the cursor will execute to retrieve the result set.


-- Open the Cursor: Initialize the cursor and execute the query.
OPEN cursor_name;

-- Fetch Data from the Cursor: Retrieve rows from the cursor one at a time.
FETCH cursor_name INTO var_name [, var_name] ...;

-- Close the Cursor: Release the resources associated with the cursor.
CLOSE cursor_name;


Examples :

use `company`;

CREATE TABLE departments (
    department_id INT AUTO_INCREMENT PRIMARY KEY,
    department_name VARCHAR(100)
);

INSERT INTO departments (department_name) VALUES ('HR'), ('Finance'), ('IT'), ('Marketing');



DELIMITER //

CREATE PROCEDURE list_departments()
BEGIN

    DECLARE dept_name VARCHAR(100);
    DECLARE done INT DEFAULT FALSE;

    DECLARE dept_cursor CURSOR FOR
        SELECT department_name FROM departments;

    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

    -- Open the cursor
    OPEN dept_cursor;

    -- Fetch rows from the cursor and iterate through them
    read_loop: LOOP
        FETCH dept_cursor INTO dept_name;
        
        IF done THEN
            LEAVE read_loop;
        END IF;

        SELECT dept_name;
    END LOOP;

    -- Close the cursor
    CLOSE dept_cursor;
END //

DELIMITER ;


CALL list_departments();


CREATE PROCEDURE update_salaries(dept VARCHAR(100))
BEGIN
    DECLARE emp_id INT;
    DECLARE current_salary DECIMAL(10,2);
    DECLARE done INT DEFAULT FALSE;
    
    DECLARE emp_cursor CURSOR FOR
        SELECT employee_id, salary FROM employees WHERE department = dept;
        
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
    
    OPEN emp_cursor;
    
    read_loop: LOOP
        FETCH emp_cursor INTO emp_id, current_salary;
        
        IF done THEN
            LEAVE read_loop;
        END IF;
        
        -- Update each employee's salary
        UPDATE employees
        SET salary = current_salary * 1.10
        WHERE employee_id = emp_id;
    END LOOP;
    
    CLOSE emp_cursor;
END;
