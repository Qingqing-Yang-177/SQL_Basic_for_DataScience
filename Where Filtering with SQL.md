# Where as Filter with SQL
- Baisc Filtering WHERE, BETWEEN
- Advanced Filtering IN, OR, and NOT

## Basic Filter Where clause

    SELECT column name
    FROM table name
    WHERE column name operator value;

The operator could be:

=, <> (not equal), > (Bigger), < (Smaller), >=, <=, BETWEEN xx AND xx (Between an inclusive range), IS NULL (is a null value, no data)

#### Advanced Filtering with Where, using IN, OR, and NOT

**IN**

Nothing about order, could contain another SELECT, Faster than OR

Specifies a range of conditions
     
    SELECT ProductID,
    UnitPrice,
    SupplierID,
    FROM Products
    WHERE SupplierID IN (9, 10, 11);
    
    
**OR**

Order is important

DBMS will not evaluate the second condition in a WHERE clause if the first condition is met

    SELECT ProductName,
    ProductID,
    UnitPrice,
    SupplierID,
    FROM Products
    WHERE ProductName ='Tofu' OR 'Konbu';

**OR with AND**

**SQL process AND before OR**


    SELECT ProductName,
    ProductID,
    UnitPrice,
    SupplierID,
    FROM Products
    WHERE SupplierID =9 OR 11
    AND UnitPrice >15;
    
which equals SupplierID =9 OR (SupplierID =11 AND UnitPrice >15)

The result is diff than:

    SELECT ProductName,
    ProductID,
    UnitPrice,
    SupplierID,
    FROM Products
    WHERE (SupplierID =9 OR 11)
    AND UnitPrice >15;

**NOT**

    SELECT Employees
    WHERE NOT City = 'London' AND NOT City ='Seattle';



