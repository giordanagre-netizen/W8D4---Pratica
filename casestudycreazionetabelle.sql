CREATE TABLE Category (
    CategoryID   INT PRIMARY KEY,
    CategoryName VARCHAR(100) NOT NULL
);

CREATE TABLE Product (
    ProductID   INT PRIMARY KEY,
    ProductName VARCHAR(200) NOT NULL,
    UnitPrice   DECIMAL(10,2),
    CategoryID  INT,
    FOREIGN KEY (CategoryID) REFERENCES Category(CategoryID)
);

CREATE TABLE SalesRegion (
    SalesRegionID   INT PRIMARY KEY,
    SalesRegionName VARCHAR(100) NOT NULL
);

CREATE TABLE State (
    StateID       INT PRIMARY KEY,
    StateName     VARCHAR(100) NOT NULL,
    SalesRegionID INT,
    FOREIGN KEY (SalesRegionID) REFERENCES SalesRegion(SalesRegionID)
);

CREATE TABLE Sales (
    OrderID   INT PRIMARY KEY,
    OrderDate DATE,
    Quantity  INT,
    ProductID INT,
    StateID   INT,
    FOREIGN KEY (ProductID) REFERENCES Product(ProductID),
    FOREIGN KEY (StateID)   REFERENCES State(StateID)
);