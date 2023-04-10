-- Show the customer's full name, Invoice ID, Date of the invoice and billing country of customers who are from Brazil.
SELECT customers.FirstName || '' || customers.LastName AS FullName,
invoices.InvoiceId, invoices.InvoiceDate, invoices.BillingCountry 
FROM customers INNER JOIN invoices ON customers.CustomerId = invoices.CustomerID 
WHERE customers.Country = 'Brazil';
