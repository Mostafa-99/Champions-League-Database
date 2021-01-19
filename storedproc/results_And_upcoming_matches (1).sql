-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

use UEFAChampionsLeague
go 
-- =============================================
-- Author:		<Author,,MAhmoud Alaa>
-- Create date: <Create Date,,>
-- Description:	<fan func>
-- =============================================

----- func to return table of the upcoming matches for the chosen team 
CREATE PROCEDURE [dbo].[Results] @year_in int ,@month_in int , @day_in int , @team_in varchar(20)  

AS
BEGIN
	SELECT MatchID , HostName ,GuestName , [Year] , [Month] , [Day]
	FROM [Match]
	WHERE (@team_in = HostName or @team_in = GuestName) and ((@year_in > [Year]) or (@year_in = [Year] and @month_in > [Month]) or (@year_in = [Year] and @month_in = [Month] and @day_in >= [Day] ))
END
GO

------------------------------------------------------------------------------------
----- func to return table of the upcoming matches for the chosen team 
CREATE PROCEDURE [dbo].[Upcoming_Matches] @year_in int ,@month_in int , @day_in int , @team_in varchar(20)  
AS
BEGIN
	SELECT MatchID , HostName ,GuestName ,HostScore ,GuestScore ,  [Year] , [Month] , [Day]

	FROM [Match] joins 
	WHERE (@team_in = HostName or @team_in = GuestName) and ((@year_in < [Year]) or (@year_in = [Year] and @month_in < [Month]) or (@year_in = [Year] and @month_in = [Month] and @day_in <= [Day] ))
END
GO
------------------------------------------------------------------------------------------
--------------------scouts proc--------------------------------------
--------1 show managers by name ----------------------------------
CREATE PROCEDURE [dbo].[Show_Managers] @man_id int 
AS
BEGIN
	SELECT  ManagerID ,FName ,LName,Nationality,Wins,Loses ,Draws 
	FROM Manager 
	WHERE @man_id = ManagerID
END
GO
-------------------------------------------------------------------------------------------
---------2 search players by name ---------------------------------------------------------
CREATE PROCEDURE [dbo].[Search_By_Name] @player_id int 
AS
BEGIN
	SELECT  PlayerID ,Age ,MarketValue,Position,Nationality,Height,PreferredFoot,Technical,Attacking,Defence,Tactical,Creativity,TName
	FROM Player 
	WHERE @player_id = PlayerID
END
GO
--------------------------------------------------------------------------------------------------
-------3 search player by position ---------------------------------------------------------------
CREATE PROCEDURE [dbo].[Search_By_Position] @player_position varchar(3)
AS
BEGIN
	SELECT  PlayerID ,Age ,MarketValue,Nationality,Height,PreferredFoot,Technical,Attacking,Defence,Tactical,Creativity,TName
	FROM Player 
	WHERE @player_position = Position
END
GO
--------------------------------------------------------------------------------------------------
--------4 choose player by technical rating ------------------------------------
CREATE PROCEDURE [dbo].[Search_By_Rating] @player_rating_technical int 
AS
BEGIN
	SELECT  PlayerID ,Age ,MarketValue,Nationality,Height,PreferredFoot,Technical,Attacking,Defence,Tactical,Creativity,TName
	FROM Player 
	WHERE @player_rating_technical >= Technical
END
GO


