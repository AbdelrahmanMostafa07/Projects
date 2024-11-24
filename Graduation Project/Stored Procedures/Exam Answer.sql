CREATE PROC Exam_Answer @student_id int, @exam_id int, @question_id int, @student_answer varchar(30) , @Grade Decimal(5,2)
AS
BEGIN TRY
	IF NOT EXISTS (SELECT 1 FROM )
	BEGIN TRY
			RAISERROR('Error', 16, 1);
			RETURN;
	END TRY

INSERT INTO StudentAnswer(StudentID, ExamID, QuestionID, Answer, Grade)
		    VALUES(@student_id, @exam_id, @question_id, @student_answer, @Grade)

END TRY

BEGIN CATCH
		SELECT ERROR_MESSAGE() AS errorMessage;
END CATCH;