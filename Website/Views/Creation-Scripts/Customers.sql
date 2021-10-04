CREATE VIEW Website.Customers
AS
SELECT   TOP (100) PERCENT s.CustomerID, s.CustomerName, sc.CustomerCategoryName, pp.FullName AS PrimaryContact, ap.FullName AS AlternateContact, s.PhoneNumber, s.FaxNumber, 
                         bg.BuyingGroupName, s.WebsiteURL, dm.DeliveryMethodName AS DeliveryMethod, c.CityName, s.DeliveryLocation, s.DeliveryRun, s.RunPosition
FROM         Sales.Customers AS s LEFT OUTER JOIN
                         Sales.CustomerCategories AS sc ON s.CustomerCategoryID = sc.CustomerCategoryID LEFT OUTER JOIN
                         Application.People AS pp ON s.PrimaryContactPersonID = pp.PersonID LEFT OUTER JOIN
                         Application.People AS ap ON s.AlternateContactPersonID = ap.PersonID LEFT OUTER JOIN
                         Sales.BuyingGroups AS bg ON s.BuyingGroupID = bg.BuyingGroupID LEFT OUTER JOIN
                         Application.DeliveryMethods AS dm ON s.DeliveryMethodID = dm.DeliveryMethodID LEFT OUTER JOIN
                         Application.Cities AS c ON s.DeliveryCityID = c.CityID
ORDER BY s.WebsiteURL