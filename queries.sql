-- Query all of the entries in the Genre table

select * from genre

-- Using the INSERT statement, add one of your favorite artists to the Artist table.

INSERT INTO Artist VALUES (null, "Metallica", 1975)

-- Using the INSERT statement, add one, or more, albums by your artist to the Album table.

INSERT INTO Album ("Title", "ReleaseDate", "AlbumLength", "Label", "ArtistId", "GenreId")
SELECT "Master of Puppets", 1977, 1890, "Sony", ar.ArtistId, g.GenreId
from Artist ar, Genre g
where ar.ArtistName = "Metallica"
and g.Label = "Rock"

-- Using the INSERT statement, add some songs that are on that album to the Song table.

INSERT INTO Song ("Title", "ReleaseDate", "SongLength", "ArtistId", "GenreId", "AlbumId")
SELECT "Master of Puppets", 1977, 300, ar.ArtistId, g.GenreId, al.AlbumId
from Artist ar, Genre g, Album al
where ar.ArtistName = "Metallica"
and g.Label = "Rock"
and al.Title = "Master of Puppets"

-- Write a SELECT query that provides the song titles, album title, and artist name for all of the data you just entered in. Use the LEFT JOIN keyword sequence to connect the tables, and the WHERE keyword to filter the results to the album and artist you added. Here is some more info on joins that might help.

SELECT Artist.ArtistName AS " Artist Name", Song.Title AS "Song Title", Album.Title AS "Album Title"
FROM Song
JOIN Album
ON Song.ArtistId = Album.ArtistId
JOIN Artist
ON Artist.ArtistId = Song.ArtistId
WHERE Artist.ArtistName = "Metallica"

-- Reminder: Direction of join matters. Try the following statements and see the difference in results.

-- SELECT a.Title, s.Title FROM Album a LEFT JOIN Song s ON s.AlbumId = a.AlbumId;
-- SELECT a.Title, s.Title FROM Song s LEFT JOIN Album a ON s.AlbumId = a.AlbumId;

-- Write a SELECT statement to display how many songs exist for each album. You'll need to use the COUNT() function and the GROUP BY keyword sequence.

SELECT COUNT(Song.AlbumId), Album.Title
FROM Song
JOIN Album
ON Album.AlbumId = Song.AlbumId
GROUP BY Album.Title

-- Write a SELECT statement to display how many songs exist for each artist. You'll need to use the COUNT() function and the GROUP BY keyword sequence.

SELECT COUNT(Song.Title), Artist.ArtistName
FROM Song
JOIN Artist
ON Artist.ArtistId = Song.ArtistId
GROUP BY Artist.ArtistName


-- Write a SELECT statement to display how many songs exist for each genre. You'll need to use the COUNT() function and the GROUP BY keyword sequence.

select count(Song.Title), Genre.Label
from Song
Join Genre
ON Genre.GenreId = Song.GenreId
group by Genre.Label

-- Using MAX() function, write a select statement to find the album with the longest duration. The result should display the album title and the duration.

select MAX(Album.AlbumLength)  "Longest Album", ALbum.Title
 from Album

-- Using MAX() function, write a select statement to find the song with the longest duration. The result should display the song title and the duration.

select MAX(Song.SongLength)  "Longest Song", Song.Title
 from Song

-- Modify the previous query to also display the title of the album.