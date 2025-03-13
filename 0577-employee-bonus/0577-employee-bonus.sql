SELECT name, bonus
FROM Employee AS E
LEFT JOIN Bonus AS B
ON E.empID = B.empID
WHERE bonus < 1000 OR bonus IS NULL;