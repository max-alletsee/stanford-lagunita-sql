# Stanford Lagunita: SQL (DB5)

Stanford University used to offer a free and self-paced online course on SQL since 2014 via its Lagunita platform ([link](https://lagunita.stanford.edu/courses/DB/SQL/SelfPaced/course/)). The course provides an excellent introduction to SQL, largely thanks to [Prof. Jennifer Widom](https://profiles.stanford.edu/jennifer-widom)'s teaching style and her willingness to explore the topic deeply instead of just quickly rushing over the main commands. (By the way, I am not the only person with this opionion - [see here](https://towardsdatascience.com/how-i-went-from-zero-coding-skills-to-data-scientist-in-6-months-c2207b65f2f3).)

Stanford decided to retire its Lagunita platform at the end of March 2020. To ensure that future learners can benefit from this course, this repository tries to provide access to the course material. **Update April 2020:** The course is now available again via [edx.org](https://www.edx.org/course/databases-5-sql).

## Background

The SQL course is a part of a set of 14 mini-courses which emerged from Stanford's "Introduction to Databases" course. SQL is the fifth course of the collection, but does not require prior knowledge from any of the other mini-courses. Prof. Widom provides the full collection of courses and suggestions for combining mini-courses [on her website](https://cs.stanford.edu/people/widom/DB-mooc.html).

The SQL (DB5) course consists of nine video lectures where Prof. Widom explains basic concepts of SQL and walks through different examples with increasing levels of complexity. It is followed by several exercises where the student is asked to write SQL queries that based on a plain-text description of the desired result.

## Course Videos

The course consists of nine video lectures. All videos are available via YouTube. Each video consists usually of a few short slides where Prof. Widom explains a SQL concept and then goes into the details by showing practical examples. All examples in the course use a fictitious database of US colleges, college applications and, admissions. The schema of this database is available [here](lectures/lecture_schema.sql), the data is available [here](lectures/lecture_data.sql).

1. [Introduction to SQL](https://www.youtube.com/watch?v=wxFmiRwXcQY) (4:30)
2. [Basic SELECT Statements](https://www.youtube.com/watch?v=4IxirOdp6bw) (9:56): [SQL code used in the video](lectures/2_Select.sql)
3. [Table Variables and Set Operators](https://www.youtube.com/watch?v=thcqxTlSAmw) (10:32): [SQL code used in the video](lectures/3_TableVarsSetOps.sql)
4. [Subqueries in WHERE Clause](https://www.youtube.com/watch?v=IJPXosPGLTU) (20:13): [SQL code used in the video](lectures/4_SubqueriesWhere.sql)
5. [Subqueries in FROM and SELECT Clauses](https://www.youtube.com/watch?v=8OCAxk1Rybg) (8:01): [SQL code used in the video](lectures/5_SubqueriesFromSelect.sql)
6. [The JOIN Family of Operators](https://www.youtube.com/watch?v=oXd4mTA86MI) (24:59): [SQL code used in the video](lectures/6_JoinOperators.sql)
7. [Aggregation](https://www.youtube.com/watch?v=428B57dOxcE) (25:17): [SQL code used in the video](lectures/7_SQLAggregation.sql)
8. [NULL Values](https://www.youtube.com/watch?v=qdR2z_Ws56k) (6:24): [SQL code used in the video](lectures/8_SQLNulls.sql)
9. [Data Modification Statements](https://www.youtube.com/watch?v=qKNb8YQYTZg) (14:33): [SQL code used in the video](lectures/9_SQLModifications.sql)

## Software

The course comes with a quick guide that shows how to install SQLite, MySQL, and PostgreSQL. A copy of this document is available [here in this repository](sql-guide.html).

[DB Browser for SQLite](https://sqlitebrowser.org/) is a convenient GUI that can be used to inspect the databases and tables used during the course / exercises. It is available as open source software.

## Exercises

The course consists of six sets of exercises with two different data sets.

The repository contains both solutions **with** and **without** code. The latter are helpful to check if your own answer leads to the correct results. The solution files are HTML files that have been rendered with R Markdown / knitr. Of course, you can choose any SQL interface to work on the exercises - a software like "DB Browser for SQLite" may be much more convenient than the notebook format.

1. Movie Ratings: Query Exercises
    * [Exercises](exercises/ex1_movie_queries.md)
    * [Solutions without code](https://htmlpreview.github.io/?https://github.com/alletsee/stanford-lagunita-sql/blob/master/exercises/ex1_movie_queries_solutions_without_code.html)
    * [Solutions with code](https://htmlpreview.github.io/?https://github.com/alletsee/stanford-lagunita-sql/blob/master/exercises/ex1_movie_queries_solutions_with_code.html)
2. Movie Ratings: Extra Query Exercises
    * [Exercises](exercises/ex2_movie_queries_extra.md)
    * [Solutions without code](https://htmlpreview.github.io/?https://github.com/alletsee/stanford-lagunita-sql/blob/master/exercises/ex2_movie_queries_extra_solutions_without_code.html)
    * [Solutions with code](https://htmlpreview.github.io/?https://github.com/alletsee/stanford-lagunita-sql/blob/master/exercises/ex2_movie_queries_extra_solutions_with_code.html)
3. Social Network: Query Exercises
    * [Exercises](exercises/ex3_social_queries.md)
    * [Solutions without code](https://htmlpreview.github.io/?https://github.com/alletsee/stanford-lagunita-sql/blob/master/exercises/ex3_social_queries_solutions_without_code.html)
    * [Solutions with code](https://htmlpreview.github.io/?https://github.com/alletsee/stanford-lagunita-sql/blob/master/exercises/ex3_social_queries_solutions_with_code.html)
4. Social Network: Extra Query Exercises
    * [Exercises](exercises/ex4_social_queries_extra.md)
    * [Solutions without code](https://htmlpreview.github.io/?https://github.com/alletsee/stanford-lagunita-sql/blob/master/exercises/ex4_social_queries_extra_solutions_without_code.html)
    * [Solutions with code](https://htmlpreview.github.io/?https://github.com/alletsee/stanford-lagunita-sql/blob/master/exercises/ex4_social_queries_extra_solutions_with_code.html)
5. Movie Ratings: Modification Exercises
    * [Exercises](exercises/ex5_movie_modifications.md)
    * [Solutions without code](https://htmlpreview.github.io/?https://github.com/alletsee/stanford-lagunita-sql/blob/master/exercises/ex5_movie_modifications_without_code.html)
    * [Solutions with code](https://htmlpreview.github.io/?https://github.com/alletsee/stanford-lagunita-sql/blob/master/exercises/ex5_movie_modifications_with_code.html)
6. Social Network: Modification Exercises
    * [Exercises](exercises/ex6_social_modification.md)
    * [Solutions without code](https://htmlpreview.github.io/?https://github.com/alletsee/stanford-lagunita-sql/blob/master/exercises/ex6_social_modifications_without_code.html)
    * [Solutions with code](https://htmlpreview.github.io/?https://github.com/alletsee/stanford-lagunita-sql/blob/master/exercises/ex6_social_modifications_with_code.html)

### Solutions from Others

The files in the list above are the solutions that I created myself during the course. As the course is quite popular, there are plenty of other solutions available on Github. A list of available solutions from other students can be found [here](solutions_from_others.md).

### Data Used in the Exercises

The **data for the movie rating exercises** consists of three tables (movie, reviewer, and rating). It is available as a [database](exercises/movies/data_movies.db), as [SQL code](exercises/movies/data_movies.sql) to (re-)create the database and as a [schema in HTML format](exercises/movies/data_movies.html).

The **data for the social network exercises** also consists of three tables (highschooler, friend, and likes). While the "friend" table shows bi-directional relationships (A likes B and B likes A), the "likes" table contains uni-directional relationships (A likes B, but it's not implied that B likes A unless specified). It is available as a [database](exercises/social/data_social.db), as [SQL code](exercises/social/data_social.sql) to (re-)create the database, as a [schema in HTML format](exercises/social/data_social.html), and as [an image](exercises/social/data_social.png) that visualizes all the "friendship"/"likes" graphs (which is very handy to identify expected results and search for errors).

The Lagunita platform provided a statement of accomplishment when a student has answered at least 90% of the assignments correctly. Each question is worth one point. This statement of accomplishment is not available anymore after the shut down of the Lagunita platform - but please give yourself a pat on the shoulder if you answer more than 90% of them correctly.

## Readings

The course suggests the following readings.

* Ullman and Widom: A First Course in Database Systems (3rd edition); same material and sections as Database Systems: The Complete Book (2nd edition) by Garcia-Molina, Ullman, and Widom
* Ramakrishnan and Gehrke: Database Management Systems (3rd edition)
* Elmasri and Navathe: Fundamentals of Database Systems (6th edition)
* Silberschatz, Korth, and Sudarshan: Database System Concepts (6th edition)

Below is an overview of the recommended readings for each lecture.

1. Introduction to SQL: no recommended readings
2. Basic SELECT Statements
    * Ullman and Widom: chapter 6.1
    * Ramakrishnan and Gehrke: chapter 5.2
    * Elmasri and Navathe: chapter 4.3
    * Silberschatz, Korth, and Sudarshan: chapter 3.3
3. Table Variables and Set Operators
    * Ullman and Widom: chapter 6.2
    * Ramakrishnan and Gehrke: chapter 5.3
    * Elmasri and Navathe: chapter 4.3
    * Silberschatz, Korth, and Sudarshan: chapters 3.34 - 3.5
4. Subqueries in WHERE Clause
    * Ullman and Widom: chapter 6.3
    * Ramakrishnan and Gehrke: chapter 5.4
    * Elmasri and Navathe: chapters 5.1.2 - 5.1.6
    * Silberschatz, Korth, and Sudarshan: chapter 3.8
5. Subqueries in FROM and SELECT Clauses *(same recommended readings as for "Subqueries in WHERE Clause")*
    * Ullman and Widom: chapter 6.3
    * Ramakrishnan and Gehrke: chapter 5.4
    * Elmasri and Navathe: chapters 5.1.2 - 5.1.6
    * Silberschatz, Korth, and Sudarshan: chapter 3.8
6. The JOIN Family of Operators
    * Ullman and Widom: chapters 5.2.7, 6.3.6-8
    * Ramakrishnan and Gehrke: chapter 5.6.4
    * Elmasri and Navathe: chapter 5.1.6
    * Silberschatz, Korth, and Sudarshan: chapter 4.1
7. Aggregation
    * Ullman and Widom: chapters 6.4.3 - 6.4.7
    * Ramakrishnan and Gehrke: chapter 5.5
    * Elmasri and Navathe: chapters 5.1.7 - 5.1.8
    * Silberschatz, Korth, and Sudarshan: chapter 3.7
8. NULL Values
    * Ullman and Widom: chapters 6.1.6-7, 6.4.6
    * Ramakrishnan and Gehrke: chapter 5.6
    * Elmasri and Navathe: chapters 5.1.1 - 5.1.8
    * Silberschatz, Korth, and Sudarshan: chapter 3.7
9. Data Modification Statements
    * Ullman and Widom: chapter 6.5
    * Ramakrishnan and Gehrke: chapter 3.1.1
    * Elmasri and Navathe: chapters 4.4
    * Silberschatz, Korth, and Sudarshan: chapter 3.9

## Copyright

The copyright for all course material (videos, data, SQL scripts, etc.) belongs to Jennifer Widom and/or Stanford University. I am not the copyright owner of this material, but have mainly written this main overview and the solutions code to the exercises.
