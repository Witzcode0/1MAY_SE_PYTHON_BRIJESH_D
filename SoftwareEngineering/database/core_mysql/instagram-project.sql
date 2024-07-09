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

mysql> show tables;
+---------------------+
| Tables_in_instagram |
+---------------------+
| posts               |
| users               |
+---------------------+

mysql> select * from users;
+---------+------------------+-------------------------------+------------+-------------+
| user_id | username         | email                         | mobile     | password    |
+---------+------------------+-------------------------------+------------+-------------+
|       1 | brijesh07        | brijesh.gondaliya07@gmail.com | 8980145007 | test@123    |
|       2 | jinal01          | jinal@gmail.com               | 6745757324 | 1234qwer    |
|       3 | john_doe         | john_doe@example.com          | 5551234567 | password123 |
|       4 | jane_smith       | jane_smith@example.com        | 5559876543 | qwerty123   |
|       5 | alice_wonderland | alice@example.com             | 5555555555 | p@ssw0rd    |
|       6 | bob_marley       | bob_marley@example.com        | 5551112233 | bob123      |
|       7 | emily_jones      | emily_jones@example.com       | 5552223344 | emily789    |
|       8 | mike_tyson       | mike_tyson@example.com        | 5556667777 | mikeTyson   |
|       9 | sarah_connor     | sarah_connor@example.com      | 5558889999 | terminator  |
|      10 | jack_sparrow     | jack_sparrow@example.com      | 5554445566 | pirate123   |
|      11 | lisa_simpson     | lisa_simpson@example.com      | 5553334455 | simpsons    |
|      12 | peter_pan        | peter_pan@example.com         | 5557778888 | neverland   |
+---------+------------------+-------------------------------+------------+-------------+

INSERT INTO `instagram`.`posts` (title, caption, user_id)
VALUES
    ('Beautiful sunset', 'Nature at its best', 1),
    ('Morning coffee', 'Starting the day right', 2),
    ('City skyline', 'Views from the top', 3),
    ('Delicious brunch', 'Foodie heaven', 4),
    ('Adventure awaits', 'Exploring new places', 5),
    ('Throwback memories', 'Nostalgic moments', 6),
    ('Fitness goals', 'Never give up', 7),
    ('Creative art', 'Expressing through art', 8),
    ('Family time', 'Cherishing moments', 9),
    ('Music vibes', 'Soothing melodies', 10),
    ('Pets love', 'Unconditional companionship', 11),
    ('Fashion trends', 'Stylish and chic', 12),
    ('Road trip adventures', 'On the road again', 1),
    ('Healthy eating', 'Balanced diet', 2),
    ('Urban exploration', 'Discovering hidden gems', 3),
    ('Vacation mode', 'Relax and unwind', 4),
    ('DIY projects', 'Crafting happiness', 5),
    ('Throwback Thursday', 'Memories from the past', 6),
    ('Workout motivation', 'Pushing limits', 7),
    ('Abstract painting', 'Colors of imagination', 8),
    ('Family reunion', 'Reconnecting with loved ones', 9),
    ('Concert vibes', 'Live music experience', 10),
    ('Pet adventures', 'Fun outdoor activities', 11),
    ('Fashion inspiration', 'Latest trends', 12);


mysql> select * from posts;
+---------+----------------------+------------------------------+---------+---------------------+
| post_id | title                | caption                      | user_id | post_date           |
+---------+----------------------+------------------------------+---------+---------------------+
|       1 | Beautiful sunset     | Nature at its best           |       1 | 2024-06-14 18:06:55 |
|       2 | Morning coffee       | Starting the day right       |       2 | 2024-06-14 18:06:55 |
|       3 | City skyline         | Views from the top           |       3 | 2024-06-14 18:06:55 |
|       4 | Delicious brunch     | Foodie heaven                |       4 | 2024-06-14 18:06:55 |
|       5 | Adventure awaits     | Exploring new places         |       5 | 2024-06-14 18:06:55 |
|       6 | Throwback memories   | Nostalgic moments            |       6 | 2024-06-14 18:06:55 |
|       7 | Fitness goals        | Never give up                |       7 | 2024-06-14 18:06:55 |
|       8 | Creative art         | Expressing through art       |       8 | 2024-06-14 18:06:55 |
|       9 | Family time          | Cherishing moments           |       9 | 2024-06-14 18:06:55 |
|      10 | Music vibes          | Soothing melodies            |      10 | 2024-06-14 18:06:55 |
|      11 | Pets love            | Unconditional companionship  |      11 | 2024-06-14 18:06:55 |
|      12 | Fashion trends       | Stylish and chic             |      12 | 2024-06-14 18:06:55 |
|      13 | Road trip adventures | On the road again            |       1 | 2024-06-14 18:06:55 |
|      14 | Healthy eating       | Balanced diet                |       2 | 2024-06-14 18:06:55 |
|      15 | Urban exploration    | Discovering hidden gems      |       3 | 2024-06-14 18:06:55 |
|      16 | Vacation mode        | Relax and unwind             |       4 | 2024-06-14 18:06:55 |
|      17 | DIY projects         | Crafting happiness           |       5 | 2024-06-14 18:06:55 |
|      18 | Throwback Thursday   | Memories from the past       |       6 | 2024-06-14 18:06:55 |
|      19 | Workout motivation   | Pushing limits               |       7 | 2024-06-14 18:06:55 |
|      20 | Abstract painting    | Colors of imagination        |       8 | 2024-06-14 18:06:55 |
|      21 | Family reunion       | Reconnecting with loved ones |       9 | 2024-06-14 18:06:55 |
|      22 | Concert vibes        | Live music experience        |      10 | 2024-06-14 18:06:55 |
|      23 | Pet adventures       | Fun outdoor activities       |      11 | 2024-06-14 18:06:55 |
|      24 | Fashion inspiration  | Latest trends                |      12 | 2024-06-14 18:06:55 |
+---------+----------------------+------------------------------+---------+---------------------+


mysql> select * from posts where user_id = 1;
+---------+----------------------+--------------------+---------+---------------------+
| post_id | title                | caption            | user_id | post_date           |
+---------+----------------------+--------------------+---------+---------------------+
|       1 | Beautiful sunset     | Nature at its best |       1 | 2024-06-14 18:06:55 |
|      13 | Road trip adventures | On the road again  |       1 | 2024-06-14 18:06:55 |
+---------+----------------------+--------------------+---------+---------------------+

mysql> SELECT u.user_id, u.username, p.post_id, p.title
    -> FROM users u
    -> INNER JOIN posts p ON u.user_id = p.user_id;
+---------+------------------+---------+----------------------+
| user_id | username         | post_id | title                |
+---------+------------------+---------+----------------------+
|       5 | alice_wonderland |       5 | Adventure awaits     |
|       5 | alice_wonderland |      17 | DIY projects         |
|       6 | bob_marley       |       6 | Throwback memories   |
|       6 | bob_marley       |      18 | Throwback Thursday   |
|       1 | brijesh07        |       1 | Beautiful sunset     |
|       1 | brijesh07        |      13 | Road trip adventures |
|       7 | emily_jones      |       7 | Fitness goals        |
|       7 | emily_jones      |      19 | Workout motivation   |
|      10 | jack_sparrow     |      10 | Music vibes          |
|      10 | jack_sparrow     |      22 | Concert vibes        |
|       4 | jane_smith       |       4 | Delicious brunch     |
|       4 | jane_smith       |      16 | Vacation mode        |
|       2 | jinal01          |       2 | Morning coffee       |
|       2 | jinal01          |      14 | Healthy eating       |
|       3 | john_doe         |       3 | City skyline         |
|       3 | john_doe         |      15 | Urban exploration    |
|      11 | lisa_simpson     |      11 | Pets love            |
|      11 | lisa_simpson     |      23 | Pet adventures       |
|       8 | mike_tyson       |       8 | Creative art         |
|       8 | mike_tyson       |      20 | Abstract painting    |
|      12 | peter_pan        |      12 | Fashion trends       |
|      12 | peter_pan        |      24 | Fashion inspiration  |
|       9 | sarah_connor     |       9 | Family time          |
|       9 | sarah_connor     |      21 | Family reunion       |
+---------+------------------+---------+----------------------+

SELECT u.user_id, u.username, p.post_id, p.title
    -> FROM users u
    -> LEFT JOIN posts p ON u.user_id = p.user_id;
+---------+------------------+---------+----------------------+
| user_id | username         | post_id | title                |
+---------+------------------+---------+----------------------+
|       5 | alice_wonderland |       5 | Adventure awaits     |
|       5 | alice_wonderland |      17 | DIY projects         |
|       6 | bob_marley       |       6 | Throwback memories   |
|       6 | bob_marley       |      18 | Throwback Thursday   |
|       1 | brijesh07        |       1 | Beautiful sunset     |
|       1 | brijesh07        |      13 | Road trip adventures |
|       7 | emily_jones      |       7 | Fitness goals        |
|       7 | emily_jones      |      19 | Workout motivation   |
|      10 | jack_sparrow     |      10 | Music vibes          |
|      10 | jack_sparrow     |      22 | Concert vibes        |
|       4 | jane_smith       |       4 | Delicious brunch     |
|       4 | jane_smith       |      16 | Vacation mode        |
|       2 | jinal01          |       2 | Morning coffee       |
|       2 | jinal01          |      14 | Healthy eating       |
|       3 | john_doe         |       3 | City skyline         |
|       3 | john_doe         |      15 | Urban exploration    |
|      11 | lisa_simpson     |      11 | Pets love            |
|      11 | lisa_simpson     |      23 | Pet adventures       |
|       8 | mike_tyson       |       8 | Creative art         |
|       8 | mike_tyson       |      20 | Abstract painting    |
|      12 | peter_pan        |      12 | Fashion trends       |
|      12 | peter_pan        |      24 | Fashion inspiration  |
|       9 | sarah_connor     |       9 | Family time          |
|       9 | sarah_connor     |      21 | Family reunion       |
+---------+------------------+---------+----------------------+

mysql> SELECT u.user_id, u.username, p.post_id, p.title
    -> FROM users u
    -> RIGHT JOIN posts p ON u.user_id = p.user_id;
+---------+------------------+---------+----------------------+
| user_id | username         | post_id | title                |
+---------+------------------+---------+----------------------+
|       1 | brijesh07        |       1 | Beautiful sunset     |
|       2 | jinal01          |       2 | Morning coffee       |
|       3 | john_doe         |       3 | City skyline         |
|       4 | jane_smith       |       4 | Delicious brunch     |
|       5 | alice_wonderland |       5 | Adventure awaits     |
|       6 | bob_marley       |       6 | Throwback memories   |
|       7 | emily_jones      |       7 | Fitness goals        |
|       8 | mike_tyson       |       8 | Creative art         |
|       9 | sarah_connor     |       9 | Family time          |
|      10 | jack_sparrow     |      10 | Music vibes          |
|      11 | lisa_simpson     |      11 | Pets love            |
|      12 | peter_pan        |      12 | Fashion trends       |
|       1 | brijesh07        |      13 | Road trip adventures |
|       2 | jinal01          |      14 | Healthy eating       |
|       3 | john_doe         |      15 | Urban exploration    |
|       4 | jane_smith       |      16 | Vacation mode        |
|       5 | alice_wonderland |      17 | DIY projects         |
|       6 | bob_marley       |      18 | Throwback Thursday   |
|       7 | emily_jones      |      19 | Workout motivation   |
|       8 | mike_tyson       |      20 | Abstract painting    |
|       9 | sarah_connor     |      21 | Family reunion       |
|      10 | jack_sparrow     |      22 | Concert vibes        |
|      11 | lisa_simpson     |      23 | Pet adventures       |
|      12 | peter_pan        |      24 | Fashion inspiration  |
+---------+------------------+---------+----------------------+

mysql> SELECT u.user_id, u.username, p.post_id, p.title
    -> FROM users u
    -> LEFT JOIN posts p ON u.user_id = p.user_id
    -> UNION
    -> SELECT u.user_id, u.username, p.post_id, p.title
    -> FROM users u
    -> RIGHT JOIN posts p ON u.user_id = p.user_id;
+---------+------------------+---------+----------------------+
| user_id | username         | post_id | title                |
+---------+------------------+---------+----------------------+
|       5 | alice_wonderland |       5 | Adventure awaits     |
|       5 | alice_wonderland |      17 | DIY projects         |
|       6 | bob_marley       |       6 | Throwback memories   |
|       6 | bob_marley       |      18 | Throwback Thursday   |
|       1 | brijesh07        |       1 | Beautiful sunset     |
|       1 | brijesh07        |      13 | Road trip adventures |
|       7 | emily_jones      |       7 | Fitness goals        |
|       7 | emily_jones      |      19 | Workout motivation   |
|      10 | jack_sparrow     |      10 | Music vibes          |
|      10 | jack_sparrow     |      22 | Concert vibes        |
|       4 | jane_smith       |       4 | Delicious brunch     |
|       4 | jane_smith       |      16 | Vacation mode        |
|       2 | jinal01          |       2 | Morning coffee       |
|       2 | jinal01          |      14 | Healthy eating       |
|       3 | john_doe         |       3 | City skyline         |
|       3 | john_doe         |      15 | Urban exploration    |
|      11 | lisa_simpson     |      11 | Pets love            |
|      11 | lisa_simpson     |      23 | Pet adventures       |
|       8 | mike_tyson       |       8 | Creative art         |
|       8 | mike_tyson       |      20 | Abstract painting    |
|      12 | peter_pan        |      12 | Fashion trends       |
|      12 | peter_pan        |      24 | Fashion inspiration  |
|       9 | sarah_connor     |       9 | Family time          |
|       9 | sarah_connor     |      21 | Family reunion       |
+---------+------------------+---------+----------------------+


mysql> SELECT u.user_id, u.username, p.post_id, p.title
    -> FROM users u
    -> CROSS JOIN posts p;
+---------+------------------+---------+----------------------+
| user_id | username         | post_id | title                |
+---------+------------------+---------+----------------------+
|       9 | sarah_connor     |       1 | Beautiful sunset     |
|      12 | peter_pan        |       1 | Beautiful sunset     |
|       8 | mike_tyson       |       1 | Beautiful sunset     |
|      11 | lisa_simpson     |       1 | Beautiful sunset     |
|       3 | john_doe         |       1 | Beautiful sunset     |
|       2 | jinal01          |       1 | Beautiful sunset     |
|       4 | jane_smith       |       1 | Beautiful sunset     |
|      10 | jack_sparrow     |       1 | Beautiful sunset     |
|       7 | emily_jones      |       1 | Beautiful sunset     |
|       1 | brijesh07        |       1 | Beautiful sunset     |
|       6 | bob_marley       |       1 | Beautiful sunset     |
|       5 | alice_wonderland |       1 | Beautiful sunset     |
|       9 | sarah_connor     |       2 | Morning coffee       |
|      12 | peter_pan        |       2 | Morning coffee       |
|       8 | mike_tyson       |       2 | Morning coffee       |
|      11 | lisa_simpson     |       2 | Morning coffee       |
|       3 | john_doe         |       2 | Morning coffee       |
|       2 | jinal01          |       2 | Morning coffee       |
|       4 | jane_smith       |       2 | Morning coffee       |
|      10 | jack_sparrow     |       2 | Morning coffee       |
|       7 | emily_jones      |       2 | Morning coffee       |
|       1 | brijesh07        |       2 | Morning coffee       |
|       6 | bob_marley       |       2 | Morning coffee       |
|       5 | alice_wonderland |       2 | Morning coffee       |
|       9 | sarah_connor     |       3 | City skyline         |
|      12 | peter_pan        |       3 | City skyline         |
|       8 | mike_tyson       |       3 | City skyline         |
|      11 | lisa_simpson     |       3 | City skyline         |
|       3 | john_doe         |       3 | City skyline         |
|       2 | jinal01          |       3 | City skyline         |
|       4 | jane_smith       |       3 | City skyline         |
|      10 | jack_sparrow     |       3 | City skyline         |
|       7 | emily_jones      |       3 | City skyline         |
|       1 | brijesh07        |       3 | City skyline         |
|       6 | bob_marley       |       3 | City skyline         |
|       5 | alice_wonderland |       3 | City skyline         |
|       9 | sarah_connor     |       4 | Delicious brunch     |
|      12 | peter_pan        |       4 | Delicious brunch     |
|       8 | mike_tyson       |       4 | Delicious brunch     |
|      11 | lisa_simpson     |       4 | Delicious brunch     |
|       3 | john_doe         |       4 | Delicious brunch     |
|       2 | jinal01          |       4 | Delicious brunch     |
|       4 | jane_smith       |       4 | Delicious brunch     |
|      10 | jack_sparrow     |       4 | Delicious brunch     |
|       7 | emily_jones      |       4 | Delicious brunch     |
|       1 | brijesh07        |       4 | Delicious brunch     |
|       6 | bob_marley       |       4 | Delicious brunch     |
|       5 | alice_wonderland |       4 | Delicious brunch     |
|       9 | sarah_connor     |       5 | Adventure awaits     |
|      12 | peter_pan        |       5 | Adventure awaits     |
|       8 | mike_tyson       |       5 | Adventure awaits     |
|      11 | lisa_simpson     |       5 | Adventure awaits     |
|       3 | john_doe         |       5 | Adventure awaits     |
|       2 | jinal01          |       5 | Adventure awaits     |
|       4 | jane_smith       |       5 | Adventure awaits     |
|      10 | jack_sparrow     |       5 | Adventure awaits     |
|       7 | emily_jones      |       5 | Adventure awaits     |
|       1 | brijesh07        |       5 | Adventure awaits     |
|       6 | bob_marley       |       5 | Adventure awaits     |
|       5 | alice_wonderland |       5 | Adventure awaits     |
|       9 | sarah_connor     |       6 | Throwback memories   |
|      12 | peter_pan        |       6 | Throwback memories   |
|       8 | mike_tyson       |       6 | Throwback memories   |
|      11 | lisa_simpson     |       6 | Throwback memories   |
|       3 | john_doe         |       6 | Throwback memories   |
|       2 | jinal01          |       6 | Throwback memories   |
|       4 | jane_smith       |       6 | Throwback memories   |
|      10 | jack_sparrow     |       6 | Throwback memories   |
|       7 | emily_jones      |       6 | Throwback memories   |
|       1 | brijesh07        |       6 | Throwback memories   |
|       6 | bob_marley       |       6 | Throwback memories   |
|       5 | alice_wonderland |       6 | Throwback memories   |
|       9 | sarah_connor     |       7 | Fitness goals        |
|      12 | peter_pan        |       7 | Fitness goals        |
|       8 | mike_tyson       |       7 | Fitness goals        |
|      11 | lisa_simpson     |       7 | Fitness goals        |
|       3 | john_doe         |       7 | Fitness goals        |
|       2 | jinal01          |       7 | Fitness goals        |
|       4 | jane_smith       |       7 | Fitness goals        |
|      10 | jack_sparrow     |       7 | Fitness goals        |
|       7 | emily_jones      |       7 | Fitness goals        |
|       1 | brijesh07        |       7 | Fitness goals        |
|       6 | bob_marley       |       7 | Fitness goals        |
|       5 | alice_wonderland |       7 | Fitness goals        |
|       9 | sarah_connor     |       8 | Creative art         |
|      12 | peter_pan        |       8 | Creative art         |
|       8 | mike_tyson       |       8 | Creative art         |
|      11 | lisa_simpson     |       8 | Creative art         |
|       3 | john_doe         |       8 | Creative art         |
|       2 | jinal01          |       8 | Creative art         |
|       4 | jane_smith       |       8 | Creative art         |
|      10 | jack_sparrow     |       8 | Creative art         |
|       7 | emily_jones      |       8 | Creative art         |
|       1 | brijesh07        |       8 | Creative art         |
|       6 | bob_marley       |       8 | Creative art         |
|       5 | alice_wonderland |       8 | Creative art         |
|       9 | sarah_connor     |       9 | Family time          |
|      12 | peter_pan        |       9 | Family time          |
|       8 | mike_tyson       |       9 | Family time          |
|      11 | lisa_simpson     |       9 | Family time          |
|       3 | john_doe         |       9 | Family time          |
|       2 | jinal01          |       9 | Family time          |
|       4 | jane_smith       |       9 | Family time          |
|      10 | jack_sparrow     |       9 | Family time          |
|       7 | emily_jones      |       9 | Family time          |
|       1 | brijesh07        |       9 | Family time          |
|       6 | bob_marley       |       9 | Family time          |
|       5 | alice_wonderland |       9 | Family time          |
|       9 | sarah_connor     |      10 | Music vibes          |
|      12 | peter_pan        |      10 | Music vibes          |
|       8 | mike_tyson       |      10 | Music vibes          |
|      11 | lisa_simpson     |      10 | Music vibes          |
|       3 | john_doe         |      10 | Music vibes          |
|       2 | jinal01          |      10 | Music vibes          |
|       4 | jane_smith       |      10 | Music vibes          |
|      10 | jack_sparrow     |      10 | Music vibes          |
|       7 | emily_jones      |      10 | Music vibes          |
|       1 | brijesh07        |      10 | Music vibes          |
|       6 | bob_marley       |      10 | Music vibes          |
|       5 | alice_wonderland |      10 | Music vibes          |
|       9 | sarah_connor     |      11 | Pets love            |
|      12 | peter_pan        |      11 | Pets love            |
|       8 | mike_tyson       |      11 | Pets love            |
|      11 | lisa_simpson     |      11 | Pets love            |
|       3 | john_doe         |      11 | Pets love            |
|       2 | jinal01          |      11 | Pets love            |
|       4 | jane_smith       |      11 | Pets love            |
|      10 | jack_sparrow     |      11 | Pets love            |
|       7 | emily_jones      |      11 | Pets love            |
|       1 | brijesh07        |      11 | Pets love            |
|       6 | bob_marley       |      11 | Pets love            |
|       5 | alice_wonderland |      11 | Pets love            |
|       9 | sarah_connor     |      12 | Fashion trends       |
|      12 | peter_pan        |      12 | Fashion trends       |
|       8 | mike_tyson       |      12 | Fashion trends       |
|      11 | lisa_simpson     |      12 | Fashion trends       |
|       3 | john_doe         |      12 | Fashion trends       |
|       2 | jinal01          |      12 | Fashion trends       |
|       4 | jane_smith       |      12 | Fashion trends       |
|      10 | jack_sparrow     |      12 | Fashion trends       |
|       7 | emily_jones      |      12 | Fashion trends       |
|       1 | brijesh07        |      12 | Fashion trends       |
|       6 | bob_marley       |      12 | Fashion trends       |
|       5 | alice_wonderland |      12 | Fashion trends       |
|       9 | sarah_connor     |      13 | Road trip adventures |
|      12 | peter_pan        |      13 | Road trip adventures |
|       8 | mike_tyson       |      13 | Road trip adventures |
|      11 | lisa_simpson     |      13 | Road trip adventures |
|       3 | john_doe         |      13 | Road trip adventures |
|       2 | jinal01          |      13 | Road trip adventures |
|       4 | jane_smith       |      13 | Road trip adventures |
|      10 | jack_sparrow     |      13 | Road trip adventures |
|       7 | emily_jones      |      13 | Road trip adventures |
|       1 | brijesh07        |      13 | Road trip adventures |
|       6 | bob_marley       |      13 | Road trip adventures |
|       5 | alice_wonderland |      13 | Road trip adventures |
|       9 | sarah_connor     |      14 | Healthy eating       |
|      12 | peter_pan        |      14 | Healthy eating       |
|       8 | mike_tyson       |      14 | Healthy eating       |
|      11 | lisa_simpson     |      14 | Healthy eating       |
|       3 | john_doe         |      14 | Healthy eating       |
|       2 | jinal01          |      14 | Healthy eating       |
|       4 | jane_smith       |      14 | Healthy eating       |
|      10 | jack_sparrow     |      14 | Healthy eating       |
|       7 | emily_jones      |      14 | Healthy eating       |
|       1 | brijesh07        |      14 | Healthy eating       |
|       6 | bob_marley       |      14 | Healthy eating       |
|       5 | alice_wonderland |      14 | Healthy eating       |
|       9 | sarah_connor     |      15 | Urban exploration    |
|      12 | peter_pan        |      15 | Urban exploration    |
|       8 | mike_tyson       |      15 | Urban exploration    |
|      11 | lisa_simpson     |      15 | Urban exploration    |
|       3 | john_doe         |      15 | Urban exploration    |
|       2 | jinal01          |      15 | Urban exploration    |
|       4 | jane_smith       |      15 | Urban exploration    |
|      10 | jack_sparrow     |      15 | Urban exploration    |
|       7 | emily_jones      |      15 | Urban exploration    |
|       1 | brijesh07        |      15 | Urban exploration    |
|       6 | bob_marley       |      15 | Urban exploration    |
|       5 | alice_wonderland |      15 | Urban exploration    |
|       9 | sarah_connor     |      16 | Vacation mode        |
|      12 | peter_pan        |      16 | Vacation mode        |
|       8 | mike_tyson       |      16 | Vacation mode        |
|      11 | lisa_simpson     |      16 | Vacation mode        |
|       3 | john_doe         |      16 | Vacation mode        |
|       2 | jinal01          |      16 | Vacation mode        |
|       4 | jane_smith       |      16 | Vacation mode        |
|      10 | jack_sparrow     |      16 | Vacation mode        |
|       7 | emily_jones      |      16 | Vacation mode        |
|       1 | brijesh07        |      16 | Vacation mode        |
|       6 | bob_marley       |      16 | Vacation mode        |
|       5 | alice_wonderland |      16 | Vacation mode        |
|       9 | sarah_connor     |      17 | DIY projects         |
|      12 | peter_pan        |      17 | DIY projects         |
|       8 | mike_tyson       |      17 | DIY projects         |
|      11 | lisa_simpson     |      17 | DIY projects         |
|       3 | john_doe         |      17 | DIY projects         |
|       2 | jinal01          |      17 | DIY projects         |
|       4 | jane_smith       |      17 | DIY projects         |
|      10 | jack_sparrow     |      17 | DIY projects         |
|       7 | emily_jones      |      17 | DIY projects         |
|       1 | brijesh07        |      17 | DIY projects         |
|       6 | bob_marley       |      17 | DIY projects         |
|       5 | alice_wonderland |      17 | DIY projects         |
|       9 | sarah_connor     |      18 | Throwback Thursday   |
|      12 | peter_pan        |      18 | Throwback Thursday   |
|       8 | mike_tyson       |      18 | Throwback Thursday   |
|      11 | lisa_simpson     |      18 | Throwback Thursday   |
|       3 | john_doe         |      18 | Throwback Thursday   |
|       2 | jinal01          |      18 | Throwback Thursday   |
|       4 | jane_smith       |      18 | Throwback Thursday   |
|      10 | jack_sparrow     |      18 | Throwback Thursday   |
|       7 | emily_jones      |      18 | Throwback Thursday   |
|       1 | brijesh07        |      18 | Throwback Thursday   |
|       6 | bob_marley       |      18 | Throwback Thursday   |
|       5 | alice_wonderland |      18 | Throwback Thursday   |
|       9 | sarah_connor     |      19 | Workout motivation   |
|      12 | peter_pan        |      19 | Workout motivation   |
|       8 | mike_tyson       |      19 | Workout motivation   |
|      11 | lisa_simpson     |      19 | Workout motivation   |
|       3 | john_doe         |      19 | Workout motivation   |
|       2 | jinal01          |      19 | Workout motivation   |
|       4 | jane_smith       |      19 | Workout motivation   |
|      10 | jack_sparrow     |      19 | Workout motivation   |
|       7 | emily_jones      |      19 | Workout motivation   |
|       1 | brijesh07        |      19 | Workout motivation   |
|       6 | bob_marley       |      19 | Workout motivation   |
|       5 | alice_wonderland |      19 | Workout motivation   |
|       9 | sarah_connor     |      20 | Abstract painting    |
|      12 | peter_pan        |      20 | Abstract painting    |
|       8 | mike_tyson       |      20 | Abstract painting    |
|      11 | lisa_simpson     |      20 | Abstract painting    |
|       3 | john_doe         |      20 | Abstract painting    |
|       2 | jinal01          |      20 | Abstract painting    |
|       4 | jane_smith       |      20 | Abstract painting    |
|      10 | jack_sparrow     |      20 | Abstract painting    |
|       7 | emily_jones      |      20 | Abstract painting    |
|       1 | brijesh07        |      20 | Abstract painting    |
|       6 | bob_marley       |      20 | Abstract painting    |
|       5 | alice_wonderland |      20 | Abstract painting    |
|       9 | sarah_connor     |      21 | Family reunion       |
|      12 | peter_pan        |      21 | Family reunion       |
|       8 | mike_tyson       |      21 | Family reunion       |
|      11 | lisa_simpson     |      21 | Family reunion       |
|       3 | john_doe         |      21 | Family reunion       |
|       2 | jinal01          |      21 | Family reunion       |
|       4 | jane_smith       |      21 | Family reunion       |
|      10 | jack_sparrow     |      21 | Family reunion       |
|       7 | emily_jones      |      21 | Family reunion       |
|       1 | brijesh07        |      21 | Family reunion       |
|       6 | bob_marley       |      21 | Family reunion       |
|       5 | alice_wonderland |      21 | Family reunion       |
|       9 | sarah_connor     |      22 | Concert vibes        |
|      12 | peter_pan        |      22 | Concert vibes        |
|       8 | mike_tyson       |      22 | Concert vibes        |
|      11 | lisa_simpson     |      22 | Concert vibes        |
|       3 | john_doe         |      22 | Concert vibes        |
|       2 | jinal01          |      22 | Concert vibes        |
|       4 | jane_smith       |      22 | Concert vibes        |
|      10 | jack_sparrow     |      22 | Concert vibes        |
|       7 | emily_jones      |      22 | Concert vibes        |
|       1 | brijesh07        |      22 | Concert vibes        |
|       6 | bob_marley       |      22 | Concert vibes        |
|       5 | alice_wonderland |      22 | Concert vibes        |
|       9 | sarah_connor     |      23 | Pet adventures       |
|      12 | peter_pan        |      23 | Pet adventures       |
|       8 | mike_tyson       |      23 | Pet adventures       |
|      11 | lisa_simpson     |      23 | Pet adventures       |
|       3 | john_doe         |      23 | Pet adventures       |
|       2 | jinal01          |      23 | Pet adventures       |
|       4 | jane_smith       |      23 | Pet adventures       |
|      10 | jack_sparrow     |      23 | Pet adventures       |
|       7 | emily_jones      |      23 | Pet adventures       |
|       1 | brijesh07        |      23 | Pet adventures       |
|       6 | bob_marley       |      23 | Pet adventures       |
|       5 | alice_wonderland |      23 | Pet adventures       |
|       9 | sarah_connor     |      24 | Fashion inspiration  |
|      12 | peter_pan        |      24 | Fashion inspiration  |
|       8 | mike_tyson       |      24 | Fashion inspiration  |
|      11 | lisa_simpson     |      24 | Fashion inspiration  |
|       3 | john_doe         |      24 | Fashion inspiration  |
|       2 | jinal01          |      24 | Fashion inspiration  |
|       4 | jane_smith       |      24 | Fashion inspiration  |
|      10 | jack_sparrow     |      24 | Fashion inspiration  |
|       7 | emily_jones      |      24 | Fashion inspiration  |
|       1 | brijesh07        |      24 | Fashion inspiration  |
|       6 | bob_marley       |      24 | Fashion inspiration  |
|       5 | alice_wonderland |      24 | Fashion inspiration  |
+---------+------------------+---------+----------------------+