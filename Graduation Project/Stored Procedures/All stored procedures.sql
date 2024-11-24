--shehab
CREATE OR ALTER  PROCEDURE GetStudentsByDepartment
    @DepartmentNo INT
AS
BEGIN
    SELECT 
	*
    FROM 
        Student
    WHERE 
		DepartmentID = @DepartmentNo
END;

GO
--exec
exec GetStudentsByDepartment 1

CREATE PROCEDURE GetGradesByStudentID
    @StudentID INT
AS
BEGIN
    SELECT 
        s.StudentID, 
        s.Name, 
        c.CourseID, 
        c.CourseName, 
        g.Grade
    FROM 
        Student s
        INNER JOIN Student_Courses g ON s.StudentID = g.StudentID
        INNER JOIN Course c ON g.CourseID = c.CourseID
    WHERE 
        s.StudentID = @StudentID;
END;

--exec
exec GetGradesByStudentID 1
GO

CREATE PROCEDURE GetCoursesByInstructorID
    @InstructorID INT
AS
BEGIN
    SELECT 
        ic.InstructorID, 
        i.Name, 
        ic.CourseID, 
        x.CourseName, 
        COUNT(distinct sc.StudentID) AS NumberOfStudents
    FROM 
        Instructor_Courses ic
        left JOIN Instructor i ON ic.InstructorID = i.InstructorID
		left JOIN Course x ON ic.CourseID = x.CourseID
        LEFT JOIN Student_Courses sc ON ic.CourseID = sc.CourseID
    WHERE 
        i.InstructorID = @InstructorID
    GROUP BY 
		ic.InstructorID, 
        i.Name, 
        ic.CourseID, 
        x.CourseName
END;
--exec
exec GetCoursesByInstructorID 2


CREATE OR ALTER PROCEDURE DeleteInstructor @ins_id INT
AS
    BEGIN TRY
		IF @ins_id in ( select InstructorID from Instructor)

			DELETE FROM Instructor WHERE InstructorID = @ins_id

		ELSE
			PRINT 'Instructors dose not exist.'
    END TRY
    BEGIN CATCH
        PRINT 'Error please try again'
    END CATCH
--exec
EXEC DeleteInstructor 11

CREATE OR ALTER PROCEDURE InsertInstructor
@ins_name varchar(20),
@ins_email varchar(50),
@ins_salary int,
@ins_phone varchar(11),
@trainint_managerID int = NULL
AS
    BEGIN TRY
			INSERT INTO Instructor
			VALUES (@ins_name,@ins_email,@ins_salary,@ins_phone,@trainint_managerID)
	End Try
	BEGIN Catch
		SELECT 'Error try again'
	End Catch

EXEC InsertInstructor @ins_name = 'Ahmed' , @ins_email = 'shehab@gmail.com', @ins_salary = 5000,
@ins_phone = '01156243505' ,@trainint_managerID = 2


CREATE OR ALTER PROCEDURE UpdateInstructor
@ins_id int,
@ins_name varchar(20) = '-1',
@ins_email varchar(255)  = '-1' ,
@ins_phone varchar(11) = '-1',
@ins_salary int = -1,
@trainint_managerID int = -1
AS
    BEGIN TRY
	IF @ins_id IN (select InstructorID from Instructor) 
		BEGIN
---------------------------------Name---------------
				IF @ins_name != '-1'
					BEGIN 
						UPDATE Instructor
						SET Name = @ins_name
						where InstructorID = @ins_id
					END
---------------------------------Email---------------
				IF @ins_email != '-1' 
				AND @ins_email NOT IN (select Email from Instructor)
					BEGIN
							UPDATE Instructor
							SET Email = @ins_email
							where InstructorID = @ins_id
					END

				ELSE IF @ins_email != '-1'
				AND @ins_email IN (select Email from Instructor)
					BEGIN
						PRINT 'Email Not updated. Email is unvalid or already exists'
					END
---------------------------------Phone---------------
				IF @ins_phone != '-1'
				AND @ins_phone NOT IN (select Phone from Instructor)
					BEGIN
						UPDATE Instructor
						SET Phone = @ins_phone
						where InstructorID = @ins_id
					END
				ELSE IF @ins_phone != '-1' 
				AND @ins_phone IN (select Phone from Instructor)
					BEGIN
						PRINT 'Phone Number Not updated. Phone Number is unvalid or already exists'
					END
---------------------------------Salary---------------
				IF @ins_salary != -1
					BEGIN 
						UPDATE Instructor
						SET Salary = @ins_salary
						where InstructorID = @ins_id
					END
---------------------------------Training manager---------------
				IF @trainint_managerID != -1 
				AND @trainint_managerID IN (SELECT TrainingManager_id FROM Instructor)
					BEGIN 
						UPDATE Instructor
						SET TrainingManager_id = @trainint_managerID
						where InstructorID = @ins_id
					END
				ELSE IF @trainint_managerID != -1 
				AND @trainint_managerID Not IN (SELECT TrainingManager_id FROM Instructor)
					BEGIN
						SELECT 'Error please choose a valid TrainingManager_id ' 
					END
			END
    END TRY
    BEGIN CATCH
        PRINT 'Error please try again'
    END CATCH

EXEC UpdateInstructor @ins_id =1, @ins_name = 'New Name'



CREATE PROCEDURE DeleteCourse @course_id INT
AS
    BEGIN TRY
		IF @course_id in ( select CourseID from Course)

			DELETE FROM Course WHERE CourseID = @course_id

		ELSE
			PRINT 'Course dose not exist.'
    END TRY
    BEGIN CATCH
        PRINT 'Error please try again'
    END CATCH


CREATE PROCEDURE InsertCourse 
@cre_name varchar(20),
@mx_degree int = 100,
@mn_degree int = 0
AS
    BEGIN TRY
		IF (@mn_degree + 5 <= @mx_degree)
			BEGIN
				INSERT INTO Course
				VALUES (@cre_name,@mn_degree,@mx_degree)
			END
		ELSE
			PRINT 'Please insert Max degree bigger than Min degree with at least 5'

    END TRY
    BEGIN CATCH
        PRINT 'Error please try again'
    END CATCH

EXEC InsertCourse @cre_name = 'course name', @mx_degree = 20



CREATE OR ALTER PROCEDURE UpdateCourse 
@crs_id int,
@cre_name varchar(20) = '',
@mx_degree int = 0,
@mn_degree int = -5
AS
    BEGIN TRY
-----------------------------Validate ID---------------
	IF @crs_id IN (select CourseID from Course) 
		BEGIN
-----------------------------CHECK degrees---------------
			DECLARE @current_mx int = 0,@current_mn int = 0
			SET @current_mx = (SELECT MaxDegree FROM Course WHERE CourseID = @crs_id)
			SET @current_mn = (SELECT MinDegree FROM Course WHERE CourseID = @crs_id)

			IF (@mn_degree + 5 <= @mx_degree) OR 
			(@mn_degree = -5 AND (@mx_degree >= @current_mn + 5)) OR
			(@mx_degree = 0 AND (@mN_degree <= @current_mx - 5))
				BEGIN
-----------------------------Update the column value if the user iserted value for it---------------
					IF @cre_name != ''
						BEGIN 
							UPDATE Course
							SET CourseName = @cre_name
							where CourseID = @crs_id
						END
					IF @mn_degree != -5 
						BEGIN
							UPDATE Course
							SET MinDegree = @mn_degree
							where CourseID = @crs_id
						END
					IF @mX_degree != 0
						BEGIN
							UPDATE Course
							SET MaxDegree = @mX_degree
							where CourseID = @crs_id
						END
				END
			ELSE
-----------------------------Errors repsonses---------------
				PRINT 'Please insert Max degree bigger than Min degree with at least 5'
		END
		ELSE
			BEGIN
				 SELECT 'Error please choose a valid course id from the following' ERROR
				 SELECT CourseID, CourseName FROM Course
			END
    END TRY
    BEGIN CATCH
        PRINT 'Error please try again'
    END CATCH

EXEC UpdateCourse @crs_id =1 ,@cre_name ='New Name',@mx_degree = 100 ,@mn_degree  =0



CREATE OR ALTER PROCEDURE DeleteStudent @std_id INT
AS
    BEGIN TRY
		IF @std_id in ( select StudentID from Student)

			DELETE FROM Student WHERE StudentID = @std_id

		ELSE
			PRINT 'Studnet dose not exist.'
    END TRY
    BEGIN CATCH
        PRINT 'Error please try again'
    END CATCH

go 
EXEC DeleteStudent 1


CREATE OR ALTER PROCEDURE InsertStudent
@StudentID INT,
@name varchar(20),
@email varchar(50),
@phone varchar(11),
@Track int
AS
    BEGIN TRY
			INSERT INTO Student
			VALUES (@StudentID,@name,@email,@phone,@Track,null)
	End Try
	BEGIN Catch
		SELECT 'Error try again'
	End Catch

EXEC  InsertStudent @StudentID = 101, @name = 'Ahmed' , @email = 'shehab@gmail.com',
@phone = '01156243505' ,@Track = 1



CREATE OR ALTER PROCEDURE UpdateStudent
@id  int,
@name  varchar(20) = '-1',
@email  varchar(255)  = '-1' ,
@phone  varchar(11) = '-1',
@Track int = -1
AS
    BEGIN TRY
	IF @id IN (select StudentID from Student) 
		BEGIN
---------------------------------Name---------------
				IF @name != '-1'
					BEGIN 
						UPDATE Student
						SET Name = @name
						where StudentID = @id
					END
---------------------------------Email---------------
				IF @email != '-1' 
				AND @email NOT IN (select Email from Student)
					BEGIN
							UPDATE Student
							SET Email = @email
							where StudentID = @id
					END

				ELSE IF @email != '-1'
				AND @email IN (select Email from Student)
					BEGIN
						PRINT 'Email Not updated. Email is unvalid or already exists'
					END
---------------------------------Phone---------------
				IF @phone != '-1'
				AND @phone NOT IN (select Phone from Student)
					BEGIN
						UPDATE Student
						SET Phone = @phone
						where StudentID = @id
					END
				ELSE IF @phone != '-1' 
				AND @phone IN (select Phone from Student)
					BEGIN
						PRINT 'Phone Number Not updated. Phone Number is unvalid or already exists'
					END
---------------------------------Track---------------
				IF @Track != -1 
				AND @Track IN (SELECT TrackID FROM Track)
					BEGIN 
						UPDATE Student
						SET TrackID = @Track
						where StudentID = @id
					END
				ELSE IF @Track != -1 
				AND @Track Not IN (SELECT TrackID FROM Track)
					BEGIN
						SELECT 'Error please choose a valid TrackID ' 
					END
			END
    END TRY
    BEGIN CATCH
        PRINT 'Error please try again'
    END CATCH



CREATE OR ALTER PROCEDURE SelectStudent
@id int
AS
	select * from student
	where StudentID = @id

GO
/**
How to use
you need to input a valid Course id
Returns all Course info

EXEC SelectCourse @id =1
**/
CREATE OR ALTER PROCEDURE SelectCourse
@id int
AS
	select * from Course
	where CourseID = @id

GO
/**
How to use
you need to input a valid Instructor id
Returns all Instructor info

EXEC SelectInstructor @id =7
**/
CREATE OR ALTER PROCEDURE SelectInstructor
@id int
AS
	select * from Instructor
	where InstructorID = @id
------------------------------------------------------------------------------------------------------------------------------------------------------------------
--Abdelrahman
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



CREATE OR ALTER PROCEDURE GetExamQuestionsAndChoices
    @Exam_Id INT
AS
BEGIN
    SELECT 
        qp.Question,
        qp.QuestionType,
        -- For True/False questions
        CASE WHEN qp.QuestionType = 'True/False' THEN 'True'
             ELSE MAX(CASE WHEN oc.OptionNumber = 1 THEN oc.Options ELSE NULL END)
        END AS [Option A],

        CASE WHEN qp.QuestionType = 'True/False' THEN 'False'
             ELSE MAX(CASE WHEN oc.OptionNumber = 2 THEN oc.Options ELSE NULL END)
        END AS [Option B],

        -- For Multiple Choice Questions (MCQ)
        MAX(CASE WHEN oc.OptionNumber = 3 THEN oc.Options ELSE ' ' END) AS [Option C],
        MAX(CASE WHEN oc.OptionNumber = 4 THEN oc.Options ELSE ' ' END) AS [Option D]
    FROM 
        QuestionPool qp
    INNER JOIN 
        Exam_questions eq ON eq.QuestionID = qp.QuestionID
    LEFT JOIN 
        (SELECT 
            QuestionID,
            CAST(Options AS VARCHAR(MAX)) AS Options,
            ROW_NUMBER() OVER (PARTITION BY QuestionID ORDER BY (SELECT NULL)) AS OptionNumber
         FROM 
            McqOptions) oc ON qp.QuestionID = oc.QuestionID
    WHERE 
        eq.ExamID = @Exam_Id
    GROUP BY 
        qp.Question,
        qp.QuestionType
END;


EXEC GetExamQuestionsAndChoices @Exam_Id = 30


--reporting 5
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
------------------------------------------------------------------------------------------------------------------------------------------------------------------
--Mariam
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


--------------Topic----------------

-------------INSERT-----------
CREATE PROCEDURE InsertTopic
    @TopicName VARCHAR(100)
AS
BEGIN
    INSERT INTO Topic (TopicName)
    VALUES (@TopicName);
    
END;
GO


----------SELECT--------------
CREATE PROCEDURE GetTopic
    @TopicID INT
AS
BEGIN
    SELECT TopicID, TopicName
    FROM Topic
    WHERE TopicID = @TopicID;
END;
GO


----------------UPDATE------------



CREATE PROCEDURE UpdateTopic
    @TopicID INT,
    @TopicName VARCHAR(100)
AS
BEGIN
    UPDATE Topic
    SET TopicName = @TopicName
    WHERE TopicID = @TopicID;
END;
GO

------------DELETE----------------

CREATE PROCEDURE DeleteTopic
    @TopicID INT
AS
BEGIN
    DELETE FROM Topic
    WHERE TopicID = @TopicID;
END;
GO


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

--reporting 4 
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

--reporting 6
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
------------------------------------------------------------------------------------------------------------------------------------------------------------------
--Mark
-----Insterting QuestionPool to add new record to the QuestionPool Table------------------------------------------------------------------------       -- Mark
create proc InstQuestionPool @Ques Text,@QuesType varchar(50), @CorrectAnswer TEXT , @QuesDegree INT
as
	begin try
		insert into QuestionPool(Question, QuestionType, CorrectAnswer, QuestionDegree)
		values(@Ques,@QuesType,@CorrectAnswer,@QuesDegree)
	end try
	begin catch
		Select 'Error'
	end catch
------Updating Question Pool to update a record found in QuestionPool Table---------------------------------------------------------------------------
create proc UpdateQuestionPool @ID INT,@Question TEXT, @Type varchar(50), @CorrectAns TEXT, @Degree INT
as
	begin 
		Update QuestionPool
		SET Question = @Question,
			QuestionType = @Type,
			CorrectAnswer = @CorrectAns,
			QuestionDegree = @Degree
		WHERE QuestionID = @ID
	end 
--------Selecting QuestionPool to retreive all records by QuestionID--------------------------------------------------------------------------------
create proc SlcQuestionPoolbyID @ID INT
as
	begin
		select *
		from QuestionPool
		WHERE QuestionID = @ID
	end
----------Deleting QuestionPool to remove a record found in the QuestionPool table----------------------------------------------------------------
create proc DltQuestionPool @QuestionID INT
as
	begin
		delete from QuestionPool
		WHERE QuestionID = @QuestionID
	end
--------------------------------------------------------------------------------------------------------------------------------------------------------

Alter PROC ExamAnswers @student_id int, @exam_id int, @question_id int, @student_answer varchar(30)
AS
BEGIN TRY
	IF  NOT EXISTS (SELECT 1 FROM StudentAnswer WHERE StudentID = @student_id)
	BEGIN 
			RAISERROR('Error', 16, 1);
			RETURN;
	END
	ELSE
	BEGIN
INSERT INTO StudentAnswer(StudentID, ExamID, QuestionID, Answer)
		    VALUES(@student_id, @exam_id, @question_id, @student_answer)
	END
END TRY
BEGIN CATCH
		SELECT ERROR_MESSAGE() AS errorMessage;
END CATCH;


exec ExamAnswers 1,1,3,'True'
---------------------------------------------------------------------------------------------------------------------------------------------------
--mohamed
--- SELECT ---
CREATE or alter PROCEDURE SelectDepartment @DepartmentID INT
AS
BEGIN
    SELECT *
    FROM Department;
END
GO


--- INSERT ---
CREATE PROCEDURE InsertDepartment
    @DepartmentName VARCHAR(100)
AS
BEGIN
    INSERT INTO Department (DepartmentName)
    VALUES (@DepartmentName);
END
GO


--- UPDATE ---
CREATE PROCEDURE UpdateDepartment
    @DepartmentID INT,
    @NewDepartmentName VARCHAR(100)
AS
BEGIN
    UPDATE Department
    SET DepartmentName = @NewDepartmentName
    WHERE DepartmentID = @DepartmentID;
END
GO

--- DELETE ---
CREATE PROCEDURE DeleteDepartment
    @DepartmentID INT
AS
BEGIN
    DELETE FROM Department
    WHERE DepartmentID = @DepartmentID;
END
GO


CREATE OR ALTER PROCEDURE GenerateExam  
    @ExamID INT,	
    @CourseID INT,    
    @ExamType VARCHAR(50),
    @AllowanceOptions VARCHAR(50),
    @Year INT,
    @TotalTime TIME,    
    @StartTime DATETIME,
    @EndTime DATETIME,
    @Num_TF_Questions INT,    
    @Num_MCQ_Questions INT,
    @InstructorID INT
AS
BEGIN TRY
	IF NOT EXISTS (SELECT * FROM [dbo].[Course] WHERE [CourseID] = @CourseID)
	    BEGIN
            SELECT 'The course does not exist' AS 'ErrorMessage'
            RETURN;
        END
    
    -- Insert the exam into the Exam table
    INSERT INTO Exam (ExamID, ExamType, AllowanceOptions, Year, TotalTime, StartTime, EndTime, CourseID, InstructorID)
    VALUES (@ExamID, @ExamType, @AllowanceOptions, @Year, @TotalTime, @StartTime, @EndTime, @CourseID, @InstructorID);

    -- Insert True/False questions related to the same course
    INSERT INTO Exam_questions (ExamID, QuestionID)
    SELECT TOP (@Num_TF_Questions) @ExamID, Q.QuestionID
    FROM QuestionPool Q
    WHERE Q.CourseID = @CourseID AND Q.QuestionType = 'True/False'
    ORDER BY NEWID();

    -- Insert Multiple Choice questions related to the same course
    INSERT INTO Exam_questions (ExamID, QuestionID)
    SELECT TOP (@Num_MCQ_Questions) @ExamID, Q.QuestionID
    FROM QuestionPool Q
    WHERE Q.CourseID = @CourseID AND Q.QuestionType = 'Multiple choices'
    ORDER BY NEWID();

    -- Select the generated exam questions
    SELECT Q.* 
    FROM Exam_questions EQ
    JOIN QuestionPool Q ON EQ.QuestionID = Q.QuestionID
    WHERE EQ.ExamID = @ExamID;
END TRY
BEGIN CATCH
    SELECT ERROR_MESSAGE() AS errorMessage;
END CATCH;
--------------------------------------------------------------------------------------------------------------------------------------------------





