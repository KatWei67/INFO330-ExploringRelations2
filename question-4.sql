-- Which sales agent made the most in sales in 2010?
SELECT employees.FirstName || ' ' || employees.LastName AS sale_agent, 
SUM(invoices.Total) AS total_sales FROM employees 
INNER JOIN customers ON employees.EmployeeId = customers.SupportRepId 
INNER JOIN invoices ON customers.CustomerId = invoices.CustomerId 
WHERE strftime('%Y', invoices.InvoiceDate) = '2010' 
GROUP BY employees.EmployeeId 
ORDER BY total_sales DESC;
-- JanePeacock made the most in sales in 2010
