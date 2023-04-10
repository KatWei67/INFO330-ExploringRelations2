-- Find tracks (id, name, and composer) that have never been purchased (that is, they aren't part of a line item in an invoice).
SELECT tracks.TrackId AS id, tracks.Name AS name, tracks.Composer AS composer FROM tracks 
LEFT JOIN invoice_items ON tracks.TrackId = invoice_items.TrackId 
WHERE invoice_items.InvoiceId IS NULL;
