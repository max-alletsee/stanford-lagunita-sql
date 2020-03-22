# SQL Exercise #3: Querying Social Relations Data

Students at your hometown high school have decided to organize their social network using databases. So far, they have collected information about sixteen students in four grades, 9-12. Here's the schema:

- **Highschooler (ID, name, grade)**: There is a high school student with unique ID and a given first name in a certain grade.
- **Friend (ID1, ID2)**: The student with ID1 is friends with the student with ID2. Friendship is mutual, so if (123, 456) is in the Friend table, so is (456, 123).
- **Likes (ID1, ID2):** The student with ID1 likes the student with ID2. Liking someone is not necessarily mutual, so if (123, 456) is in the Likes table, there is no guarantee that (456, 123) is also present.

Your queries will run over a small data set conforming to the schema. The database can be found in the file [social/data_social.db](social/data_social.db). The SQL code to re-create the database can be found in the file [social/data_social.sql](social/data_social.sql). The schema of the database can be found in the file [social/data_social.html](data/data_social.html). Your queries are executed using SQLite, so you must conform to the SQL constructs supported by SQLite.

For your convenience, here is a [graph](social/data_social.png) showing the various connections between the students in our database. 9th graders are blue, 10th graders are green, 11th graders are yellow, and 12th graders are purple. Undirected black edges indicate friendships, and directed red edges indicate that one student likes another student.

## Question 1

For every situation where student A likes student B, but student B likes a different student C, return the names and grades of A, B, and C.

## Question 2

Find those students for whom all of their friends are in different grades from themselves. Return the students' names and grades.

## Question 3

What is the average number of friends per student? (Your result should be just one number.)

## Question 4

Find the number of students who are either friends with Cassandra or are friends of friends of Cassandra. Do not count Cassandra, even though technically she is a friend of a friend.

## Question 5

Find the name and grade of the student(s) with the greatest number of friends.
