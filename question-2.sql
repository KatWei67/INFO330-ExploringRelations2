-- Show the sales agent's full name and invoices associated with each sales agent.
SELECT employees.FirstName || '' || employees.LastName AS FullName, invoices.InvoiceId 
FROM employees INNER 
JOIN customers ON employees.EmployeeId = customers.SupportRepId INNER 
JOIN invoices ON customers.CustomerId = invoices.CustomerId;
