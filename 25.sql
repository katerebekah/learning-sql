SELECT Track.Name, SUM(InvoiceLine.Quantity) as TotalPurchases FROM Track
JOIN InvoiceLine ON Track.TrackId = InvoiceLine.TrackId
JOIN Invoice ON InvoiceLine.InvoiceId = Invoice.InvoiceId
GROUP BY Track.TrackId
ORDER BY TotalPurchases Desc
LIMIT 5