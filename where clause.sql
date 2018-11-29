--List Name of Employee beginning with a
select * from HumanResources.vEmployeeDepartment
where FirstName like 'a%'

--Find Engineer and Manager from all department
select * from HumanResources.vEmployeeDepartment
where JobTitle  like '%Eng%' or JobTitle like '%Man%'

--List of Upper Management
select * from HumanResources.Employee
where OrganizationLevel < '2'

--Find Orders till 15 June in June
select * from Sales.SalesOrderHeader
where OrderDate between '2011-06-01' and '2011-06-15'

--Find orders with Territory 1 and 3
select * from Sales.SalesOrderHeader
where TerritoryID in (1,3) 

--Find Sales Person that have salesquota 
select * from Sales.SalesPerson
where SalesQuota is not null


