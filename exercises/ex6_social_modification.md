# SQL Exercise #6: Modifying Social Relations Data

Students at your hometown high school have decided to organize their social network using databases. So far, they have collected information about sixteen students in four grades, 9-12. Here's the schema:

- **Highschooler (ID, name, grade)**: There is a high school student with unique ID and a given first name in a certain grade.
- **Friend (ID1, ID2)**: The student with ID1 is friends with the student with ID2. Friendship is mutual, so if (123, 456) is in the Friend table, so is (456, 123).
- **Likes (ID1, ID2):** The student with ID1 likes the student with ID2. Liking someone is not necessarily mutual, so if (123, 456) is in the Likes table, there is no guarantee that (456, 123) is also present.

Your queries will run over a small data set conforming to the schema. The database can be found in the file [social/data_social.db](social/data_social.db). The SQL code to re-create the database can be found in the file [social/data_social.sql](social/data_social.sql). The schema of the database can be found in the file [social/data_social.html](data/data_social.html). Your queries are executed using SQLite, so you must conform to the SQL constructs supported by SQLite.

For your convenience, here is a [graph](social/data_social.png) showing the various connections between the students in our database. 9th graders are blue, 10th graders are green, 11th graders are yellow, and 12th graders are purple. Undirected black edges indicate friendships, and directed red edges indicate that one student likes another student.

## Question 1

It's time for the seniors to graduate. Remove all 12th graders from Highschooler.

## Question 2

If two students A and B are friends, and A likes B but not vice-versa, remove the Likes tuple.

## Question 3

For all cases where A is friends with B, and B is friends with C, add a new friendship for the pair A and C. Do not add duplicate friendships, friendships that already exist, or friendships with oneself. (This one is a bit challenging; congratulations if you get it right.)
