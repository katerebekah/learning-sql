SELECT I.InvoiceId, I.CustomerId, I.InvoiceDate, I. BillingAddress, I.BillingCity, I.BillingState, I.BillingCountry, I.BillingPostalCode, I.Total, COUNT(IL.InvoiceLineId) as 'Total Tracks' FROM Invoice as I JOIN InvoiceLine IL ON I.InvoiceId = IL.InvoiceId GROUP BY I.InvoiceId;