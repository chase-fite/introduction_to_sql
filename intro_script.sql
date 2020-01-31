SELECT * FROM Song;

SELECT * FROM Genre;

SELECT * FROM Artist;

INSERT INTO Artist
VALUES (null, "Slipknot", 1990);

SELECT * FROM Album;

INSERT INTO Album
VALUES (null, "Slipknot", "01/01/1999", 2600, "Roadrunner Records", 28, 5);

INSERT INTO Song
VALUES (null, "Eyeless", 200, "01/01/1999", 5, 25, 23);

-- I inserted the wrong ArtistId

UPDATE Song
SET ArtistId = 28
WHERE SongId = 22;

-- inserting a second song

INSERT INTO Song
VALUES (null, "Wait and Bleed", 201, "01/01/1999", 5, 28, 23);

SELECT a.Title, s.Title
FROM Album a 
LEFT JOIN Song s
ON s.AlbumId = a.AlbumId;

SELECT a.Title, s.Title
FROM Song s
LEFT JOIN Album a
ON s.AlbumId = a.AlbumId;