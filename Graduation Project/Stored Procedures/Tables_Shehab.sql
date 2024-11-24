
/***
Usage
EXEC DeleteInstructor 1
change 1 by the instructor id you want to delete
***/

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

EXEC DeleteInstructor 11
go 

/***
How to use
ALL VALUES ARE REQUIRED EXCEPT @trainint_managerI
note the id is auto generated so there is no input for it
example: 
EXEC InsertInstructor @ins_name = 'Ahmed' , @ins_email = 'shehab@gmail.com', @ins_salary = 5000,
@ins_phone = '01156243505' ,@trainint_managerID = 2
**/
EXEC InsertInstructor @ins_name = 'Ahmed' , @ins_email = 'shehab@gmail.com', @ins_salary = 5000,
@ins_phone = '01156243505' ,@trainint_managerID = 2

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



EXEC UpdateInstructor @ins_id =1, @ins_name = 'New Name'
/***
How to use
you need to input a valid instructor id to update
all the other inputs are not required only input what you need to update

EXEC UpdateInstructor @ins_id =7, @ins_name = 'New Name'

EXEC UpdateInstructor @ins_id =, etc....
@ins_id 
@ins_name 
@ins_email 
@ins_phone 
@ins_salary 
@trainint_managerID
***/


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

GO

/***
Usage
EXEC DeleteCourse 1
change 1 by the course id you want to delete
***/
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
GO

/***
USAGE
if you want to use the rest values as deafult
	EXEC InsertCourse @cre_name = 'course name'

if you want to change the max or min degree  not in the example 
i changed only the max degree(100 deafult) to 20
and the minimum degree will be 0 to change it use  @mn_degree =

	EXEC InsertCourse @cre_name = 'course name', @mx_degree = 20
***/
GO
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

go
EXEC InsertCourse @cre_name = 'course name', @mx_degree = 20
/***
How to use
you need to input a valid course id to update
the 3 other inputs are not required only input what you need to update
NOTE -- max needs to be more than min degree with at least 5 numbers and both more than 0

EXEC UpdateCourse @crs_id =1 ,@cre_name ='New Name',@mx_degree = 100 ,@mn_degree  =0

***/

EXEC UpdateCourse @crs_id =1 ,@cre_name ='New Name',@mx_degree = 100 ,@mn_degree  =0
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

GO


/***
Usage
EXEC DeleteStudent 1
change 1 by the StudentID you want to delete
***/

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
/***
How to use
ALL VALUES ARE REQUIRED
note the id is auto generated so there is no input for it
example: 
EXEC  InsertStudent @name = 'Ahmed' , @email = 'shehab@gmail.com',
@phone = '01156243505' ,@Track = 1
**/
EXEC  InsertStudent @StudentID = 101, @name = 'Ahmed' , @email = 'shehab@gmail.com',
@phone = '01156243505' ,@Track = 1

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


/***
How to use
you need to input a valid Student id to update
all the other inputs are not required only input what you need to update

EXEC UpdateStudent @id =7, @name = 'New Name'

EXEC UpdateStudent @id =, etc....
@id 
@name 
@email 
@phone 
@Track
***/
EXEC UpdateStudent @id =7, @name = 'New Name'

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

GO


/**
How to use
you need to input a valid Student id
Returns all student info

EXEC SelectStudent @id =1
**/
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