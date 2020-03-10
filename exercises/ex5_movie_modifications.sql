/*
SQL Exercise # 5
Modifying the Movie Data
 */

/* You've started a new movie-rating website, and you've been collecting data on reviewers' ratings
 of various movies. There's not much data yet, but you can still try out some interesting queries.
 (The data for exercises 1, 2, and 5 is the same.)
 Here's the schema: */ 

/* Movie ( mID, title, year, director ):
 Plan English: There is a movie with ID number mID, a title, a release year, and a director. */

/* Reviewer ( rID, name ):
 Plain English: The reviewer with ID number rID has a certain name. */

/* Rating ( rID, mID, stars, ratingDate ):
 Plain English: The reviewer rID gave the movie mID a number of stars rating (1-5) on a certain
 ratingDate. */

/* Your queries will run over a small data set conforming to the schema.
 The database can be found in the file "movies/data_movies.db".
 The SQL code to re-create the database can be found in the file "movies/data_movies.db".
 The schema of the database can be found in the file "movies/data_movies.html"
 Your queries are executed using SQLite, so you must conform to the SQL constructs supported by
 SQLite.
*/ 


/* Q1: Add the reviewer Roger Ebert to your database, with an rID of 209. */


/* Q2: Insert 5-star ratings by James Cameron for all movies in the database. Leave the review
 date as NULL. */


/* Q3: For all movies that have an average rating of 4 stars or higher, add 25 to the release year.
 (Update the existing tuples; don't insert new tuples.) */


/* Q4: Remove all ratings where the movie's year is before 1970 or after 2000, and the rating is
 fewer than 4 stars. */

