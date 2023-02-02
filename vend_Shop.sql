create table Vendors(
[VendID] INT NOT NULL UNIQUE,
[Vendor Name] VARCHAR(50) NULL,
[Email-Id] VARCHAR(100) NOT NULL UNIQUE,
[Resd Addr] VARCHAR(100) NULL,
[State] VARCHAR(50) NULL,
[City] VARCHAR(50) NULL,
[Contact Details] VARCHAR(50) NULL,
PRIMARY KEY (VendID)
)

create table Shop(
[ShopID] INT NOT NULL UNIQUE,
[VendID] INT NOT NULL UNIQUE,
[ShopName] VARCHAR(50) NULL,
[VendorName] VARCHAR(50) NULL,
[Shop Category] VARCHAR(50) NULL,
[Email-Id] VARCHAR(100) NOT NULL,
[Address] VARCHAR(100) NULL,
[State]  VARCHAR(50) NULL,
[City] VARCHAR(50) NULL,
[Contact Details] VARCHAR(50) NULL,
[Available Hours: From] Time NOT NULL,
[Available Hours: To] Time NOT NULL,
[Username] VARCHAR(50) NOT NULL UNIQUE,
[Password] VARCHAR(50) NOT NULL,
PRIMARY KEY (ShopID),
FOREIGN KEY (VendID) REFERENCES Vendors(VendID)
)	

create table ShopItems(
[ItemID] INT NOT NULL UNIQUE,
[ShopID] INT NOT NULL UNIQUE,
[Item Name] VARCHAR(50) NULL,
[Item Quantity] INT NULL,
[Price] MONEY NULL,
PRIMARY KEY (ItemID),
FOREIGN KEY (ShopID) REFERENCES Shop(ShopID)
)

create table Users(
[UID] INT NOT NULL UNIQUE,
[Name] VARCHAR(50) NOT NULL,
[Email-Id] VARCHAR(100) NOT NULL UNIQUE,
[Address] VARCHAR(100) NULL,
[Contact_one] VARCHAR(50) NULL,
[Contact_two] VARCHAR(50) NULL,
[Username] VARCHAR(50) NOT NULL UNIQUE,
[Password] VARCHAR(50) NOT NULL,
PRIMARY KEY (UID)
)

