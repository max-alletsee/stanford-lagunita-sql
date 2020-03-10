/*
SQL Exercise # 1
Querying Movie Data
 */

/* You've started a new movie-rating website, and you've been collecting data on reviewers' ratings
 of various movies. There's not much data yet, but you can still try out some interesting queries.
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





/* Q1: Find the titles of all movies directed by Steven Spielberg. */


/* Q2: Find all years that have a movie that received a rating of 4 or 5, and sort them in 
 increasing order. */


/* Q3: Find the titles of all movies that have no ratings. */


/* Q4: Some reviewers didn't provide a date with their rating. Find the names of all reviewers who
 have ratings with a NULL value for the date. */


/* Q5: Write a query to return the ratings data in a more readable format: reviewer name, movie
 title, stars, and ratingDate. Also, sort the data, first by reviewer name, then by movie title,
 and lastly by number of stars. */


/* Q6: For all cases where the same reviewer rated the same movie twice and gave it a higher rating
 the second time, return the reviewer's name and the title of the movie. */


/* Q7: For each movie that has at least one rating, find the highest number of stars that movie
 received. Return the movie title and number of stars. Sort by movie title. */


/* Q8: For each movie, return the title and the 'rating spread', that is, the difference between
 highest and lowest ratings given to that movie. Sort by rating spread from highest to lowest,
 then by movie title. */


/* Q9: Find the difference between the average rating of movies released before 1980 and the
 average rating of movies released after 1980. (Make sure to calculate the average rating for
 each movie, then the average of those averages for movies before 1980 and movies after. Don't
 just calculate the overall average rating before and after 1980.) */

