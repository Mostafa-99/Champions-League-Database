USE [UEFAChampionsLeague]
GO


Create PROCEDURE [dbo].[SearchByPlayerName] @player_name varchar(20)
AS
BEGIN
	SELECT  FName,LName,PlayerID ,Age ,MarketValue,Position,Nationality,Height,PreferredFoot,Technical,Attacking,Defence,Tactical,Creativity,TName
	FROM Player 
	WHERE @player_name = FName
END