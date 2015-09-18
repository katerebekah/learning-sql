SELECT Employee.FirstName, Employee.LastName, SUM(Invoice.Total) FROM Invoice 
JOIN Customer on Invoice.CustomerId = Customer.CustomerId
JOIN Employee on Customer.SupportRepId = Employee.EmployeeId
GROUP BY Employee.EmployeeId