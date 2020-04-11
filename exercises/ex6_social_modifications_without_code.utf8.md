---
title: 'SQL Exercise #6: Modifying Social Data - Solutions without Code'
output:
  html_document:
    df_print: paged
---

This notebook contains the **solutions without code** for Exercise 6 - Modifying Social Data.


```r
library(DBI)
library(RSQLite)

# Mechanism to prevent permanent edits of the database:
# 1) Creating an in-memory temporary database and loading the reference database
# 2) Copying the static database to the temporary in-memory database
# 3) Closing the connection to the static database
# 4) Performing all operations on the in-memory database only

db_temp <- dbConnect(RSQLite::SQLite(), ":memory:")
db_static <- dbConnect(RSQLite::SQLite(), dbname = "social/data_social.db")

RSQLite::sqliteCopyDatabase(from = db_static, to = db_temp)
dbDisconnect(db_static)

knitr::opts_chunk$set(connection = "db_temp")
```

## Question 1

It's time for the seniors to graduate. Remove all 12th graders from Highschooler.



<div class="knitsql-table">


Table: 1 records

|MAX(grade) |
|:----------|
|11         |

</div>


## Question 2

If two students A and B are friends, and A likes B but not vice-versa, remove the Likes tuple.



<div class="knitsql-table">


Table: 0 records

|ID1 | ID2|
|:---|---:|

</div>

<div class="knitsql-table">


Table: 4 records

name         grade  name         grade
----------  ------  ----------  ------
Alexis          11  Kris            10
Andrew          10  Cassandra        9
Cassandra        9  Gabriel          9
Gabriel          9  Cassandra        9

</div>


## Question 3

For all cases where A is friends with B, and B is friends with C, add a new friendship for the pair A and C. Do not add duplicate friendships, friendships that already exist, or friendships with oneself. (This one is a bit challenging; congratulations if you get it right.)



<div class="knitsql-table">


Table: Displaying records 1 - 10

   ID  name         grade   (SELECT count(*)
        FROM Friend
        WHERE id1 = H.id)
-----  ----------  ------  ---------------------------------------------------------------
 1101  Haley           10                                                                3
 1247  Alexis          11                                                                7
 1316  Austin          11                                                                6
 1381  Tiffany          9                                                                6
 1468  Kris            10                                                                6
 1501  Jessica         11                                                                7
 1510  Jordan           9                                                                5
 1641  Brittany        10                                                                3
 1689  Gabriel          9                                                                8
 1709  Cassandra        9                                                                7

</div>


