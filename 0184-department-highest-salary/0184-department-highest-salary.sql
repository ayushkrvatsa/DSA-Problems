SELECT E.name as Employee, D.name as Department, E.salary as Salary
FROM Employee E
INNER JOIN Department D
ON E.departmentId = D.id
WHERE E.salary = (
    SELECT Max(E2.Salary)
    FROM Employee E2
    WHERE E.departmentId = E2.departmentId
)

