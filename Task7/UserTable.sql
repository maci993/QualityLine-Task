CREATE PROCEDURE UserTable --->multiple tables for storing user information, phone numbers, addresses, and calls.
 AS
 BEGIN
 -- Create PersonalDetails table
 CREATE TABLE PersonalDetails (
    Code INT IDENTITY(1,1) PRIMARY KEY,
    FirstName NVARCHAR(100),
    LastName NVARCHAR(100)

);
  -- Create PhoneNumbers table
CREATE TABLE PhoneNumbers (
    Code INT IDENTITY(1,1) PRIMARY KEY,
    Mobile NVARCHAR(50),
    Office NVARCHAR(50),
    Home NVARCHAR(50)
    );
-- Create Addresses table
CREATE TABLE Addresses (
    Code INT IDENTITY(1,1) PRIMARY KEY,
    HomeAddress NVARCHAR(200),
    City NVARCHAR(100)
    );

 -- Create Calls table
CREATE TABLE Calls (
    PersonalDetailsCode INT,
    PhoneNumber INT,
    [TimeStamp] DATETIME,
    );

END;
EXEC UserTable;
GO