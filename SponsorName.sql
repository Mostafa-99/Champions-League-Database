USE [UEFAChampionsLeague]
GO

/****** Object:  StoredProcedure [dbo].[GetFavTeam]    Script Date: 12/22/2019 10:52:21 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO




Create PROCEDURE [dbo].[GetSponsor] @Tname varchar(20)
AS
BEGIN
	SELECT  SPName as SponsorName 
	FROM Sponsors
	WHERE @Tname=TMName
	
END
GO


