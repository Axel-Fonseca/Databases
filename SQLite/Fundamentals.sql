SELECT FirstName,Birthdate FROM employees; /*SELECT agarra columnas, FROM agarra tablas*/ 
SELECT title FROM employees;
SELECT DISTINCT title FROM employees;
SELECT * FROM invoices WHERE BillingCity = "Berlin"; /*WHERE aplica filtros*/

SELECT * FROM invoices WHERE Total >= 5;
SELECT * FROM invoices WHERE Total != 0.99;

SELECT * FROM invoices WHERE NOT BillingCity = "Berlin";
SELECT * FROM invoices WHERE BillingCountry = "USA" OR BillingCountry = "United Kingdom";
SELECT * FROM invoices WHERE Total > 0.99 AND Total < 10;
SELECT * FROM invoices WHERE Total = 1.98 OR 3.96;

SELECT * FROM invoices ORDER BY Total;
SELECT * FROM invoices ORDER BY Total DESC;
SELECT * FROM invoices ORDER BY InvoiceDate, Total DESC LIMIT 10;
SELECT * FROM invoices WHERE Total BETWEEN 0.99 AND 10 LIMIT 10;
SELECT * FROM invoices WHERE BillingCountry IN ("USA","United Kingdom") LIMIT 10;
SELECT * FROM invoices WHERE BillingCountry = "USA" AND Total IN (1.98,3.96);
SELECT * FROM invoices WHERE BIllingCountry LIKE "B%" LIMIT 10; /* Consulta con B al inicio*/
SELECT * FROM invoices WHERE BillingAddress LIKE "%B____O%";

SELECT InvoiceId, BillingAddress, Total FROM invoices WHERE Total BETWEEN 14 AND 18 ORDER BY Total ASC LIMIT 10;

SELECT TrackId, Name, Title FROM tracks t INNER JOIN albums a ON t.AlbumId = a.AlbumId;
SELECT AlbumId, Name, TItle FROM artists a LEFT OUTER JOIN albums ab ON a.ArtistId = ab.ArtistId;
SELECT AlbumId, Name, Title FROM artists a CROSS JOIN albums ab;

SELECT sum(Total) FROM invoices;
SELECT avg(Total) FROM invoices;
SELECT min(Total) FROM invoices;
SELECT count(Total) FROM invoices;
SELECT CustomerId, sum(Total) FROM invoices GROUP BY CustomerId;
SELECT CustomerId, InvoiceDate, min(Total), max(Total) FROM invoices GROUP BY CustomerId, InvoiceDate;
SELECT CustomerId, count(*) FROM invoices GROUP BY CustomerId;