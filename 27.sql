SELECT MediaType.Name, SUM(Track.MediaTypeId) as TotalPurchases FROM Track
JOIN InvoiceLine ON Track.TrackId = InvoiceLine.TrackId
JOIN MediaType ON Track.MediaTypeId = MediaType.MediaTypeId
GROUP BY MediaType.MediaTypeId
ORDER BY TotalPurchases Desc
LIMIT 1;