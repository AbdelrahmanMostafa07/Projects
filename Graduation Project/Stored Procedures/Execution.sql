--Exam generation   -- Mohamed
  EXEC GenerateExam  
    @ExamID = 39,	
    @CourseID = 1,    
    @ExamType = 'Final exam ',
    @AllowanceOptions = 'no',
    @Year = 2024,
    @TotalTime = '02:00:00',    
    @StartTime = '2024-09-01 09:00:00',
    @EndTime = '2024-09-01 11:00:00',
    @Num_TF_Questions = 5,    
    @Num_MCQ_Questions = 5,
    @InstructorID = 1;
--------------------------------------------------------------------------------------------------------------------------------
  --Exam Answers    -- MARK
 Exec ExamAnswers @student_id=1,@exam_id=33,@question_id= 5,@student_answer='False'
 Exec ExamAnswers @student_id=1,@exam_id=33,@question_id= 1,@student_answer='True'
 Exec ExamAnswers @student_id=1,@exam_id=33,@question_id= 3,@student_answer='True'
 Exec ExamAnswers @student_id=1,@exam_id=33,@question_id= 65,@student_answer='True'
Exec ExamAnswers @student_id=1,@exam_id=33,@question_id= 4,@student_answer='True'
Exec ExamAnswers @student_id=1,@exam_id=33,@question_id= 64,@student_answer='A'
Exec ExamAnswers @student_id=1,@exam_id=33,@question_id= 10,@student_answer='B'
Exec ExamAnswers @student_id=1,@exam_id=33,@question_id= 8,@student_answer='B'
Exec ExamAnswers @student_id=1,@exam_id=33,@question_id= 62,@student_answer='A'
Exec ExamAnswers @student_id=1,@exam_id=33,@question_id= 66,@student_answer='B'
--------------------------------------------------------------------------------------------------------------------------------
  
  --Exam Correction  -- Abdelrahman
  EXEC Exam_Correction @StudentID= 1, @ExamID=33

--------------------------------------------------------------------------------------------------------------------------------
----- sp for reports
 --sp that returns the students' information according to Department No parameter.
exec GetStudentsByDepartment 1   -- shehab
--------------------------------------------------------------------------------------------------------------------------------
--sp that takes the student ID and returns the grades of the student in all courses.
exec GetGradesByStudentID 1    -- shehab
--------------------------------------------------------------------------------------------------------------------------------
--sp that takes the instructor ID and returns the name of the courses that he teaches and the  number of students per course.
exec GetCoursesByInstructorID 2    -- shehab
--------------------------------------------------------------------------------------------------------------------------------
 --sp that takes course ID and returns its topics.
 EXEC GetCourseTopics 1; -- Mariam
 --------------------------------------------------------------------------------------------------------------------------------
 --sp that takes exam number and returns the questions in it and choices .
 EXEC GetExamQuestionsAndChoices @Exam_Id = 33  --Abdelrahman
 --------------------------------------------------------------------------------------------------------------------------------
--Report that takes exam number and the student ID then returns the questions in this exam with the student answers.
EXEC GetExamQuestionsAndAnswers @StudentID=1,@ExamID=33;  -- Mariam

---------------------------------------------------------------------------------------------------------------------------------