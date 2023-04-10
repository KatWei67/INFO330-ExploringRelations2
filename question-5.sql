-- What was the most purchased track of 2013?
SELECT tracks.Name, SUM(tracks.Name) AS total_purchased FROM tracks 
INNER JOIN invoice_items ON tracks.TrackId = invoice_items.TrackId 
INNER JOIN invoices ON invoices.InvoiceId = invoice_items.InvoiceId 
GROUP BY tracks.TrackId 
ORDER BY total_purchased DESC
