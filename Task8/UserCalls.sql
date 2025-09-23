SELECT
    PD.FirstName + ' ' + PD.LastName AS FullName,
    CONVERT(DATE, C.[TimeStamp]) AS CallDate,
    COUNT(*) AS CallsCount
FROM CallsCount
    JOIN PersonalDetails PD ON C.PersonalDetailsCode = PD.PersonalDetailsCode
GROUP BY PD.FirstName, PD.LastName, CONVERT(DATE, C.[TimeStamp])
ORDER BY PD.FirstName, PD.LastName, CallDate;
-- SELECT DB_NAME() AS CurrentDatabase;
GO

