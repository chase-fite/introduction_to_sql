SELECT count() AS '# of songs', artist.ArtistName
FROM Song
JOIN Artist
ON Song.ArtistId = Artist.ArtistId
GROUP BY Song.ArtistId
ORDER BY count() DESC;

SELECT al.title || " by " || ar.artistname
FROM Album al
JOIN Artist ar
ON al.ArtistId = ar.ArtistId;

-- practice chapter 2

SELECT * FROM Song;

SELECT * FROM Album;

SELECT * FROM Artist;

SELECT * FROM Genre;

SELECT s.Title AS 'Song Title', al.Title AS 'Album Title', ar.ArtistName AS 'Artist Name'
FROM Song s
JOIN Album al, Artist ar
ON s.AlbumId = al.AlbumId
AND s.ArtistId = ar.ArtistId
WHERE s.ArtistId = 8
GROUP BY s.Title
ORDER BY s.Title DESC;

SELECT a.Title, s.Title
FROM Album a 
LEFT JOIN Song s 
ON s.AlbumId = a.AlbumId;

SELECT a.Title, s.Title 
FROM Song s
LEFT JOIN Album a 
ON s.AlbumId = a.AlbumId;

SELECT count() AS '# of Songs', al.Title
FROM Song s
JOIN Album al 
ON s.AlbumId = al.AlbumId
GROUP BY s.AlbumId
ORDER BY count();

SELECT count() AS '# of Songs', ar.ArtistName
FROM Song s 
JOIN Artist ar
ON s.ArtistId = ar.ArtistId
GROUP BY s.ArtistId
ORDER BY count();

SELECT count() AS '# of Songs', g.Label
FROM Song s
JOIN Genre g 
ON s.GenreId = g.GenreId
GROUP BY s.GenreId
ORDER BY count();

SELECT MAX(AlbumLength) AS 'AlbumLength', Title
FROM Album;

SELECT MAX(SongLength) AS 'SongLength', Title
FROM Song;

SELECT MAX(SongLength) AS 'SongLength', s.Title AS 'SongTitle', a.Title AS 'AlbumTitle'
FROM Song s
JOIN Album a
ON s.AlbumId = a.AlbumId