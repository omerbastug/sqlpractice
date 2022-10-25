USE classicmodels;

SELECT c.customerName, p.productCode, SUM(od.quantityOrdered) AS quantity_ordered
FROM customers c
JOIN orders o ON o.customerNumber = c.customerNumber
JOIN orderdetails od ON od.orderNumber = o.orderNumber
JOIN products p ON od.productCode = p.productCode
JOIN payments py ON py.customerNumber = c.customerNumber
GROUP BY c.customerNumber,p.productCode
ORDER BY quantity_ordered DESC