-- exercice 1

SELECT CompanyName As "sociéte",
   ContactName As "contact",
   ContactTitle AS "Fonction",
   Phone As "Télephone"
FROM Customers
where Country='France';
-- execice 2

SELECT ProductName AS "produit",
   UnitPrice AS"Prix"
 FROM Products
 where SupplierID=1;
-- exercice 3

SELECT suppliers As "fournisseur",
COUNT(ProduitID)As "NBRE_produits"
From Suppliers,Products
Where country =France AND
Products.SupplierID =Supplier.SupplierID 
GROUP BY CompanyName
ORDER BY COUNT (ProduitID))DESC;
-- execice4

SELECT CompanyName As "client",
COUNT(OrderId) As "nbre_commandes"
From Customers, orders
Where country=france AND
Customers.CustomerID=Orders.CustomerID
Group BY CompanyName
HAVING COUNT(OrderID)> 10 ;
-- exercice 5

SELECT CompanyName AS "client",
SUM (UnitPrice*Quantity) AS" CA",
Country AS "pays"
FROM Customers,Orders,`order details`
Where Orders.CustomerID= Customers.CustomerID
AND Orders.OrderID=`order details`.OrderID
Group BY CompanyName,Country
HAVING CA>30000 
-- exercice 6

Select customer.Coutry AS "Pays"
From Custmoers,Orders,  `order details`,Products,Suppliers
Where Customers.CustomerID=Orders.CustomerID
AND Orders.OrderID=`order details`.OrderID
AND `order details`.ProductID=Products.ProductID 
AND Products.SupplierID=Suppliers.SupplierID
AND Suppliers.CompanyName="Exotic_Liquids"
Group BY Country;
-- Exercice 7

Select SUM (UnitPrice*Quantity)AS "Montant_ventes_97"
FROM `order details`,orders
Where `order details`.orderID=orders.orderID
AND YEAR(orderdate)=1997
-- Execice 8

Select SUM (UnitPrice*Quantity)As "Montant ventes 97"
FROM `order details`,orders
Where  `order details`.orderID=orders.orderID
AND YEAR(orderdate)=1997
Group BY Month (orderdate);
-- Exercice 9

Select Orderdate AS 'DATE de derniere commande'
From customers,orders
WHERE CompanyName = "Du monde entier"
AND customers.CustomerID = orders.CustomerID;
-- Exercice10

SELECT
ROUND(AVG(DATEDIFF(ShippedDate,ShippedDate))) AS "Délai moyen de livraison en jours"
FROM orders;












