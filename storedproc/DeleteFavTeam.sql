USE [UEFAChampionsLeague]
GO



Create PROCEDURE [dbo].[DeleteFavTeam] @Uname varchar(30)
AS
BEGIN
	Delete  
	FROM Favourite_Team 
	WHERE @Uname = UName
END