SELECT
    OrderID,
    orderDate,
    CustomerID,
    EmployeeID,
    storeID,
    status as StatusCD,
    /*CASE 
        WHEN status = 1 THEN 'In Progress'
        WHEN status = 2 THEN 'Completed'
        WHEN status = 3 THEN 'Cancelled'
        ELSE null
    END AS StatusDesc,*/
    Updated_at
FROM
    L1_LANDING.ORDERS
