
-- DROP DATABASE nếu đã tồn tại
IF EXISTS (SELECT name FROM sys.databases WHERE name = N'BookStoreDB')
BEGIN
    ALTER DATABASE BookStoreDB SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE BookStoreDB;
END

-- Tạo mới database
CREATE DATABASE BookStoreDB;
GO

-- Sử dụng database vừa tạo
USE BookStoreDB;
GO


CREATE TABLE Addresses (
  AddressID int IDENTITY NOT NULL, 
  Address   varchar(255) NULL, 
  FullName  varchar(255) NULL, 
  Phone     varchar(255) NULL, 
  Province  varchar(255) NULL, 
  District  varbinary(2000) NULL, 
  Ward      varchar(255) NULL, 
  Street    varchar(255) NULL, 
  IsDefault bit NULL, 
  CreatedAt date NULL, 
  UserID    int NOT NULL, 
  PRIMARY KEY (AddressID));
CREATE TABLE Authors (
  AuthorID   int IDENTITY NOT NULL, 
  AuthorName varchar(255) NOT NULL, 
  Biography  varchar(1000) NULL, 
  PRIMARY KEY (AuthorID));
CREATE TABLE BookImages (
  ImageID  int IDENTITY NOT NULL, 
  ImageUrl varchar(255) NULL, 
  IsCover  bit NULL, 
  BookID   int NOT NULL, 
  PRIMARY KEY (ImageID));
CREATE TABLE BookPublishers (
  Role        varchar(255) NULL, 
  BookID      int NOT NULL, 
  PublisherID int NOT NULL);
CREATE TABLE Books (
  BookID      int IDENTITY NOT NULL, 
  Price       float(10) NOT NULL, 
  Title       varchar(255) NOT NULL, 
  Description varchar(255) NULL, 
  Stock       int NULL, 
  CreatedAt   date NOT NULL, 
  CategoryID  int NOT NULL, 
  AuthorID    int NOT NULL, 
  PRIMARY KEY (BookID));
CREATE TABLE Categories (
  CategoryID   int IDENTITY NOT NULL, 
  CategoryName varchar(255) NULL, 
  Description  varchar(255) NULL, 
  PRIMARY KEY (CategoryID));
CREATE TABLE OrderDetails (
  OrderDetailID       int IDENTITY NOT NULL, 
  OrderID             int NOT NULL, 
  BookID              int NOT NULL, 
  Quantity            int NOT NULL, 
  UnitPrice           float(10) NOT NULL, 
  OrdersPaymentMethod varchar(255) NOT NULL, 
  PRIMARY KEY (OrderDetailID));
CREATE TABLE Orders (
  OrderID       int IDENTITY NOT NULL, 
  UserID        int NOT NULL, 
  AddressID     int NOT NULL, 
  OrderStatus   varchar(255) NULL, 
  TotalAmount   float(10) NULL, 
  PaymentMethod varchar(255) NOT NULL, 
  CreatedDate   date NOT NULL, 
  UpdatedDate   date NOT NULL, 
  PRIMARY KEY (OrderID));
CREATE TABLE Payments (
  PaymentID           int IDENTITY NOT NULL, 
  PaymentMethod       varchar(255) NULL, 
  PaymentStatus       varchar(255) NOT NULL, 
  TransactionCode     varchar(255) NOT NULL UNIQUE, 
  Amount              float(10) NOT NULL, 
  PaymentDate         date NOT NULL, 
  CreatedDate         date NOT NULL, 
  OrderID             int NOT NULL, 
  UserID              int NOT NULL, 
  OrdersPaymentMethod int NOT NULL, 
  PRIMARY KEY (PaymentID));
CREATE TABLE Permission (
  PermissionID  int IDENTITY NOT NULL, 
  PermissionKey varchar(255) NOT NULL, 
  Description   varchar(255) NOT NULL, 
  PRIMARY KEY (PermissionID));
CREATE TABLE Publishers (
  PublisherID   int IDENTITY NOT NULL, 
  PublisherName varchar(255) NOT NULL, 
  Address       varchar(255) NULL, 
  PRIMARY KEY (PublisherID));
CREATE TABLE ReviewMedia (
  MediaID   int IDENTITY NOT NULL, 
  ReviewID  int NOT NULL, 
  MediaUrl  varchar(255) NULL, 
  MediaType varchar(255) NULL, 
  PRIMARY KEY (MediaID));
CREATE TABLE Reviews (
  ReviewID   int IDENTITY NOT NULL, 
  Rating     int NULL, 
  Comment    varchar(255) NULL, 
  CreatedAt  date NOT NULL, 
  IsApproved bit NULL, 
  BookID     int NOT NULL, 
  UserID     int NOT NULL, 
  PRIMARY KEY (ReviewID));
CREATE TABLE RolePermissions (
  RoleID       int NOT NULL, 
  PermissionID int NOT NULL);
CREATE TABLE Roles (
  RoleID      int IDENTITY NOT NULL, 
  RoleName    varchar(255) NULL, 
  Description varchar(255) NULL, 
  PRIMARY KEY (RoleID));
CREATE TABLE SystemLogs (
  LogId     int IDENTITY NOT NULL, 
  UserID    int NOT NULL, 
  Action    varchar(255) NULL, 
  Message   varchar(255) NULL, 
  Data      varchar(255) NULL, 
  CreatedAt date NOT NULL, 
  PRIMARY KEY (LogId));
CREATE TABLE UserRoles (
  UserID int NOT NULL, 
  RoleID int NOT NULL);
CREATE TABLE Users (
  UserID           int IDENTITY NOT NULL, 
  UserName         varchar(255) NOT NULL UNIQUE, 
  Email            varchar(255) NOT NULL UNIQUE, 
  PassWordHash     varchar(255) NOT NULL, 
  FullName         varchar(255) NOT NULL, 
  Phone            varchar(255) NOT NULL, 
  IsEmailConfirmed bit NULL, 
  AvatarUrl        varchar(255) NULL, 
  PRIMARY KEY (UserID));
ALTER TABLE UserRoles ADD CONSTRAINT FKUserRoles959420 FOREIGN KEY (UserID) REFERENCES Users (UserID);
ALTER TABLE UserRoles ADD CONSTRAINT FKUserRoles613991 FOREIGN KEY (RoleID) REFERENCES Roles (RoleID);
ALTER TABLE RolePermissions ADD CONSTRAINT FKRolePermis48370 FOREIGN KEY (RoleID) REFERENCES Roles (RoleID);
ALTER TABLE RolePermissions ADD CONSTRAINT FKRolePermis255765 FOREIGN KEY (PermissionID) REFERENCES Permission (PermissionID);
ALTER TABLE ReviewMedia ADD CONSTRAINT FKReviewMedi272108 FOREIGN KEY (ReviewID) REFERENCES Reviews (ReviewID);
ALTER TABLE Addresses ADD CONSTRAINT FKAddresses790121 FOREIGN KEY (UserID) REFERENCES Users (UserID);
ALTER TABLE Orders ADD CONSTRAINT FKOrders238499 FOREIGN KEY (UserID) REFERENCES Users (UserID);
ALTER TABLE Orders ADD CONSTRAINT FKOrders305458 FOREIGN KEY (AddressID) REFERENCES Addresses (AddressID);
ALTER TABLE [OrderDetails] ADD CONSTRAINT FKOrderDetai799396 FOREIGN KEY (OrderID) REFERENCES Orders (OrderID);
ALTER TABLE Payments ADD CONSTRAINT FKPayments509529 FOREIGN KEY (OrderID) REFERENCES Orders (OrderID);
ALTER TABLE Payments ADD CONSTRAINT FKPayments977013 FOREIGN KEY (UserID) REFERENCES Users (UserID);
ALTER TABLE Books ADD CONSTRAINT FKBooks409464 FOREIGN KEY (CategoryID) REFERENCES Categories (CategoryID);
ALTER TABLE Books ADD CONSTRAINT FKBooks19931 FOREIGN KEY (AuthorID) REFERENCES Authors (AuthorID);
ALTER TABLE BookImages ADD CONSTRAINT FKBookImages28263 FOREIGN KEY (BookID) REFERENCES Books (BookID);
ALTER TABLE [OrderDetails] ADD CONSTRAINT FKOrderDetai685671 FOREIGN KEY (BookID) REFERENCES Books (BookID);
ALTER TABLE Reviews ADD CONSTRAINT FKReviews67101 FOREIGN KEY (BookID) REFERENCES Books (BookID);
ALTER TABLE Reviews ADD CONSTRAINT FKReviews695778 FOREIGN KEY (UserID) REFERENCES Users (UserID);
ALTER TABLE [SystemLogs] ADD CONSTRAINT FKSystemLogs697553 FOREIGN KEY (UserID) REFERENCES Users (UserID);
ALTER TABLE BookPublishers ADD CONSTRAINT FKBookPublis564649 FOREIGN KEY (BookID) REFERENCES Books (BookID);
ALTER TABLE BookPublishers ADD CONSTRAINT FKBookPublis874940 FOREIGN KEY (PublisherID) REFERENCES Publishers (PublisherID);
