---
title: 'SQL Exercise #4: Querying Social Data, Extra Exercises - Solutions without Code'
output:
  html_document:
    df_print: paged
---

This notebook contains the **solutions without code** for Exercise 4 - Querying Social Data, Extra Exercises.


```r
library(DBI)
db = dbConnect(RSQLite::SQLite(), dbname = "social/data_social.db")
knitr::opts_chunk$set(connection = "db")
```

## Question 1

For every situation where student A likes student B, but student B likes a different student C, return the names and grades of A, B, and C.

<div class="knitsql-table">


Table: 2 records

name       grade  name         grade  name       grade
--------  ------  ----------  ------  --------  ------
Andrew        10  Cassandra        9  Gabriel        9
Gabriel       11  Alexis          11  Kris          10

</div>

## Question 2

Find those students for whom all of their friends are in different grades from themselves. Return the students' names and grades.

<div class="knitsql-table">


Table: 1 records

name      grade
-------  ------
Austin       11

</div>

## Question 3

What is the average number of friends per student? (Your result should be just one number.)

<div class="knitsql-table">


Table: 1 records

|AVG(friend_count) |
|:-----------------|
|2.5               |

</div>

## Question 4

Find the number of students who are either friends with Cassandra or are friends of friends of Cassandra. Do not count Cassandra, even though technically she is a friend of a friend.

<div class="knitsql-table">


Table: 1 records

|COUNT(*) |
|:--------|
|7        |

</div>

## Question 5

Find the name and grade of the student(s) with the greatest number of friends.

<div class="knitsql-table">


Table: 2 records

name      grade
-------  ------
Andrew       10
Alexis       11

</div>


