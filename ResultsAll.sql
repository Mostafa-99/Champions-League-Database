USE [UEFAChampionsLeague]
GO

/****** Object:  StoredProcedure [dbo].[Results]    Script Date: 12/23/2019 12:36:21 AM ******/
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
CREATE PROCEDURE [dbo].[ResultsAll] @year_in int ,@month_in int , @day_in int   

AS
BEGIN
	SELECT  HostName ,GuestName ,HostScore,GuestScore, [Year] , [Month] , [Day]
	FROM [Match]
	WHERE ((@year_in > [Year]) or (@year_in = [Year] and @month_in > [Month]) or (@year_in = [Year] and @month_in = [Month] and @day_in >= [Day] ))
END
GO


