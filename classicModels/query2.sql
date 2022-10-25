USE classicmodels;

SELECT oc.country, oc.city, CONCAT(e.firstName, ' ', e.lastName), SUM(py.amount)
FROM customers c
JOIN payments py ON py.customerNumber = c.customerNumber AND DATE(py.paymentDate) >  "2004-12-15"
JOIN employees e ON e.employeeNumber = c.salesRepEmployeeNumber
JOIN offices oc ON oc.officeCode = e.officeCode
GROUP BY e.employeeNumber
ORDER BY oc.country DESC