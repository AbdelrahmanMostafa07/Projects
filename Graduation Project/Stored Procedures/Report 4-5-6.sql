--------•sp that takes course ID and returns its topics    -- Mariam

create OR alter PROCEDURE GetCourseTopics
    @CourseID INT
as
begin try
		IF NOT EXISTS (Select 1 from Course where CourseID = @CourseID)
			BEGIN RAISERROR('Wrong Course Number',16,1)
				  Return;
			end
		else
		begin
			select   t.TopicID, t.TopicName
			FROM 
				Course_Topics ct JOIN Topic t
				ON ct.TopicID = t.TopicID
			WHERE 
				CT.CourseID = @CourseID
		end
end try
begin catch
		RAISERROR('An error occurred in GetCourseTopics.', 16, 1);
end catch;

EXEC GetCourseTopics  1;

----•sp  that takes exam number and the student ID then returns the Questions in this exam with the student answers     -- Mariam
create or ALTER PROCEDURE GetExamQuestionsAndAnswers
    @StudentID INT,
    @ExamID INT
AS
begin try
	IF NOT EXISTS (Select 1 from Student where StudentID = @StudentID)
			BEGIN RAISERROR('Wrong Student Number',16,1)
				  Return;
			end

	 IF NOT EXISTS (SELECT 1 FROM Exam WHERE ExamID = @ExamID)
			begin 
				RAISERROR('Wrong Exam Number', 16, 1);
				RETURN;
			end
    select 
        Q.QuestionID,
        Q.Question as QuestionText,
        SA.Answer as StudentAnswer,
        Q.CorrectAnswer,
        SA.Grade
    from 
        Exam_questions EQ JOIN  QuestionPool Q ON EQ.QuestionID = Q.QuestionID
     JOIN 
        StudentAnswer SA ON SA.QuestionID = Q.QuestionID AND SA.StudentID = @StudentID AND SA.ExamID = @ExamID
    where 
	EQ.ExamID = @ExamID;
END TRY

begin catch
	RAISERROR('An error occurred in GetExamQuestionsAndAnswers.', 16, 1);
end catch

EXEC GetExamQuestionsAndAnswers 1,1;




-- REPORT 5 SP  GetExamQuestionsAndChoices --    -- Abdelrahman
CREATE OR ALTER PROCEDURE GetExamQuestionsAndChoices
    @Exam_Id INT
AS
BEGIN TRY 
	IF NOT EXISTS (Select 1 from Exam where ExamID = @Exam_Id)
		BEGIN RAISERROR('Wrong Exam Number',16,1)
			  Return;
	END
	ELSE
		SELECT 
			qp.Question,
			qp.QuestionType,
			-- For True/False questions
			CASE WHEN qp.QuestionType = 'True/False' THEN 'True'
				 ELSE MAX(CASE WHEN oc.OptionNumber = 1 THEN oc.Options ELSE NULL END) -- Converting the rows values to columns (Options = First mcq option)
			END AS [Option A],

			CASE WHEN qp.QuestionType = 'True/False' THEN 'False'
				 ELSE MAX(CASE WHEN oc.OptionNumber = 2 THEN oc.Options ELSE NULL END) -- Converting the rows values to columns (Options = sceond mcq option)
			END AS [Option B],

			-- For Multiple Choice Questions (MCQ)
			MAX(CASE WHEN oc.OptionNumber = 3 THEN oc.Options ELSE ' ' END) AS [Option C], -- Converting the rows values to columns (Options = third  mcq option)
			MAX(CASE WHEN oc.OptionNumber = 4 THEN oc.Options ELSE ' ' END) AS [Option D] -- Converting the rows values to columns (Options = forth mcq option)
		FROM 
			QuestionPool qp
		INNER JOIN 
			Exam_questions eq ON eq.QuestionID = qp.QuestionID   -- Joining Exam Questions Table  
		LEFT JOIN  -- Joining McqOptions Table
			(SELECT 
				QuestionID,
				CAST(Options AS VARCHAR(MAX)) AS Options,
				ROW_NUMBER() OVER (PARTITION BY QuestionID ORDER BY (SELECT NULL)) AS OptionNumber  -- giving each mcq option number using row_number
			 FROM 
				McqOptions) oc ON qp.QuestionID = oc.QuestionID
		WHERE 
			eq.ExamID = @Exam_Id
		GROUP BY 
			qp.Question,
			qp.QuestionType
END TRY
BEGIN CATCH
	RAISERROR('An error occurred in GetExamQuestionsAndChoices.', 16, 1);
END CATCH;


EXEC GetExamQuestionsAndChoices @Exam_Id = 2



