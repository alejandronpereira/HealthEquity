USE HealthEquity
GO

SELECT CU.FirstName + ' ' + CU.LastName AS 'Full Name',
CU.AGE,ORD.ORDERID, 
ORD.DateCreated,
ORD.MethodOfPurchase AS 'Purchase Method', 
ORDDET.ProductNumber, 
ORDDET.ProductOrigin 
FROM CUSTOMER CU 
INNER JOIN ORDERS ORD ON CU.PersonId = ORD.PersonId
INNER JOIN ORDERSDETAILS ORDDET ON ORD.OrderId = ORDDET.OrderId
WHERE ORDDET.ProductId = 1112222333
