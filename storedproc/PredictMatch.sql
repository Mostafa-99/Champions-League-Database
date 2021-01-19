CREATE PROCEDURE Predict_Match @UName varchar(30), @MID int, @HostPredictedResult int, @GuestPredictedResult int, @Score int =NULL
AS
INSERT INTO Predict (UName,MID,HostPredictedResult,GuestPredictedResult,Score)
VALUES (@UName,@MID,@HostPredictedResult,@GuestPredictedResult,@Score)
GO