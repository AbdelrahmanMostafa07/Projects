

--------------------INSERT---------

CREATE PROCEDURE InsertExam
    @ExamID INT,
    @ExamType VARCHAR(50),
    @AllowanceOptions VARCHAR(50),
    @Year INT,
    @TotalTime TIME,
    @StartTime DATETIME,
    @EndTime DATETIME,
    @CourseID INT
AS
BEGIN
    INSERT INTO Exam (ExamID, ExamType, AllowanceOptions, Year, TotalTime, StartTime, EndTime, CourseID)
    VALUES (@ExamID, @ExamType, @AllowanceOptions, @Year, @TotalTime, @StartTime, @EndTime, @CourseID);
END;
GO
--------------SELECT----------------
CREATE PROCEDURE GetExam
    @ExamID INT
AS
BEGIN
    SELECT ExamID, ExamType, AllowanceOptions, Year, TotalTime, StartTime, EndTime, CourseID
    FROM Exam
    WHERE ExamID = @ExamID;
END;
GO
--------UPDATE------
CREATE PROCEDURE UpdateExam
    @ExamID INT,
    @ExamType VARCHAR(50),
    @AllowanceOptions VARCHAR(50),
    @Year INT,
    @TotalTime TIME,
    @StartTime DATETIME,
    @EndTime DATETIME,
    @CourseID INT
AS
BEGIN
    UPDATE Exam
    SET ExamType = @ExamType, AllowanceOptions = @AllowanceOptions, Year = @Year, 
        TotalTime = @TotalTime, StartTime = @StartTime, EndTime = @EndTime, 
        CourseID = @CourseID
    WHERE ExamID = @ExamID;
END;
GO
-------DELETE--------------
CREATE PROCEDURE DeleteExam
    @ExamID INT
AS
BEGIN
    DELETE FROM Exam
    WHERE ExamID = @ExamID;
END;
GO

