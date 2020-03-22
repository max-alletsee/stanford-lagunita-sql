# SQL Exercise #5: Modifying Movie Data

You've started a new movie-rating website, and you've been collecting data on reviewers' ratings of various movies. There's not much data yet, but you can still try out some interesting queries. Here's the schema:

- **Movie (mID, title, year, director)**: There is a movie with ID number mID, a title, a release year, and a director.
- **Reviewer (rID, name)**: The reviewer with ID number rID has a certain name.
- **Rating (rID, mID, stars, ratingDate):** The reviewer rID gave the movie mID a number of stars rating (1-5) on a certain ratingDate.

Your queries will run over a small data set conforming to the schema. The database can be found in the file [movies/data_movies.db](movies/data_movies.db). The SQL code to re-create the database can be found in the file [movies/data_movies.sql](movies/data_movies.sql). The schema of the database can be found in the file [movies/data_movies.html](movies/data_movies.html). Your queries are executed using SQLite, so you must conform to the SQL constructs supported by SQLite.

## Question 1

Add the reviewer Roger Ebert to your database, with an rID of 209.

## Question 2

Insert 5-star ratings by James Cameron for all movies in the database. Leave the review date as NULL.

## Question 3

For all movies that have an average rating of 4 stars or higher, add 25 to the release year. (Update the existing tuples; don't insert new tuples.)

## Question 4

Remove all ratings where the movie's year is before 1970 or after 2000, and the rating is fewer than 4 stars.
