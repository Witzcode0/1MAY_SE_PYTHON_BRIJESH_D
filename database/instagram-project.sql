create database instagram;

CREATE TABLE `instagram`.`users` (
    user_id int AUTO_INCREMENT PRIMARY KEY,
    username varchar(255) not null UNIQUE,
    email varchar(255) not null UNIQUE,
    mobile varchar(255) not null UNIQUE,
    password varchar(255) not null
);

CREATE TABLE `instagram`.`posts` (
    post_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    caption TEXT,
    user_id INT NOT NULL,
    post_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);


INSERT INTO `users` (`user_id`, `username`, `email`, `mobile`, `password`) VALUES (NULL, 'brijesh07', 'brijesh.gondaliya07@gmail.com', '8980145007', 'test@123');

INSERT INTO `users`(username, email, mobile, password) VALUES ('jinal01', 'jinal@gmail.com', '6745757324', '1234qwer');

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
