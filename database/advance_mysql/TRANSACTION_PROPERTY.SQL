transactions are used to group one or more SQL statements into a single unit of work. Transactions provide properties that ensure data integrity, consistency, and isolation in a multi-user database environment. The four main properties of transactions in MySQL are often referred to as ACID properties, which stands for Atomicity, Consistency, Isolation, and Durability:


Atomicity (A): This property ensures that a transaction is treated as a single, indivisible unit of work. Either all the statements within the transaction are executed successfully, or none of them are. If any part of the transaction fails (due to an error or exception), the entire transaction is rolled back to its previous state, undoing any changes made.

Consistency (C): Consistency ensures that a transaction brings the database from one consistent state to another. In other words, the database must meet a set of predefined integrity constraints before and after the transaction. If a transaction violates any of these constraints, it is rolled back, preserving data consistency.

Isolation (I): Isolation ensures that concurrent transactions do not interfere with each other. Each transaction should appear to be executed in isolation, regardless of other concurrent transactions. MySQL provides different isolation levels (such as Read Uncommitted, Read Committed, Repeatable Read, and Serializable) that control the degree of isolation and the locking behavior between transactions.

Durability (D): Durability guarantees that once a transaction is committed, its changes are permanent and will survive system failures (e.g., power outages, crashes). MySQL ensures durability by persistently storing the transaction's changes in non-volatile storage (e.g., disk) so that they can be recovered in the event of a failure.


COMMIT, ROLLBACK, and SAVEPOINT are SQL statements used to manage transactions. These statements help control the behavior of transactions and ensure data consistency and integrity within a database. Here's an explanation of each:

COMMIT: The COMMIT statement is used to save all the changes made during a transaction, making them permanent. When you issue a COMMIT, all the data modifications (inserts, updates, deletes) performed within the current transaction are written to the database, and the transaction is considered successfully completed. The changes are durable and will persist even after a database session ends.


#################################################################################################################
Transaction: A sequence of SQL statements that is treated as a single unit of work. A transaction begins with a BEGIN or START TRANSACTION statement and ends with either a COMMIT or ROLLBACK.

COMMIT: Finalizes a transaction, making all changes made by the transaction permanent in the database.

SAVEPOINT: Sets a point within a transaction to which you can later roll back without affecting preceding work.

ROLLBACK: Undoes transactions or parts of transactions. You can roll back to the start of the transaction or to a savepoint.


create database bank;

use bank;

CREATE TABLE accounts (
    account_id INT PRIMARY KEY,
    account_holder VARCHAR(100),
    balance DECIMAL(10, 2)
);


CREATE TABLE transactions (
    transaction_id INT PRIMARY KEY AUTO_INCREMENT,
    account_id INT,
    amount DECIMAL(10, 2),
    transaction_type ENUM('deposit', 'withdrawal'),
    transaction_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (account_id) REFERENCES accounts(account_id)
);

Scenario
We want to transfer $200 from Account A (ID: 1) to Account B (ID: 2). We will:

Check if Account A has sufficient funds.
Withdraw $200 from Account A.
Deposit $200 into Account B.
Log both the withdrawal and the deposit into the transactions table.
Use savepoints to manage potential issues during the process.


-- Start the transaction
START TRANSACTION;

-- Check balance for Account A (assume it has enough funds)
SELECT balance FROM accounts WHERE account_id = 1;

-- Set savepoint before withdrawing funds
SAVEPOINT before_withdrawal;

-- Withdraw $200 from Account A
UPDATE accounts
SET balance = balance - 200
WHERE account_id = 1;

-- Log the withdrawal transaction
INSERT INTO transactions (account_id, amount, transaction_type)
VALUES (1, 200, 'withdrawal');

-- Set savepoint after withdrawing funds
SAVEPOINT after_withdrawal;

-- Deposit $200 into Account B
UPDATE accounts
SET balance = balance + 200
WHERE account_id = 2;

-- Log the deposit transaction
INSERT INTO transactions (account_id, amount, transaction_type)
VALUES (2, 200, 'deposit');

-- Set savepoint after deposit
SAVEPOINT after_deposit;

-- Check for errors and roll back if necessary
-- Example: Rolling back to after_withdrawal if deposit fails
-- ROLLBACK TO after_withdrawal;

-- Example: Rolling back to before_withdrawal if withdrawal fails
-- ROLLBACK TO before_withdrawal;

-- If no errors, commit the transaction
COMMIT;
