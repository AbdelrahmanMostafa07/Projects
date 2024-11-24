----------------------------- track------------------------
---INSERT----

CREATE PROCEDURE InsertTrack
    @TrackName VARCHAR(100)
AS
BEGIN
    INSERT INTO Track (TrackName)
    VALUES (@TrackName);
    
  
END;
------------------SELECT---------------------------
CREATE PROCEDURE GetTrack
    @TrackID INT
AS
BEGIN
    SELECT TrackID, TrackName
    FROM Track
    WHERE TrackID = @TrackID;
END;
GO
-----------------DELETE-------------------

CREATE PROCEDURE DeleteTrack
    @TrackID INT
AS
BEGIN
    DELETE FROM Track
    WHERE TrackID = @TrackID;
END;
GO
--------UPDATE------
CREATE PROCEDURE UpdateTrack
    @TrackID INT,
    @TrackName VARCHAR(100)
AS
BEGIN
    UPDATE Track
    SET TrackName = @TrackName
    WHERE TrackID = @TrackID;
END;
GO