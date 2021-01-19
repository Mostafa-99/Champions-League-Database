USE [UEFAChampionsLeague]
GO

/****** Object:  StoredProcedure [dbo].[Results]    Script Date: 12/18/2019 6:35:39 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

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


