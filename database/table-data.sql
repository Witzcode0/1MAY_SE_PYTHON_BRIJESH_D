CREATE TABLE `instagram`.`users` (
    user_id int AUTO_INCREMENT PRIMARY KEY,
    username varchar(255) not null UNIQUE,
    email varchar(255) not null UNIQUE,
    mobile varchar(255) not null UNIQUE,
    password varchar(255) not null
);

# insert 'single' record in the table
INSERT INTO `users` (`user_id`, `username`, `email`, `mobile`, `password`) VALUES (NULL, 'brijesh07', 'brijesh.gondaliya07@gmail.com', '8980145007', 'test@123');

# insert 'multiple' records in the table
INSERT INTO `users` (username, email, mobile, password) VALUES
('john_doe', 'john_doe@example.com', '5551234567', 'password123'),
('jane_smith', 'jane_smith@example.com', '5559876543', 'qwerty123'),
('alice_wonderland', 'alice@example.com', '5555555555', 'p@ssw0rd'),
('bob_marley', 'bob_marley@example.com', '5551112233', 'bob123'),
('emily_jones', 'emily_jones@example.com', '5552223344', 'emily789'),
('mike_tyson', 'mike_tyson@example.com', '5556667777', 'mikeTyson'),
('sarah_connor', 'sarah_connor@example.com', '5558889999', 'terminator'),
('jack_sparrow', 'jack_sparrow@example.com', '5554445566', 'pirate123'),
('lisa_simpson', 'lisa_simpson@example.com', '5553334455', 'simpsons'),
('peter_pan', 'peter_pan@example.com', '5557778888', 'neverland');

# update single records in the table

syntax:
UPDATE `<table-name>`
SET <col-name-1> = '<value-1>', 
    <col-name-2> = '<value-2>'
    ...
WHERE (condition)';

UPDATE `users`
SET email = 'new_email@example.com', 
    mobile = '9876543210'
WHERE username = 'jinal01';

# update multiple records in the table
UPDATE users SET password = 'test@123' WHERE user_id < 6;

# delete single record
DELETE FROM `users` WHERE user_id = 11;

# delete multi records based on condition
DELETE FROM `users` WHERE user_id > 8;

