# Node-SQL-queries-Music-History

# Setup

Create a file called queries.sql

# Note: The .sql extension is common practice for files storing SQL queries

Talking to a Database
SQL Statements
SQL keywords are written in CAPS

Basic Structure of a SQL statement: SELECT ______ FROM ______ JOIN ______ ON ______ WHERE ______

Example: SELECT * FROM employees WHERE name LIKE ‘b%’

LIKE means “matches a pattern” and % means “starts with” (wildcard).
Example 2: SELECT products.id, products.name FROM order_details JOIN products ON order_details.product_id = products.id WHERE order_details.order_id = 10250

# Joins

http://blog.codinghorror.com/a-visual-explanation-of-sql-joins/
With a join, you must specify how the table is joined using ON. Otherwise, you will get all the combinations possible of one table row matched with another table row.
Inner Join matches one table with another table row for row. If one row doesn’t have its pair on another table, it will be excluded. It will only show matching row pairs.
Outer Join matches two tables row for row but includes rows that are not paired up, aka rows that have a pair with a null in the other table.
Instructions
Open up the database file in the DB Browser for SQLite application to see it
Copy and paste the queries below into your queries.sql file and comment them out. Then you can write a query for each requrement and refer back to them later as a resource
When you have written a query, paste it into DB Browser and test it by clicking the tab labeled "Execute SQL"
For each of the following exercises, provide the appropriate query. Everything from class and the Sqlite documentation for SQL keywords and functions is fair game.

Query all of the entries in the Genre table

Using the INSERT statement, add one of your favorite artists to the Artist table.

Using the INSERT statement, add one, or more, albums by your artist to the Album table.

Using the INSERT statement, add some songs that are on that album to the Song table.

Write a SELECT query that provides the song titles, album title, and artist name for all of the data you just entered in. Use the LEFT JOIN keyword sequence to connect the tables, and the WHERE keyword to filter the results to the album and artist you added. Here is some more info on joins that might help.

# Reminder: Direction of join matters. Try the following statements and see the difference in results.

SELECT a.Title, s.Title FROM Album a LEFT JOIN Song s ON s.AlbumId = a.AlbumId;
SELECT a.Title, s.Title FROM Song s LEFT JOIN Album a ON s.AlbumId = a.AlbumId;
Write a SELECT statement to display how many songs exist for each album. You'll need to use the COUNT() function and the GROUP BY keyword sequence.

Write a SELECT statement to display how many songs exist for each artist. You'll need to use the COUNT() function and the GROUP BY keyword sequence.

Write a SELECT statement to display how many songs exist for each genre. You'll need to use the COUNT() function and the GROUP BY keyword sequence.

Using MAX() function, write a select statement to find the album with the longest duration. The result should display the album title and the duration.

Using MAX() function, write a select statement to find the song with the longest duration. The result should display the song title and the duration.

Modify the previous query to also display the title of the album.

