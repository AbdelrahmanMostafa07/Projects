-- third main stored
CREATE OR ALTER PROCEDURE Exam_Correction
    @StudentID INT,
    @ExamID INT
AS
BEGIN
    DECLARE @TotalGrade DECIMAL(5,2);
    DECLARE @MaxPossibleGrade DECIMAL(5,2);
    DECLARE @Percentage DECIMAL(5,2);

    SET @TotalGrade = 0;

    -- Calculate student grades based on the answer correctness
    UPDATE sa
    SET sa.Grade = 
        CASE 
            -- True/False questions: Compare the student's answer with the CorrectAnswer in the QuestionPool
            WHEN qp.QuestionType = 'True/False' 
                AND CONVERT(VARCHAR(MAX), sa.Answer) = CONVERT(VARCHAR(MAX), qp.CorrectAnswer) THEN 10
            -- Multiple Choice questions: Check if the student's answer corresponds to an MCQ option marked as correct
            WHEN qp.QuestionType = 'Multiple choices'
                AND EXISTS (SELECT 1 FROM McqOptions mo WHERE mo.QuestionID = qp.QuestionID AND mo.Is_Correct = 1 
							AND CONVERT(VARCHAR(MAX), sa.Answer) = CONVERT(VARCHAR(MAX), qp.CorrectAnswer)) THEN 10
			ELSE 0
        END
    FROM StudentAnswer sa
    JOIN Exam_questions eq ON sa.QuestionID = eq.QuestionID
    JOIN QuestionPool qp ON eq.QuestionID = qp.QuestionID
    WHERE sa.StudentID = @StudentID AND sa.ExamID = @ExamID;

    -- Calculate the total grade for the student after the update
    SELECT @TotalGrade = SUM(sa.Grade)
    FROM StudentAnswer sa
    WHERE sa.StudentID = @StudentID AND sa.ExamID = @ExamID;

    -- Calculate the maximum grade for this exam
    SELECT @MaxPossibleGrade = SUM(qp.QuestionDegree)
    FROM Exam_questions eq
    JOIN QuestionPool qp ON eq.QuestionID = qp.QuestionID
    WHERE eq.ExamID = @ExamID;

    -- Calculate the percentage
    IF @MaxPossibleGrade > 0
    BEGIN
        SET @Percentage = (@TotalGrade / @MaxPossibleGrade) * 100;
    END
    ELSE
    BEGIN
        SET @Percentage = 0;
    END

	UPDATE Student_Courses
    SET Grade = @Percentage
    WHERE StudentID = @StudentID AND CourseID = 
    (SELECT CourseID FROM Exam WHERE ExamID = @ExamID);

   -- Return the result with a percentage sign
   SELECT CAST(@Percentage AS VARCHAR(10)) + '%' AS [Student Percentage];
END

EXEC Exam_Correction @StudentID= 2, @ExamID=1

