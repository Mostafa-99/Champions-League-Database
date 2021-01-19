USE [UEFAChampionsLeague]
GO

/****** Object:  StoredProcedure [dbo].[Upcoming_Matches]    Script Date: 12/23/2019 12:30:47 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[Upcoming_MatchesAll] @year_in int ,@month_in int , @day_in int   
AS
BEGIN
	SELECT  HostName ,GuestName ,SName as Stadium,r.FName as Referee_FirstName,r.LName as Referee_LastName,[Year] , [Month] , [Day]

	FROM [Match] as m join Referee as r on m.RefID=r.RefereeID 
	WHERE((@year_in < [Year]) or (@year_in = [Year] and @month_in < [Month]) or (@year_in = [Year] and @month_in = [Month] and @day_in <= [Day] ))
END
GO


