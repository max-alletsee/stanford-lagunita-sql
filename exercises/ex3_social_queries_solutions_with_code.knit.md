---
title: 'SQL Exercise #3: Querying Social Data - Solutions with Code'
output:
  html_document:
    df_print: paged
---

This notebook contains the **solutions with code** for Exercise 3 - Querying Social Data.


```r
library(DBI)
db = dbConnect(RSQLite::SQLite(), dbname = "social/data_social.db")
knitr::opts_chunk$set(connection = "db")
```

## Question 1

Find the names of all students who are friends with someone named Gabriel.


```sql
SELECT Highschooler.name
FROM (SELECT Friend.ID2
    FROM (Friend LEFT JOIN Highschooler AS hs1 ON Friend.ID1 = hs1.ID)
    WHERE hs1.name = 'Gabriel'
    UNION
    SELECT Friend.ID1
    FROM (Friend LEFT JOIN Highschooler AS hs2 ON Friend.ID2 = hs2.ID)
    WHERE hs2.name = 'Gabriel') AS Friends_Selection
    LEFT JOIN Highschooler ON Friends_Selection.ID2 = Highschooler.ID
```


<div class="knitsql-table">


Table: 5 records

|name      |
|:---------|
|Alexis    |
|Jessica   |
|Jordan    |
|Cassandra |
|Andrew    |

</div>

## Question 2

For every student who likes someone 2 or more grades younger than themselves, return that student's name and grade, and the name and grade of the student they like.


```sql
SELECT hs1.name AS id1_name, hs1.grade AS id1_grade, hs2.name AS id2_name, hs2.grade AS id2_grade
FROM (Likes LEFT JOIN Highschooler AS hs1 ON Likes.ID1 = hs1.ID) LEFT JOIN Highschooler AS hs2 ON Likes.ID2 = hs2.ID
WHERE hs1.grade - hs2.grade >= 2
```


<div class="knitsql-table">


Table: 1 records

id1_name    id1_grade  id2_name    id2_grade
---------  ----------  ---------  ----------
John               12  Haley              10

</div>

## Question 3

For every pair of students who both like each other, return the name and grade of both students. Include each pair only once, with the two names in alphabetical order.


```sql
SELECT DISTINCT hs1.name, hs1.grade, hs2.name, hs2.grade
FROM Likes AS l1, Likes AS l2, Highschooler AS hs1, Highschooler AS hs2
WHERE l1.ID1 = hs1.ID AND 
    l1.ID2 = hs2.ID AND
    l2.ID1 = hs2.ID AND
    l2.ID2 = hs1.ID AND
    hs1.name < hs2.name
```


<div class="knitsql-table">


Table: 2 records

name         grade  name       grade
----------  ------  --------  ------
Cassandra        9  Gabriel        9
Jessica         11  Kyle          12

</div>

## Question 4

Find all students who do not appear in the Likes table (as a student who likes or is liked) and return their names and grades. Sort by grade, then by name within each grade.


```sql
SELECT name, grade
FROM Highschooler
WHERE ID NOT IN (
    SELECT ID1 FROM Likes
    UNION
    SELECT ID2 FROM Likes)
ORDER BY grade, name
```


<div class="knitsql-table">


Table: 3 records

name       grade
--------  ------
Jordan         9
Tiffany        9
Logan         12

</div>

## Question 5

For every situation where student A likes student B, but we have no information about whom B likes (that is, B does not appear as an ID1 in the Likes table), return A and B's names and grades.


```sql
SELECT DISTINCT hs1.name, hs1.grade, hs2.name, hs2.grade
FROM Highschooler AS hs1, Highschooler AS hs2, Likes
WHERE hs1.id = Likes.ID1 AND
    hs2.id = Likes.ID2 AND
    hs2.id NOT IN (SELECT id1 FROM Likes)
```


<div class="knitsql-table">


Table: 4 records

name        grade  name      grade
---------  ------  -------  ------
John           12  Haley        10
Alexis         11  Kris         10
Brittany       10  Kris         10
Austin         11  Jordan       12

</div>

## Question 6

Find names and grades of students who only have friends in the same grade. Return the result sorted by grade, then by name within each grade.


```sql
SELECT DISTINCT hs1.name, hs1.grade
FROM Highschooler AS hs1, Highschooler AS hs2, Friend AS fr
WHERE hs1.id = fr.id1 AND
    hs2.id = fr.id2 AND 
    hs1.id NOT IN (
        SELECT hs1.id
        FROM Highschooler AS hs1, Highschooler AS hs2, Friend AS fr
        WHERE hs1.id = fr.id1 AND
            hs2.id = fr.id2 AND
            hs1.grade != hs2.grade)
ORDER BY hs1.grade, hs1.name
```


<div class="knitsql-table">


Table: 7 records

name        grade
---------  ------
Jordan          9
Brittany       10
Haley          10
Kris           10
Gabriel        11
John           12
Logan          12

</div>

## Question 7

For each student A who likes a student B where the two are not friends, find if they have a friend C in common (who can introduce them!). For all such trios, return the name and grade of A, B, and C.


```sql
SELECT DISTINCT hs1.name, hs1.grade, hs2.name, hs2.grade, hs3.name, hs3.grade
FROM Highschooler AS hs1, Highschooler AS hs2, Highschooler AS hs3, Likes, Friend
WHERE hs1.ID = Likes.ID1 AND
    hs2.ID = Likes.ID2 AND
    hs1.ID NOT IN (
        SELECT Friend.ID2
        FROM Friend
        WHERE Friend.ID1 = hs2.ID
    ) AND
    hs3.ID IN (
        SELECT Friend.ID2
        FROM Friend
        WHERE Friend.ID1 = hs1.ID
    ) AND
    hs3.ID IN (
        SELECT Friend.ID2
        FROM Friend
        WHERE Friend.ID1 = hs2.ID
    )
```


<div class="knitsql-table">


Table: 3 records

name      grade  name         grade  name       grade
-------  ------  ----------  ------  --------  ------
Andrew       10  Cassandra        9  Gabriel        9
Austin       11  Jordan          12  Andrew        10
Austin       11  Jordan          12  Kyle          12

</div>

## Question 8

Find the difference between the number of students in the school and the number of different first names.


```sql
SELECT COUNT(DISTINCT ID) - (SELECT COUNT(DISTINCT name) FROM Highschooler)
FROM Highschooler
```


<div class="knitsql-table">


Table: 1 records

|COUNT(DISTINCT ID) - (SELECT COUNT(DISTINCT name) FROM Highschooler) |
|:--------------------------------------------------------------------|
|2                                                                    |

</div>

## Question 9

Find the name and grade of all students who are liked by more than one other student.


```sql
SELECT Highschooler.name, Highschooler.grade
FROM Likes LEFT JOIN Highschooler ON Likes.ID2 = Highschooler.ID
GROUP BY Likes.ID2
HAVING COUNT(Likes.ID1) > 1
```


<div class="knitsql-table">


Table: 2 records

name         grade
----------  ------
Kris            10
Cassandra        9

</div>


