/****** Object:  StoredProcedure [dbo].[Standings]    Script Date: 12/22/2019 2:37:01 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[CheckPassword] @Username varchar(30),@Password varchar(15),@UserType varchar(9)
AS
BEGIN
	SELECT *
	FROM [User]
	WHERE UserName=@Username and @Password=[Password] and @UserType=UserType
END
GO


