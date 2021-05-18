Select pc.ProductCategoryID 
     , pc.Name
  From SalesLt.ProductCategory As PC

-- data수 295개
-- product category를 기준으로 outer join하면 299 (Null이4개라는뜻)
Select pd.Name AS ProductName, pd.ProductNumber
     , pd.Color, pd.StandardCost
	 , pd.ListPrice, pd.size, pd.Weight
	 , pc.ProductCategoryID
	 , pc.Name AS ProductCategoryName
  From SalesLT.Product As Pd

 INNER JOIN SalesLT.ProductCategory AS PC
	ON pd.ProductCategoryID = pc.ProductCategoryID

-- customer 847개, address 450개, CustomerAddress 417개
-- 1
Select concat(c.Title, ' ', c.FirstName,' ', c.MiddleName , ' ', c.LastName ) AS Fullname
     , c.CompanyName, c.EmailAddress, c.Phone
  From SalesLT.Customer AS c

-- 2
Select ad.AddressID 
     , ad.PostalCode
     , CONCAT(ad.AddressLine1,' ', ad.AddressLine2,' ', ad.City, ' ,', ad.StateProvince) As addr
	 , ad.CountryRegion
  From SalesLT.Address As ad

-- 3
Select ca.CustomerID, ca.AddressID, ca.AddressType 
  From SalesLT.CustomerAddress AS ca

-- 최종쿼리
Select concat(c.Title, ' ', c.FirstName,' ', c.MiddleName , ' ', c.LastName ) AS Fullname
     , c.CompanyName, c.EmailAddress, c.Phone
	 , ad.AddressID
	 , ad.PostalCode
	 , ad.CountryRegion
  From SalesLT.Customer AS c
 INNER JOIN SalesLT.CustomerAddress AS ca
    ON c.CustomerID = ca.CustomerID
 INNER JOIN SalesLT.Address AS ad
	ON ad.AddressID = ca.AddressID