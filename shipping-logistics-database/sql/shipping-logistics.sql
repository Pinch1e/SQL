CREATE TABLE Customer (
    CustomerID VARCHAR2(20) PRIMARY KEY,
    CustomerName VARCHAR2(100) NOT NULL,
    Email VARCHAR2(100) NOT NULL,
    PhoneNumber VARCHAR2(30) NOT NULL,
    Address VARCHAR2(100) NOT NULL
);

CREATE TABLE Shipment (
    ShipmentID VARCHAR2(20) PRIMARY KEY,
    CustomerID VARCHAR2(20) NOT NULL,
    Origin VARCHAR2(100) NOT NULL,
    Destination VARCHAR2(100) NOT NULL,
    ShipmentDate DATE NOT NULL,
    ShipmentStatus VARCHAR2(30) NOT NULL,
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
);

CREATE TABLE AirwayBill (
    AirwayBillID VARCHAR2(20) PRIMARY KEY,
    ShipmentID VARCHAR2(20) NOT NULL,
    AirwayBillNumber VARCHAR2(30) NOT NULL,
    IssueDate DATE NOT NULL,
    FOREIGN KEY (ShipmentID) REFERENCES Shipment(ShipmentID)
);
