SELECT
    O.OrderID,
    O.OrderDate,
    O.CustomerID,
    O.EmployeeID,
    O.storeID,
    O.StatusCD,
    --O.StatusDesc,
    O.Updated_at,
    COUNT(DISTINCT O.OrderID) AS OredrCount,
    SUM(OI.TotalPrice) AS Revenue
FROM
    {{ref('orders_stg')}} O
JOIN
    {{ref('orderitems_stg')}} OI ON O.OrderID = OI.OrderID
GROUP BY
    O.OrderID,
    O.OrderDate,
    O.CustomerID,
    O.EmployeeID,
    O.storeID,
    O.StatusCD,
    --O.StatusDesc,
    O.Updated_at