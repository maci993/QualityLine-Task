CREATE PROCEDURE AddNewUser(
    @FirstName NVARCHAR(50), --->A type of text, max 50 characters.
    @LastName NVARCHAR(100),
    @BirthDate DATE,
    @Mobile NVARCHAR(15),
    @Office NVARCHAR(15),
    @Home NVARCHAR(15),
    @HomeAddress NVARCHAR(255),
    @City NVARCHAR(100),
)

AS 
BEGIN ---> calculate age based on birthdate
DECLARE @Age FLOAT = DATEDIFF(YEAR, @BirthDate, GETDATE()) - 
    CASE 
        WHEN MONTH(@BirthDate) > MONTH(GETDATE()) OR 
             (MONTH(@BirthDate) = MONTH(GETDATE()) AND DAY(@BirthDate) > DAY(GETDATE())) 
        THEN 1 
        ELSE 0 
    END;
--->→ Adds a new row (user) to the PersonalDetails table.
    INSERT INTO PersonalDetails (FirstName, LastName, BirthDate, Mobile, Office, Home, HomeAddress, City, Age)
    VALUES (@FirstName, @LastName, @BirthDate, @Mobile, @Office, @Home, @HomeAddress, @City, @Age);
  DECLARE @PersonalDetailsCode INT = SCOPE_IDENTITY(); --->Returns the ID of the last row inserted in this table.
  SELECT 'User added successfully' AS Status;
END
GO
