CREATE PROCEDURE InsertIntake
    @IntakeName VARCHAR(100),
    @IntakeYear INT
AS
BEGIN
    INSERT INTO Intake (IntakeName, IntakeYear)
    VALUES (@IntakeName, @IntakeYear);

END;
GO




--------------------------Intake---------------------

---------------SELECT--------------------------

CREATE PROCEDURE GetIntake
    @IntakeID INT
AS
BEGIN
    SELECT IntakeID, IntakeName, IntakeYear
    FROM Intake
    WHERE IntakeID = @IntakeID;
END;
GO
----------------------UPDATE-----------------------

CREATE PROCEDURE UpdateIntake
    @IntakeID INT,
    @IntakeName VARCHAR(100),
    @IntakeYear INT
AS
BEGIN
    UPDATE Intake
    SET IntakeName = @IntakeName, IntakeYear = @IntakeYear
    WHERE IntakeID = @IntakeID;
END;
GO
---------------------DELETE----------------------

CREATE PROCEDURE DeleteIntake
    @IntakeID INT
AS
BEGIN
    DELETE FROM Intake
    WHERE IntakeID = @IntakeID;
END;
GO