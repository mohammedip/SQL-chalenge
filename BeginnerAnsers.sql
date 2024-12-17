<--1-->

select * from shippers

--2

SELECT CategoryName,Description FROM Categories

--3

select FirstName,LastName,HireDate from employees where Title="Sales Representative"

--4

select FirstName,LastName,HireDate from employees where Title="Sales Representative" and Country="USA"

--5

select * from orders where EmployeeID=5

--6

select SupplierID,ContactName,ContactTitle from suppliers where ContactTitle<>"Marketing Manager"

--7

select ProductID,ProductName from products where ProductName like '%queso%';

--8

select OrderID,CustomerID,ShipCountry from Orders where ShipCountry IN ('France','Belgium')

--9

select OrderID,CustomerID,ShipCountry from Orders where ShipCountry IN ('Brazil','Mexico','Argentina','Venezuela') 

--10

select FirstName, LastName ,Title,BirthDate from employees ORDER BY `BirthDate`

--11

select FirstName, LastName ,Title, DATE(BirthDate) from employees ORDER BY `BirthDate`

--12

select FirstName,LastName,CONCAT(FirstName,' ',LastName) from Employees

--13

select OrderID,ProductID,UnitPrice,Quantity,(UnitPrice*Quantity) as TotalPrice from orderdetails ORDER BY `OrderID` and `ProductID`

--14

SELECT count(CustomerID) as TotalCustomers from Customers

--15
select OrderDate as FirstOrder from orders limit 1

--16
SELECT Country from customers GROUP BY Country

--17

SELECT ContactTitle , count(ContactTitle) as count from Customers GROUP BY `ContactTitle`

--18

select ProductID,ProductName,suppliers.`CompanyName` as Supplier from products JOIN suppliers on products.`SupplierID`=suppliers.`SupplierID` GROUP BY `ProductID`

--19

select OrderID,DATE(OrderDate),(shippers.`CompanyName`) as shippers from orders JOIN shippers on orders.`ShipVia`=shippers.`ShipperID` GROUP BY `OrderID`
