
-- A trigger is a set of instructions that are automatically executed (or "triggered") in response to certain events on a table. Triggers can be defined to execute either before or after an INSERT, UPDATE, or DELETE operation on a table.

syntax :

CREATE TRIGGER trigger_name
{BEFORE | AFTER} {INSERT | UPDATE | DELETE}
ON table_name
FOR EACH ROW
BEGIN
    -- Trigger logic goes here
END;


-- Breakdown of the Syntax:
-- CREATE TRIGGER trigger_name: Initiates the creation of a trigger and specifies its name.
-- {BEFORE | AFTER}: Indicates whether the trigger action occurs before or after the triggering event.
-- {INSERT | UPDATE | DELETE}: Specifies the type of operation that will activate the trigger.
-- ON table_name: Identifies the table to which the trigger is attached.
-- FOR EACH ROW: Means the trigger will execute for each row affected by the triggering statement.
-- BEGIN ... END;: Encloses the SQL statements that define what the trigger will do.


Example :

CREATE TABLE orders (
  order_id INT AUTO_INCREMENT PRIMARY KEY,
  order_date DATE,
  customer_name VARCHAR(255),
  total_amount DECIMAL(10, 2)
);


CREATE TABLE order_log (
  log_id INT AUTO_INCREMENT PRIMARY KEY,
  log_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  order_id INT,
  order_date DATE,
  customer_name VARCHAR(255),
  total_amount DECIMAL(10, 2)
);



DELIMITER //

CREATE TRIGGER log_new_order
AFTER INSERT ON orders
FOR EACH ROW
BEGIN
  INSERT INTO order_log (order_id, order_date, customer_name, total_amount)
  VALUES (NEW.order_id, NEW.order_date, NEW.customer_name, NEW.total_amount);
END

//
DELIMITER ;

INSERT INTO orders (order_date, customer_name, total_amount)
VALUES ('2023-09-08', 'John Doe', 100.00);


mysql> select * from orders;
+----------+------------+-------------------+--------------+
| order_id | order_date | customer_name     | total_amount |
+----------+------------+-------------------+--------------+
|        1 | 2023-09-08 | John Doe          |       100.00 |
+----------+------------+-------------------+--------------+

mysql> select * from order_log;
+--------+---------------------+----------+------------+-------------------+--------------+
| log_id | log_date            | order_id | order_date | customer_name     | total_amount |
+--------+---------------------+----------+------------+-------------------+--------------+
|      1 | 2024-06-24 16:50:10 |        1 | 2023-09-08 | John Doe          |       100.00 |
+--------+---------------------+----------+------------+-------------------+--------------+

Removing a Trigger:
DROP TRIGGER IF EXISTS trigger_name;