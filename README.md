# SQL homework, NBA Style!!

![](https://media.giphy.com/media/3o6gDYD4RxwY8uFot2/giphy.gif)

## Learning Objectives

* Databases
* PostgreSQL

## Resources

* [PostgreSQL Docs](https://www.postgresql.org/docs/9.6/static/index.html)
* [PostgreSQL Tutorial](https://www.tutorialspoint.com/postgresql/index.htm)
* [W3Schools SQL](https://www.w3schools.com/sql/)

## Hints

* In the **Terminal**, `psql` starts a connection to PostgreSQL
* Within **psql**
* **`\l`** lists all of your databases
* **`\c <your database>`** connect to your database
* **`\dt`** displays all tables within current database
* **`\q`** quit psql


## Assignment

We're going to work on our Postgresql skills by practicing basic SQL commands with some ~~outdated~~ NBA data.

### Part 0: Let's look at our files

- We have a csv file, `nba_season_2011-2012` that has NBA data. This data lists the name, age, team, games and points of different NBA players

- We have a file named `schema.sql`. This is where we have defined the structure of our `players` table that will be populated with the data from the csv file

- We also have a `package.json`. This file has a script called `db:setup`. This script will create a database named `nba_db` and will populate the `players` table based on our `schema.sql`. We also have a `db:seed` script that will populate our table with the NBA player csv data

- Our `nba_queries.sql` file is where we will write our queries to get our data.

### Part 1: Database Setup

1. Run `npm run db:setup` to create our database and our `players` table. 

2. Run `npm run db:seed` to populate your `players` table with the csv data. 

3. Remember, you can check by going into postgres and connecting to the `nba_db` database and then displaying all tables

### Part 2 - Basic SQL Queries

- Work in the `nba_queries.sql` file following the instructions that are commented out in the file. Run the file to test your answers by using `psql -d nba_db -f nba_queries.sql`

Some useful things to look up:

* WHERE
* ORDER BY
* LIMIT
* AVG
* SUM
