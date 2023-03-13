--Create a dashboard called “Price_Paid_Data” in the SQL server by using the following code.

USE master
GO
CREATE DATABASE Price_Paid_Data;

--Import three data sets to the Price_Paid_Data set by using the import data function and create a view to filter the clear data from all data sets. Use the “UNION ALL” operator to combine all three data sets.

CREATE VIEW PPD_edited
AS
SELECT *
FROM [dbo]. [pp-2018]
WHERE [PPD Category Type] = 'A' OR [PPD Category Type] = 'B'
UNION ALL

SELECT *
FROM [dbo]. [pp-2019]
WHERE [PPD Category Type] = 'A' OR [PPD Category Type] = 'B'
UNION ALL

SELECT *
FROM [dbo]. [pp-2020]
WHERE [PPD Category Type] = 'A' OR [PPD Category Type] = 'B'
GO