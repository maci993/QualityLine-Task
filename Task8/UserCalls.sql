SELECT ---count the number of calls per user per day,
    PD.FirstName + ' ' + PD.LastName AS FullName, --Combines first and last name into one column called
    CONVERT(DATE, C.[TimeStamp]) AS CallDate,
    COUNT(*) AS CallsCount ---ounts how many calls each user had on that day.
FROM CallsCount
    JOIN PersonalDetails PD ON C.PersonalDetailsCode = PD.PersonalDetailsCode
GROUP BY PD.FirstName, PD.LastName, CONVERT(DATE, C.[TimeStamp])
ORDER BY PD.FirstName, PD.LastName, CallDate;
-- SELECT DB_NAME() AS CurrentDatabase;
GO

