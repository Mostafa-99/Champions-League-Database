USE [UEFAChampionsLeague]
GO



Create PROCEDURE [dbo].[GetFavTeam] @Uname varchar(30)
AS
BEGIN
	SELECT  TeamName 
	FROM Favourite_Team
	WHERE @Uname = UName
	
END