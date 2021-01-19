USE [UEFAChampionsLeague]
GO

/****** Object:  StoredProcedure [dbo].[Standings]    Script Date: 12/22/2019 2:37:01 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[TeamPlayers] @Team  varchar(20)
AS
BEGIN
	SELECT P.FName as FirstName,P.LName as LastName,P.Age,P.Nationality,P.MarketValue,P.Height,P.Position,P.Attacking,P.Creativity,P.Defence,P.PreferredFoot,P.Tactical,P.Technical,P.VotesNo
	FROM ((Team as T join Plays_For_A as PL on T.TeamName=PL.TName) join Player as P on P.PlayerID=PL.PID)
	WHERE TeamName=@Team
END
GO


