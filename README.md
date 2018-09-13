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

### Part 1 - Create and run the SQL seed file

We've already written the script for you to create and recreate a database. All you have to do is define the table structure ([schema](https://en.wikipedia.org/wiki/Database_schema)), and practice the queries.

1. Open `package.json` and look for the "scripts" section. 
You'll find two commands that will be very useful to this exercise:

  - `db:setup`  (actually 3 commands)
    
    ```bash
    dropdb --if-exists nba_db       # drops a db called "nba_db" (if it exists)
    
    createdb nba_db                 # creates a db called "nba_db"
    
    psql -d nba_db -f ./schema.sql  # executes the schema.sql file on the db "nba_db" 
    ```

  - `db:seed` is a long command which copies the player csv data into the table naming the 5 fields : 
  
  ```bash
  $ psql -d nba_db -c \copy players(name, age, team, games, points) FROM './nba_season_2011-2012.csv' delimiter ',' csv 
  ```



. Open `schema.sql` in your editor of choice


3. Enter **PSQL** commands to complete the following objectives:

* Create a table called `players` with columns for

  * `name`
  * `age`
  * `team`
  * `games`
  * `points`

  **HINT**


### Part 2 - Basic SQL Queries

**For Part 2, work in the `nba_queries.sql` file. Run the file to test your answers by using `psql -f nba_queries.sql`**

Some of the prompts may go a little further than what we saw in class, but should be very easy to Google and figure out. Some useful things to look up:

* WHERE
* ORDER BY
* LIMIT
* AVG
* SUM
