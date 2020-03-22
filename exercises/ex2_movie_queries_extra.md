# SQL Exercise #2: Querying Movie Data - Extra Exercises

You've started a new movie-rating website, and you've been collecting data on reviewers' ratings of various movies. There's not much data yet, but you can still try out some interesting queries. Here's the schema:

- **Movie (mID, title, year, director)**: There is a movie with ID number mID, a title, a release year, and a director.
- **Reviewer (rID, name)**: The reviewer with ID number rID has a certain name.
- **Rating (rID, mID, stars, ratingDate):** The reviewer rID gave the movie mID a number of stars rating (1-5) on a certain ratingDate.

Your queries will run over a small data set conforming to the schema. The database can be found in the file [movies/data_movies.db](movies/data_movies.db). The SQL code to re-create the database can be found in the file [movies/data_movies.sql](movies/data_movies.sql). The schema of the database can be found in the file [movies/data_movies.html](movies/data_movies.html). Your queries are executed using SQLite, so you must conform to the SQL constructs supported by SQLite.

## Question 1

Find the names of all reviewers who rated Gone with the Wind.

## Question 2

For any rating where the reviewer is the same as the director of the movie, return the reviewer name, movie title, and number of stars.

## Question 3

Return all reviewer names and movie names together in a single list, alphabetized. (Sorting by the first name of the reviewer and first word in the title is fine; no need for special processing on last names or removing "The".)

## Question 4

Find the titles of all movies *not* reviewed by Chris Jackson.

## Question 5

For all pairs of reviewers such that both reviewers gave a rating to the same movie, return the names of both reviewers. Eliminate duplicates, don't pair reviewers with themselves, and  include each pair only once. For each pair, return the names in the pair in alphabetical order.

## Question 6

For each rating that is the lowest (fewest stars) currently in the database, return the reviewer name, movie title, and number of stars.

## Question 7

List movie titles and average ratings, from highest-rated to lowest-rated. If two or more movies have the same average rating, list them in alphabetical order.

## Question 8

Find the names of all reviewers who have contributed three or more ratings. (As an extra challenge, try writing the query without HAVING or without COUNT.)

## Question 9

Some directors directed more than one movie. For all such directors, return the titles of all movies directed by them, along with the director name. Sort by director name, then movie title. (As an extra challenge, try writing the query both with and without COUNT.)

## Question 10

Find the movie(s) with the highest average rating. Return the movie title(s) and average rating. (Hint: This query is more difficult to write in SQLite than other systems; you might think of it as finding the highest average rating and then choosing the movie(s) with that average rating.)

## Question 11

Find the movie(s) with the lowest average rating. Return the movie title(s) and average rating(Hint: This query may be more difficult to write in SQLite than other systems; you might think of it as finding the lowest average rating and then choosing the movie(s) with that average rating.)

## Question 12

For each director, return the director's name together with the title(s) of the movie(s) they directed that received the highest rating among all of their movies, and the value of that rating. Ignore movies whose director is NULL.
