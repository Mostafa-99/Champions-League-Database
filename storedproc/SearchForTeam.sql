USE [UEFAChampionsLeague]
GO



Create PROCEDURE [dbo].[SearchForTeam] @Tname varchar(20)
AS
BEGIN
	SELECT  TeamName,FoundationYear,MgrID,[Group],STDName,Wins,Losses,Draws
	FROM Team 
	WHERE @Tname = TeamName
END