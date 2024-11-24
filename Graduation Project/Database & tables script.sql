CREATE TABLE Department (
    DepartmentID INT PRIMARY KEY IDENTITY(1,1),
    DepartmentName VARCHAR(100) NOT NULL
)
GO

CREATE TABLE Intake (
    IntakeID INT PRIMARY KEY IDENTITY(1,1),
    IntakeName VARCHAR(100) NOT NULL,
    IntakeYear Int NOT NULL
) 
GO

CREATE TABLE Track (
    TrackID INT PRIMARY KEY IDENTITY(1,1),
    TrackName VARCHAR(100) NOT NULL
) ON SecondaryFG;
GO

CREATE TABLE Topic (
    TopicID INT PRIMARY KEY IDENTITY(1,1),
    TopicName VARCHAR(100) NOT NULL
) ON SecondaryFG;
GO

CREATE TABLE Course (
    CourseID INT PRIMARY KEY IDENTITY(1,1),
    CourseName VARCHAR(100) NOT NULL,
    MaxDegree INT NOT NULL,
    MinDegree INT NOT NULL
) ON SecondaryFG;
GO

CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Email VARCHAR(100) NOT NULL UNIQUE,
    Phone VARCHAR(11) NOT NULL UNIQUE,
    TrackID INT,
    FOREIGN KEY (TrackID) REFERENCES Track(TrackID)
) ON SecondaryFG;
GO

CREATE TABLE Instructor (
    InstructorID INT PRIMARY KEY IDENTITY(1,1),
    Name VARCHAR(100) NOT NULL,
    Email VARCHAR(100) NOT NULL UNIQUE,
    Salary Int NOT NULL,
    Phone VARCHAR(11) NOT NULL UNIQUE,
	TrainingManager_id int,
	FOREIGN KEY (TrainingManager_id) REFERENCES Instructor(InstructorID)
) ON SecondaryFG;
GO

CREATE TABLE Exam (
    ExamID INT PRIMARY KEY,
    ExamType VARCHAR(50) NOT NULL,
    AllowanceOptions VARCHAR(50) NOT NULL,
    Year int NOT NULL,
    TotalTime TIME NOT NULL,
    StartTime DATETIME NOT NULL,
    EndTime DATETIME NOT NULL,
    CourseID INT,
	InstructorID INT,
    FOREIGN KEY (CourseID) REFERENCES Course(CourseID),
	FOREIGN KEY (InstructorID) REFERENCES Instructor(InstructorID)
) ON SecondaryFG;
GO

CREATE TABLE QuestionPool (
    QuestionID INT PRIMARY KEY,
    Question TEXT NOT NULL,
    QuestionType VARCHAR(50) NOT NULL,
    CorrectAnswer TEXT NOT NULL,
    QuestionDegree INT NOT NULL,
	CourseID INT,
	FOREIGN KEY (CourseID) REFERENCES Course(CourseID)
) ON SecondaryFG;
GO

CREATE TABLE McqOptions (
    Option_id INT PRIMARY Key IDENTITY(1,1),
    QuestionID INT,
    Options TEXT NOT NULL,
	Is_Correct BIT,
    FOREIGN KEY (QuestionID) REFERENCES QuestionPool(QuestionID)
) ON SecondaryFG;
GO

CREATE TABLE Course_Topics (
    Course_Topic_id INT PRIMARY KEY IDENTITY(1,1),
    TopicID INT,
    CourseID INT,
    FOREIGN KEY (TopicID) REFERENCES Topic(TopicID),
    FOREIGN KEY (CourseID) REFERENCES Course(CourseID)
)
GO

CREATE TABLE StudentAnswer (
    Student_Answer_id INT PRIMARY KEY IDENTITY(1,1),
    StudentID INT,
    QuestionID INT,
	ExamID int,
    Answer TEXT NOT NULL,
	Grade Decimal (5,2) NOT NULL,
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
    FOREIGN KEY (QuestionID) REFERENCES QuestionPool(QuestionID),
	FOREIGN KEY (ExamID) REFERENCES Exam(ExamID)
) ON SecondaryFG;
GO

CREATE TABLE Instructor_Courses (
    Inst_course_id INT PRIMARY KEY IDENTITY(1,1),
    InstructorID INT,
    CourseID INT,
	Year INT,
    FOREIGN KEY (InstructorID) REFERENCES Instructor(InstructorID),
    FOREIGN KEY (CourseID) REFERENCES Course(CourseID)
)
GO

CREATE TABLE Department_Intake (
    Depar_Intake_id INT PRIMARY KEY IDENTITY(1,1),
    DepartmentID INT,
    IntakeID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID),
    FOREIGN KEY (IntakeID) REFERENCES Intake(IntakeID)
)
GO

CREATE TABLE Track_Intake (
    Track_Intake_id INT PRIMARY KEY IDENTITY(1,1),
    TrackID INT,
    IntakeID INT,
    FOREIGN KEY (TrackID) REFERENCES Track(TrackID),
    FOREIGN KEY (IntakeID) REFERENCES Intake(IntakeID)
)
GO

CREATE TABLE Exam_questions (
    Exam_question_id INT PRIMARY KEY IDENTITY(1,1),
    ExamID INT,
    QuestionID INT,
    FOREIGN KEY (ExamID) REFERENCES Exam(ExamID),
    FOREIGN KEY (QuestionID) REFERENCES QuestionPool(QuestionID)
) ON SecondaryFG;
GO

CREATE TABLE Student_Courses (
    Stud_course_id INT PRIMARY KEY IDENTITY(1,1),
    StudentID INT,
    CourseID INT,
	Grade Decimal (5,2),
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Course(CourseID)
)
GO