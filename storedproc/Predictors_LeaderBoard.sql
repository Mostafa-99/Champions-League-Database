USE UEFAChampionsLeague
GO
CREATE PROC Predictors_LeaderBoard
AS
SELECT UserName AS User_Name , Sum(Score) AS Score FROM ([User] JOIN Predict on UserName = UName)
GROUP BY UserName
GO

EXEC Predictors_LeaderBoard
GO