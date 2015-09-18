Select i.InvoiceLineId, i.InvoiceId, t.Name as 'Track Name', al.Title as 
'Album Title', ar.Name as 'Artist Name' FROM InvoiceLine AS i
INNER JOIN Track as t ON i.TrackId = t.TrackId
INNER JOIN Album as al ON t.AlbumId = al.AlbumId
INNER JOIN Artist as ar ON al.ArtistId = ar.ArtistId;