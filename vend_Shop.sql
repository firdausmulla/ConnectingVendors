create table Shop(
[ShopID] INT NOT NULL UNIQUE,
[Shop Name] VARCHAR(50) NULL,
[Shop Category] VARCHAR(50) NULL,
[Email-Id] VARCHAR(100) NOT NULL UNIQUE,
[Address] VARCHAR(100) NULL,
[State]  VARCHAR(50) NULL,
[City] VARCHAR(50) NULL,
[Contact Details] VARCHAR(50) NULL,
[Available Hours: From] Time NOT NULL,
[Available Hours: To] Time NOT NULL,
[Username] VARCHAR(50) NOT NULL UNIQUE,
[Password] VARCHAR(50) NOT NULL,
PRIMARY KEY (ShopID)
)	

create table ShopItems(
[ItemID] INT NOT NULL UNIQUE,
[ShopID] INT NOT NULL,
[Item Name] VARCHAR(50) NULL,
[Item Quantity] INT NULL,
[Price] MONEY NULL,
PRIMARY KEY (ItemID),
FOREIGN KEY (ShopID) REFERENCES Shop(ShopID)
)	