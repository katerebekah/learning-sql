SELECT T.Name AS 'Track Name', A.Title AS 'Album Title', M.Name AS 'Media Type', G.Name AS 'Genre' FROM Track AS T 
JOIN Album AS A ON T.AlbumId= A.AlbumId
JOIN MediaType AS M ON T.MediaTypeId = M.MediaTypeId
JOIN Genre AS G ON T.GenreId = G.GenreId;