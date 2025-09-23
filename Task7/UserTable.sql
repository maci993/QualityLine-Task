CREATE PROCEDURE UserTable
 AS
 BEGIN

 CREATE TABLE PersonalDetails (
    Code INT IDENTITY(1,1) PRIMARY KEY,
    FirstName NVARCHAR(100),
    LastName NVARCHAR(100),
 
);

CREATE TABLE PhoneNumbers (
    Code INT IDENTITY(1,1) PRIMARY KEY,
    Mobile NVARCHAR(50),
    Office NVARCHAR(50),
    Home NVARCHAR(50)
    );

CREATE TABLE Addresses (
    Code INT IDENTITY(1,1) PRIMARY KEY,
    HomeAddress NVARCHAR(200),
    City NVARCHAR(100)
    );

CREATE TABLE Calls (
    PersonalDetailsCode INT,
    PhoneNumber INT,
    [TimeStamp] DATETIME,
    );

END;
EXEC UserTable;
GO