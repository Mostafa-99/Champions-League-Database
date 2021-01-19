USE [UEFAChampionsLeague]
GO

/****** Object:  StoredProcedure [dbo].[Upcoming_Matches]    Script Date: 12/18/2019 6:30:05 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Upcoming_Matches] @year_in int ,@month_in int , @day_in int , @team_in varchar(20)  
AS
BEGIN
	SELECT MatchID , HostName ,GuestName ,HostScore ,GuestScore ,  [Year] , [Month] , [Day]

	FROM [Match] joins 
	WHERE (@team_in = HostName or @team_in = GuestName) and ((@year_in < [Year]) or (@year_in = [Year] and @month_in < [Month]) or (@year_in = [Year] and @month_in = [Month] and @day_in <= [Day] ))
END
GO


