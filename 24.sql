SELECT Track.Name, SUM(InvoiceLine.Quantity) AS 'Number of Purchases' FROM Track
JOIN InvoiceLine ON Track.TrackId = InvoiceLine.TrackId
JOIN Invoice ON InvoiceLine.InvoiceId = Invoice.InvoiceId
WHERE Invoice.InvoiceDate BETWEEN '2013-1-1' and '2013-12-31'
GROUP BY Track.TrackId;