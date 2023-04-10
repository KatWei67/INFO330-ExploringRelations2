-- Find tracks (id, name and composer) that are part of a line in an invoice.
SELECT tracks.TrackId AS id, tracks.Name AS name, tracks.Composer AS composer FROM tracks 
INNER JOIN invoice_items ON tracks.TrackId = invoice_items.TrackId;
