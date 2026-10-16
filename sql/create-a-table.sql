-- Basic usage of SQL commands to create a table, insert data, update data, and delete data.
-- Data Analytics Practice | Oct 2026


-- Creating a table called friends
Create TABLE friends
(id INTEGER,
name TEXT,
birthday DATE);

-- Inserting datas
INSERT INTO friends(id,name,birthday)
VALUES(1,'Ororo Munroe', '1940-05-30');
INSERT INTO friends(id,name,birthday)
VALUES(2,'Scarlett Dragnar','2002-09-11');
INSERT INTO friends(id,name,birthday)
Values(3,'Legend','2002-05-02');

Select * FROM friends;

--Updating Ororo Munroe's name to Storm
UPDATE friends
SET name = 'Storm'
Where id = 1;

-- Adding a new column called email
ALTER TABLE friends
ADD COLUMN email TEXT;

-- Updating the email of friends with id 1,2,3
Update friends
SET email = 'potato@hotmail.com'
Where id IN (1,2,3);

Select * FROM friends;

-- Removing the row with id 1(the friend Storm)
DELETE FROM friends
Where id = 1;

-- Reviewing the table 
SELECT * 
FROM friends;

