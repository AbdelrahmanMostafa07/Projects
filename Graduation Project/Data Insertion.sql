INSERT INTO Department (DepartmentName) 
VALUES ('Computer Science'),
	   ('Information Technology'),
       ('Software Engineering'),
       ('Data Science'),
       ('Network Engineering'),
	   ('Artificial Intelligence'),
	   ('Cyber Security'),
	   ('Database Management'),
	   ('Human-Computer Interaction'),
	   ('Cloud Computing');
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Insert data into Intake table
INSERT INTO Intake (IntakeName, IntakeYear )
VALUES ('Intake 35',2016),
       ('Intake 36',2017),
       ('Intake 37',2018),
       ('Intake 38',2019),
       ('Intake 39',2020),
       ('Intake 40',2021),
       ('Intake 41',2022),
       ('Intake 42',2023),
       ('Intake 43',2024),
       ('Intake 44',2025);
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Insert data into Dept_intake table with multiple associations
INSERT INTO Department_Intake (DepartmentID , IntakeID)
VALUES 
    (1, 1),
    (1, 2),
    (2, 1),
    (2, 3),
    (3, 2),
    (3, 4),
    (4, 3),
    (4, 5),
    (5, 4),
    (5, 6),
    (6, 5),
    (6, 7),
    (7, 6),
    (7, 8),
    (8, 7),
    (8, 9),
    (9, 8),
    (9, 10),
    (10, 9),
    (10, 10);
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Insert data into Track table
INSERT INTO Track (TrackName) 
VALUES
    ('Full Stack Development'),
    ('Data Analysis'),
    ('Network Security'),
    ('Software Development'),
    ('AI & Machine Learning'),
    ('Cloud Technologies'),
    ('Database Design'),
    ('Human-Computer Interaction'),
    ('Data Engineering'),
    ('Web Development'),
    ('Cybersecurity'),
    ('Mobile App Development'),
    ('Blockchain Technology'),
    ('Business Intelligence'),
    ('Game Development');
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Insert data into Intake_track table with multiple associations
-- Intake 35
INSERT INTO Track_Intake (IntakeID, TrackID)
VALUES
    (1, 1),  -- Full Stack Development
    (1, 6),  -- Cloud Technologies
    (1, 11); -- Cybersecurity
GO
-- Intake 36
INSERT INTO Track_Intake (IntakeID, TrackID)
VALUES
    (2, 2),  -- Data Analysis
    (2, 7),  -- Database Design
    (2, 14); -- Business Intelligence
GO
-- Intake 37
INSERT INTO Track_Intake (IntakeID, TrackID)
VALUES
    (3, 3),  -- Network Security
    (3, 9),  -- Data Engineering
    (3, 13); -- Blockchain Technology
GO
-- Intake 38
INSERT INTO Track_Intake (IntakeID, TrackID)
VALUES
    (4, 4),  -- Software Development
    (4, 10), -- Web Development
    (4, 15); -- Game Development
GO
-- Intake 39
INSERT INTO Track_Intake (IntakeID, TrackID)
VALUES
    (5, 5),  -- AI & Machine Learning
    (5, 11), -- Cybersecurity
    (5, 12); -- Mobile App Development
GO
-- Intake 40
INSERT INTO Track_Intake (IntakeID, TrackID)
VALUES
    (6, 6),  -- Cloud Technologies
    (6, 12), -- Mobile App Development
    (6, 13); -- Blockchain Technology
GO
-- Intake 41
INSERT INTO Track_Intake (IntakeID, TrackID)
VALUES
    (7, 7),  -- Database Design
    (7, 13), -- Blockchain Technology
    (7, 14); -- Business Intelligence
GO
-- Intake 42
INSERT INTO Track_Intake (IntakeID, TrackID)
VALUES
    (8, 8),  -- Human-Computer Interaction
    (8, 14), -- Business Intelligence
    (8, 15); -- Game Development
GO
-- Intake 43
INSERT INTO Track_Intake (IntakeID, TrackID)
VALUES
    (9, 9),  -- Data Engineering
    (9, 15), -- Game Development
    (9, 12); -- Mobile App Development
GO
-- Intake 44
INSERT INTO Track_Intake (IntakeID, TrackID)
VALUES
    (10, 10), -- Web Development
    (10, 11), -- Cybersecurity
    (10, 13); -- Blockchain Technology
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO Topic (TopicName) 
VALUES
    -- Topics for Basic Programming
    ('Introduction to Programming'),
    ('Variables and Data Types'),
    ('Control Structures'),
    -- Topics for Database Design
    ('Entity-Relationship Modeling'),
    ('Normalization and Schema Design'),
    ('SQL Query Fundamentals'),
    -- Topics for Data Analysis
    ('Data Cleaning and Preprocessing'),
    ('Exploratory Data Analysis'),
    ('Statistical Methods'),
    -- Topics for Network Engineering
    ('Network Protocols'),
    ('IP Addressing and Subnetting'),
    ('Network Security'),
    -- Topics for Machine Learning
    ('Supervised Learning Algorithms'),
    ('Unsupervised Learning Techniques'),
    ('Model Evaluation and Validation'),
    -- Topics for Web Development
    ('HTML and CSS Basics'),
    ('JavaScript Programming'),
    ('Responsive Web Design'),
    -- Topics for Information Security
    ('Cybersecurity Fundamentals'),
    ('Cryptography Techniques'),
    ('Network Security Protocols'),
    -- Topics for Cloud Computing
    ('Introduction to Cloud Services'),
    ('Cloud Storage Solutions'),
    ('Cloud Security Best Practices'),
    -- Topics for Software Engineering
    ('Software Development Life Cycle'),
    ('Design Patterns'),
    ('Software Testing and Debugging'),
    -- Topics for Human-Computer Interaction
    ('User Interface Design'),
    ('Usability Testing'),
    ('Interaction Design Principles');
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO Course (CourseName, MinDegree , MaxDegree) 
VALUES
	('Basic Programming', 50.00, 100.00),
	('Database Design', 60.00, 100.00),
	('Data Analysis', 55.00, 100.00),
	('Network Engineering', 70.00, 100.00),
	('Machine Learning', 65.00, 100.00),
	('Web Development', 60.00, 100.00),
	('Information Security', 75.00, 100.00),
	('Cloud Computing', 68.00, 100.00),
	('Software Engineering', 72.00, 100.00),
	('Human-Computer Interaction', 62.00, 100.00);
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO Exam (ExamID, ExamType, StartTime, EndTime, AllowanceOptions, Year, TotalTime, CourseID, InstructorID) 
VALUES
    (1, 'Midterm Exam 1', '2024-10-01 09:00:00', '2024-10-01 11:00:00', 'No', 2024, '02:00:00', 1, 1),
    (2, 'Final Exam 1', '2024-12-10 14:00:00', '2024-12-10 16:00:00', 'Yes', 2024, '02:00:00', 2, 2),
    (3, 'Midterm Exam 2', '2024-10-15 09:00:00', '2024-10-15 11:00:00', 'No', 2024, '02:00:00', 3, 3),
    (4, 'Final Exam 2', '2024-12-20 14:00:00', '2024-12-20 16:00:00', 'Yes', 2024, '02:00:00', 4, 4),
    (5, 'Midterm Exam 3', '2024-11-01 09:00:00', '2024-11-01 11:00:00', 'No', 2024, '02:00:00', 5, 5),
    (6, 'Final Exam 3', '2024-01-10 14:00:00', '2024-01-10 16:00:00', 'Yes', 2024, '02:00:00', 6, 6),
    (7, 'Midterm Exam 4', '2024-02-01 09:00:00', '2024-02-01 11:00:00', 'No', 2024, '02:00:00', 7, 7),
    (8, 'Final Exam 4', '2024-03-10 14:00:00', '2024-03-10 16:00:00', 'Yes', 2024, '02:00:00', 8, 8),
    (9, 'Midterm Exam 5', '2024-04-01 09:00:00', '2024-04-01 11:00:00', 'No', 2024, '02:00:00', 9, 9),
    (10, 'Final Exam 5', '2024-06-10 14:00:00', '2024-06-10 16:00:00', 'Yes', 2024, '02:00:00', 10, 10);
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Insert data into Question_pool table for Exam 1
INSERT INTO QuestionPool (QuestionID , QuestionType , CorrectAnswer , QuestionDegree , CourseID, Question) 
VALUES
    (1, 'True/False', 'True', 10.00, 1, 'Is Python a programming language?'),
    (2, 'True/False', 'False', 10.00, 1, 'Is 27%9 greater than 1?'),
    (3, 'True/False', 'True', 10.00, 1, 'Is 2 an Integer Number?'),
    (4, 'True/False', 'False', 10.00, 1, 'Is 6 a Float number?'),
    (5, 'True/False', 'False', 10.00, 1, 'Does 10 / 100 evenly?'),
    (6, 'Multiple choices', 'A', 10.00, 1, 'Which symbol is used for addition in programmning?'),
    (7, 'Multiple choices', 'D', 10.00, 1, 'What Python Can be Used for?'),
    (8, 'Multiple choices', 'B', 10.00, 1, 'Which is a prime number?'),
    (9, 'Multiple choices', 'D', 10.00, 1, 'What is 5 * 6?'),
    (10, 'Multiple choices', 'A', 10.00, 1, 'What is the smallest prime number?'),
-- Insert data into Question_pool table for Exam 2
    (11, 'Multiple choices', 'B', 10.00, 2, 'What is normalization in databases?'),
    (12, 'Multiple choices', 'B', 10.00, 2, 'Which SQL command is used to retrieve data?'),
    (13, 'True/False', 'False', 10.00, 2, 'Can SQL be used for database design?'),
    (14, 'Multiple choices', 'A', 10.00, 2, 'What does SQL stand for?'),
    (15, 'True/False', 'True', 10.00, 2, 'Is a primary key unique for each record?'),
    (16, 'Multiple choices', 'A', 10.00, 2, 'Which SQL clause is used to filter results?'),
    (17, 'True/False', 'True', 10.00, 2, 'Does SQL support multi-table queries?'),
    (18, 'Multiple choices', 'C', 10.00, 2, 'Which SQL function calculates average?'),
    (19, 'True/False', 'True', 10.00, 2, 'Can SQL be used for data manipulation?'),
    (20, 'Multiple choices', 'B', 10.00, 2, 'What is an outer join in SQL?'),
-- Insert data into Question_pool table for Exam 3
    (21, 'True/False', 'True', 10.00, 3, 'Data analysis involves inspecting, cleansing, and modeling data.'),
    (22, 'Multiple choices', 'A', 10.00, 3, 'Which tool is commonly used for data analysis?'),
    (23, 'True/False', 'False', 10.00, 3, 'Data cleaning is not part of data analysis.'),
    (24, 'Multiple choices', 'B', 10.00, 3, 'Which technique is used to summarize data?'),
    (25, 'True/False', 'True', 10.00, 3, 'Data visualization helps to represent data graphically.'),
    (26, 'Multiple choices', 'C', 10.00, 3, 'Which chart type is used for frequency distribution?'),
    (27, 'True/False', 'False', 10.00, 3, 'Correlation analysis is used to predict future trends directly.'),
    (28, 'Multiple choices', 'D', 10.00, 3, 'Which method is used for statistical inference?'),
    (29, 'True/False', 'True', 10.00, 3, 'Hypothesis testing is a component of data analysis.'),
    (30, 'Multiple choices', 'A', 10.00, 3, 'What does regression analysis help determine?'),
-- Insert data into Question_pool table for Exam 4
    (31, 'True/False', 'False', 10.00, 4, 'A network protocol defines the rules for data communication between devices.'),
    (32, 'Multiple choices', 'B', 10.00, 4, 'Which layer of the OSI model is responsible for routing?'),
    (33, 'True/False', 'False', 10.00, 4, 'TCP is a connectionless protocol.'),
    (34, 'Multiple choices', 'C', 10.00, 4, 'What does DHCP stand for?'),
    (35, 'True/False', 'True', 10.00, 4, 'IP address configuration is part of network setup.'),
    (36, 'Multiple choices', 'D', 10.00, 4, 'Which protocol is used for secure communication?'),
    (37, 'True/False', 'False', 10.00, 4, 'DNS is used for email delivery.'),
    (38, 'Multiple choices', 'A', 10.00, 4, 'Which device connects multiple networks?'),
    (39, 'True/False', 'True', 10.00, 4, 'NAT stands for Network Address Translation.'),
    (40, 'Multiple choices', 'B', 10.00, 4, 'Which protocol operates at the transport layer?'),
-- Insert data into Question_pool table for Exam 5
    (41, 'True/False', 'False', 10.00, 5, 'Machine learning is a subset of artificial intelligence.'),
    (42, 'Multiple choices', 'C', 10.00, 5, 'Which algorithm is used for classification?'),
    (43, 'True/False', 'False', 10.00, 5, 'Supervised learning is used for clustering.'),
    (44, 'Multiple choices', 'D', 10.00, 5, 'What does SVM stand for in machine learning?'),
    (45, 'True/False', 'True', 10.00, 5, 'Overfitting is a problem in machine learning.'),
    (46, 'Multiple choices', 'A', 10.00, 5, 'Which method is used for dimensionality reduction?'),
    (47, 'True/False', 'False', 10.00, 5, 'K-means clustering is a supervised learning technique.'),
    (48, 'Multiple choices', 'B', 10.00, 5, 'Which library is commonly used for machine learning in Python?'),
    (49, 'True/False', 'True', 10.00, 5, 'Cross-validation is used to assess model performance.'),
    (50, 'Multiple choices', 'B', 10.00, 5, 'What is the purpose of a loss function in machine learning?'),
-- Insert data into Question_pool table for Exam 6
    (51, 'True/False', 'True', 10.00, 2, 'A relational database uses tables to store data.'),
    (52, 'Multiple choices', 'A', 10.00, 2, 'Which SQL command is used to create a table?'),
    (53, 'True/False', 'False', 10.00, 2, 'SQL does not support primary keys.'),
    (54, 'Multiple choices', 'C', 10.00, 2, 'Which SQL command is used to add data to a table?'),
    (55, 'True/False', 'True', 10.00, 2, 'A foreign key is used to establish a relationship between tables.'),
    (56, 'Multiple choices', 'B', 10.00, 2, 'Which SQL clause is used to sort data?'),
    (57, 'True/False', 'False', 10.00, 2, 'SQL does not support transactions.'),
    (58, 'Multiple choices', 'C', 10.00, 2, 'Which SQL function calculates the total of a numeric column?'),
    (59, 'True/False', 'True', 10.00, 2, 'Normalization helps to eliminate data redundancy.'),
    (60, 'Multiple choices', 'C', 10.00, 2, 'What is a view in SQL?'),
-- Insert data into Question_pool table for Exam 7
    (61, 'True/False', 'True', 10.00, 1, 'A class in object-oriented programming is a blueprint for creating objects.'),
    (62, 'Multiple choices', 'D', 10.00, 1, 'Which concept is used to hide the internal details of an object?'),
    (63, 'True/False', 'False', 10.00, 1, 'Inheritance is a concept where a subclass inherits the properties of a superclass.'),
    (64, 'Multiple choices', 'A', 10.00, 1, 'Which keyword is used to create a new class in Java?'),
    (65, 'True/False', 'True', 10.00, 1, 'Polymorphism allows methods to do different things based on the object it is acting upon.'),
    (66, 'Multiple choices', 'B', 10.00, 1, 'Which keyword is used to refer to the current object in Java?'),
    (67, 'True/False', 'False', 10.00, 1, 'In encapsulation, a class can have multiple public methods.'),
    (68, 'Multiple choices', 'C', 10.00, 1, 'Which method is used to initialize an object in Java?'),
    (69, 'True/False', 'True', 10.00, 1, 'Abstraction involves hiding the complex implementation details and showing only the necessary features.'),
    (70, 'Multiple choices', 'A', 10.00, 1, 'What does the term "method overloading" refer to?'),
-- Insert data into Question_pool table for Exam 8
    (71, 'True/False', 'False', 10.00, 4, 'A network packet is a single unit of data transmitted over a network.'),
    (72, 'Multiple choices', 'C', 10.00, 4, 'Which protocol is used to transfer files over the internet?'),
    (73, 'True/False', 'True', 10.00, 4, 'IP address is used to identify devices on a network.'),
    (74, 'Multiple choices', 'A', 10.00, 4, 'What is the purpose of the OSI model?'),
    (75, 'True/False', 'True', 10.00, 4, 'The transport layer is responsible for end-to-end communication.'),
    (76, 'Multiple choices', 'B', 10.00, 4, 'Which layer of the OSI model is responsible for data encryption?'),
    (77, 'True/False', 'False', 10.00, 4, 'TCP is a connectionless protocol.'),
    (78, 'Multiple choices', 'A', 10.00, 4, 'What does DNS stand for?'),
    (79, 'True/False', 'True', 10.00, 4, 'A MAC address is used to uniquely identify a network interface card.'),
    (80, 'Multiple choices', 'A', 10.00, 4, 'Which protocol ensures reliable data transmission?'),
-- Insert data into Question_pool table for Exam 9
    (81, 'True/False', 'False', 10.00, 3, 'A database index speeds up data retrieval but slows down data insertion.'),
    (82, 'Multiple choices', 'D', 10.00, 3, 'Which type of database is suitable for large-scale unstructured data?'),
    (83, 'True/False', 'True', 10.00, 3, 'A foreign key is used to link records between two tables.'),
    (84, 'Multiple choices', 'A', 10.00, 3, 'What does ACID stand for in databases?'),
    (85, 'True/False', 'True', 10.00, 3, 'Database normalization reduces data redundancy.'),
    (86, 'Multiple choices', 'C', 10.00, 3, 'Which SQL statement is used to update existing records in a table?'),
    (87, 'True/False', 'False', 10.00, 3, 'A primary key can be NULL.'),
    (88, 'Multiple choices', 'C', 10.00, 3, 'Which SQL clause is used to filter records?'),
    (89, 'True/False', 'True', 10.00, 3, 'A unique key constraint ensures that all values in a column are different.'),
    (90, 'Multiple choices', 'D', 10.00, 3, 'What is the purpose of a database schema?'),
-- Insert data into Question_pool table for Exam 10
    (91, 'True/False', 'True', 10.00, 9, 'The software development lifecycle includes phases like planning and testing.'),
    (92, 'Multiple choices', 'B', 10.00, 9, 'Which methodology emphasizes iterative development?'),
    (93, 'True/False', 'False', 10.00, 9, 'Agile methodology is a linear approach to software development.'),
    (94, 'Multiple choices', 'C', 10.00, 9, 'What is a key characteristic of Scrum?'),
    (95, 'True/False', 'True', 10.00, 9, 'In software testing, regression testing ensures that new code changes do not negatively affect existing functionalities.'),
    (96, 'Multiple choices', 'C', 10.00, 9, 'Which phase involves coding in the software development lifecycle?'),
    (97, 'True/False', 'False', 10.00, 9, 'The design phase comes after the implementation phase in SDLC.'),
    (98, 'Multiple choices', 'D', 10.00, 9, 'Which document outlines the requirements of a software project?'),
    (99, 'True/False', 'True', 10.00, 9, 'Unit testing focuses on testing individual components of software.'),
    (100, 'Multiple choices', 'A', 10.00, 9, 'What is the primary goal of user acceptance testing?'),
-- Exam 11
    (101, 'True/False', 'True', 10.00, 2, 'The database normalization process aims to eliminate data redundancy.'),
    (102, 'True/False', 'False', 10.00, 2, 'In object-oriented programming, classes are instances of objects.'),
    (103, 'Multiple choices', 'A', 10.00, 2, 'Which SQL command is used to retrieve data from a table?'),
    (104, 'Multiple choices', 'C', 10.00, 2, 'Which keyword is used to filter records in SQL?'),
    (105, 'True/False', 'True', 10.00, 2, 'A primary key must be unique for each record in a table.'),
    (106, 'True/False', 'False', 10.00, 2, 'In relational databases, foreign keys are used to ensure the uniqueness of data.'),
    (107, 'Multiple choices', 'C', 10.00, 2, 'What does the SQL JOIN operation do?'),
    (108, 'Multiple choices', 'B', 10.00, 2, 'Which type of JOIN returns all rows from the left table and matched rows from the right table?'),
    (109, 'True/False', 'True', 10.00, 2, 'In SQL, a UNIQUE constraint ensures that all values in a column are different.'),
    (110, 'True/False', 'False', 10.00, 2, 'The GROUP BY clause is used to sort the result set of a query.'),
-- Exam 12
    (111, 'True/False', 'True', 10.00, 5, 'Data mining involves analyzing large datasets to find patterns and relationships.'),
    (112, 'True/False', 'False', 10.00, 5, 'Big Data refers to datasets that are small and manageable using traditional tools.'),
    (113, 'Multiple choices', 'A', 10.00, 5, 'Which technique is commonly used for data classification?'),
    (114, 'Multiple choices', 'B', 10.00, 5, 'What is the primary goal of data visualization?'),
    (115, 'True/False', 'True', 10.00, 5, 'In data mining, clustering is used to group similar data points together.'),
    (116, 'True/False', 'False', 10.00, 5, 'Regression analysis is used for predicting categorical outcomes.'),
    (117, 'Multiple choices', 'C', 10.00, 5, 'Which algorithm is used for association rule learning?'),
    (118, 'Multiple choices', 'A', 10.00, 5, 'What does ETL stand for in data processing?'),
    (119, 'True/False', 'True', 10.00, 5, 'In data warehousing, data marts are subsets of data warehouses focused on specific business areas.'),
    (120, 'True/False', 'False', 10.00, 5, 'Data cleaning involves removing redundant records from the database.'),
-- Exam 13
    (121, 'True/False', 'True', 10.00, 7, 'Cybersecurity involves protecting systems from unauthorized access and attacks.'),
    (122, 'True/False', 'False', 10.00, 7, 'A firewall is used to enhance the physical security of a network.'),
    (123, 'Multiple choices', 'C', 10.00, 7, 'What type of attack involves intercepting communications between two parties?'),
    (124, 'Multiple choices', 'A', 10.00, 7, 'Which security principle ensures that access to resources is restricted to authorized users only?'),
    (125, 'True/False', 'True', 10.00, 7, 'Encryption is used to protect data by converting it into a code that can only be deciphered with a key.'),
    (126, 'True/False', 'False', 10.00, 7, 'Antivirus software is used primarily to prevent data breaches through physical means.'),
    (127, 'Multiple choices', 'C', 10.00, 7, 'Which protocol is used to secure communications over a network?'),
    (128, 'Multiple choices', 'A', 10.00, 7, 'Which of the following is a type of malware?'),
    (129, 'True/False', 'True', 10.00, 7, 'Regular software updates help protect systems from known vulnerabilities.'),
    (130, 'True/False', 'False', 10.00, 7, 'A denial-of-service attack aims to gain unauthorized access to confidential information.'),
-- Exam 14
    (131, 'True/False', 'True', 10.00, 5, 'Artificial Intelligence involves the simulation of human intelligence in machines.'),
    (132, 'True/False', 'False', 10.00, 5, 'Machine Learning is a subset of Artificial Intelligence focused on rule-based systems.'),
    (133, 'Multiple choices', 'A', 10.00, 5, 'Which algorithm is commonly used in supervised learning?'),
    (134, 'Multiple choices', 'B', 10.00, 5, 'What is the primary goal of reinforcement learning?'),
    (135, 'True/False', 'True', 10.00, 5, 'Deep Learning uses neural networks with multiple layers to model complex patterns.'),
    (136, 'True/False', 'False', 10.00, 5, 'In supervised learning, the model is trained without labeled data.'),
    (137, 'Multiple choices', 'B', 10.00, 5, 'Which type of neural network is most suitable for image recognition?'),
    (138, 'Multiple choices', 'B', 10.00, 5, 'What technique is used to prevent overfitting in machine learning models?'),
    (139, 'True/False', 'True', 10.00, 5, 'In natural language processing, tokenization involves splitting text into individual words or phrases.'),
    (140, 'True/False', 'False', 10.00, 5, 'Reinforcement learning does not require an environment to interact with.'),
-- Exam 15
    (141, 'True/False', 'True', 10.00, 8, 'Cloud computing provides on-demand access to shared computing resources.'),
    (142, 'True/False', 'False', 10.00, 8, 'In cloud computing, data storage is always managed on-premises.'),
    (143, 'Multiple choices', 'A', 10.00, 8, 'Which cloud service model provides the most control to the user?'),
    (144, 'Multiple choices', 'A', 10.00, 8, 'What does SaaS stand for?'),
    (145, 'True/False', 'True', 10.00, 8, 'In a public cloud, resources are shared among multiple organizations.'),
    (146, 'True/False', 'False', 10.00, 8, 'Private clouds are hosted on the public internet and shared with other organizations.'),
    (147, 'Multiple choices', 'A', 10.00, 8, 'Which of the following is a key benefit of cloud computing?'),
    (148, 'Multiple choices', 'B', 10.00, 8, 'What is the main advantage of cloud storage over traditional storage?'),
    (149, 'True/False', 'True', 10.00, 8, 'Cloud computing allows for automatic updates and patch management.'),
    (150, 'True/False', 'False', 10.00, 8, 'In cloud computing, data is not encrypted during transmission.'),
-- Exam 16
    (151, 'True/False', 'True', 10.00, 10, 'Game development involves creating interactive experiences and entertainment software.'),
    (152, 'True/False', 'False', 10.00, 10, 'In game development, graphics and sound are secondary to gameplay.'),
    (153, 'Multiple choices', 'A', 10.00, 10, 'Which programming language is commonly used for game development?'),
    (154, 'Multiple choices', 'B', 10.00, 10, 'Which of the following is a popular game engine?'),
    (155, 'True/False', 'True', 10.00, 10, 'In game development, collision detection is used to determine when two objects interact.'),
    (156, 'True/False', 'False', 10.00, 10, 'The game development process does not include testing for bugs and errors.'),
    (157, 'Multiple choices', 'C', 10.00, 10, 'What is the primary role of a game designer?'),
    (158, 'Multiple choices', 'D', 10.00, 10, 'Which technique is used to create realistic movements in games?'),
    (159, 'True/False', 'True', 10.00, 10, 'A game engine typically includes a development environment, tools, and libraries.'),
    (160, 'True/False', 'False', 10.00, 10, 'Game development only requires programming skills and no other expertise.'),
-- Exam 17
    (161, 'True/False', 'True', 10.00, 9, 'Blockchain technology provides a decentralized ledger of transactions.'),
    (162, 'True/False', 'False', 10.00, 9, 'Blockchain networks are typically managed by a single centralized authority.'),
    (163, 'Multiple choices', 'A', 10.00, 9, 'What is the main benefit of using blockchain technology?'),
    (164, 'Multiple choices', 'B', 10.00, 9, 'Which consensus mechanism is commonly used in blockchain networks?'),
    (165, 'True/False', 'True', 10.00, 9, 'In a blockchain, each block contains a cryptographic hash of the previous block.'),
    (166, 'True/False', 'False', 10.00, 9, 'Blockchain technology guarantees complete privacy for all transactions.'),
    (167, 'Multiple choices', 'C', 10.00, 9, 'Which of the following is a common use case for blockchain technology?'),
    (168, 'Multiple choices', 'D', 10.00, 9, 'What is a smart contract in blockchain technology?'),
    (169, 'True/False', 'True', 10.00, 9, 'Blockchain transactions are typically verified by network participants known as miners.'),
    (170, 'True/False', 'False', 10.00, 9, 'Blockchain technology is only used for cryptocurrency applications.'),
-- Exam 18
    (171, 'True/False', 'True', 10.00, 3, 'Data visualization helps in understanding and interpreting complex data sets.'),
    (172, 'True/False', 'False', 10.00, 3, 'Data visualization tools are primarily used for data storage.'),
    (173, 'Multiple choices', 'A', 10.00, 3, 'Which of the following is a popular data visualization tool?'),
    (174, 'Multiple choices', 'D', 10.00, 3, 'What is the primary purpose of a dashboard in data visualization?'),
    (175, 'True/False', 'True', 10.00, 3, 'Interactive charts allow users to explore data in more detail.'),
    (176, 'True/False', 'False', 10.00, 3, 'Data visualization only includes static graphs and charts.'),
    (177, 'Multiple choices', 'C', 10.00, 3, 'Which type of chart is best for showing trends over time?'),
    (178, 'Multiple choices', 'C', 10.00, 3, 'What is a heat map used for in data visualization?'),
    (179, 'True/False', 'True', 10.00, 3, 'Data visualization helps to communicate insights effectively to stakeholders.'),
    (180, 'True/False', 'False', 10.00, 3, 'Data visualization tools cannot handle large datasets.'),
-- Exam 19
    (181, 'True/False', 'True', 10.00, 10, 'Human-Computer Interaction (HCI) focuses on designing user interfaces that are easy to use.'),
    (182, 'True/False', 'False', 10.00, 10, 'HCI only considers the hardware aspects of computer systems.'),
    (183, 'Multiple choices', 'A', 10.00, 10, 'Which principle is important in HCI design?'),
    (184, 'Multiple choices', 'B', 10.00, 10, 'What is a common method for gathering user requirements in HCI?'),
    (185, 'True/False', 'True', 10.00, 10, 'Usability testing involves observing how users interact with a system to identify problems.'),
    (186, 'True/False', 'False', 10.00, 10, 'HCI design does not involve understanding user behavior.'),
    (187, 'Multiple choices', 'C', 10.00, 10, 'Which model describes the interaction between users and systems in HCI?'),
    (188, 'Multiple choices', 'D', 10.00, 10, 'Which type of interface is most commonly used in modern applications?'),
    (189, 'True/False', 'True', 10.00, 10, 'Prototyping is a method used in HCI to develop early versions of a system for user feedback.'),
    (190, 'True/False', 'False', 10.00, 10, 'HCI design focuses only on visual aspects of user interfaces.'),
-- Exam 20
    (191, 'True/False', 'True', 10.00, 5, 'Artificial Intelligence (AI) involves creating systems that can perform tasks that typically require human intelligence.'),
    (192, 'True/False', 'False', 10.00, 5, 'AI systems do not require data to learn and improve.'),
    (193, 'Multiple choices', 'A', 10.00, 5, 'Which of the following is a type of AI?'),
    (194, 'Multiple choices', 'B', 10.00, 5, 'What is the goal of supervised learning in AI?'),
    (195, 'True/False', 'True', 10.00, 5, 'In AI, neural networks are inspired by the structure of the human brain.'),
    (196, 'True/False', 'False', 10.00, 5, 'AI systems can operate independently without any human input or guidance.'),
    (197, 'Multiple choices', 'A', 10.00, 5, 'Which technique is used for unsupervised learning?'),
    (198, 'Multiple choices', 'B', 10.00, 5, 'What is a common application of AI in customer service?'),
    (199, 'True/False', 'True', 10.00, 5, 'AI technologies are being increasingly used for automation in various industries.'),
    (200, 'True/False', 'False', 10.00, 5, 'AI systems are completely error-free and reliable.'),
-- Exam 21
    (201, 'True/False', 'True', 10.00, 7, 'Ethical hacking involves testing systems for vulnerabilities to improve security.'),
    (202, 'True/False', 'False', 10.00, 7, 'Ethical hackers perform illegal activities to gain unauthorized access.'),
    (203, 'Multiple choices', 'A', 10.00, 7, 'Which of the following is a common tool used in ethical hacking?'),
    (204, 'Multiple choices', 'B', 10.00, 7, 'What is the purpose of penetration testing in ethical hacking?'),
    (205, 'True/False', 'True', 10.00, 7, 'Ethical hackers often work with organizations to enhance their security measures.'),
    (206, 'True/False', 'False', 10.00, 7, 'Ethical hacking does not require legal permissions from the organizations being tested.'),
    (207, 'Multiple choices', 'A', 10.00, 7, 'What is a common method used in ethical hacking?)'),
    (208, 'Multiple choices', 'A', 10.00, 7, 'Which of the following is a phase in the ethical hacking process?'),
    (209, 'True/False', 'True', 10.00, 7, 'Ethical hackers use various techniques to find vulnerabilities in systems and applications.'),
    (210, 'True/False', 'False', 10.00, 7, 'Ethical hacking is the same as malicious hacking.'),
-- Exam 22
    (211, 'True/False', 'True', 10.00, 8, 'Cloud architecture includes designing the infrastructure needed to support cloud services.'),
    (212, 'True/False', 'False', 10.00, 8, 'Cloud architecture does not consider scalability and redundancy.'),
    (213, 'Multiple choices', 'A', 10.00, 8, 'Which component is part of cloud architecture?'),
    (214, 'Multiple choices', 'B', 10.00, 8, 'What is the purpose of load balancing in cloud architecture?'),
    (215, 'True/False', 'True', 10.00, 8, 'Scalability is an important aspect of cloud architecture to handle varying loads.'),
    (216, 'True/False', 'False', 10.00, 8, 'Cloud architecture does not involve any form of data backup.'),
    (217, 'Multiple choices', 'A', 10.00, 8, 'Which service model includes managing infrastructure and platforms?'),
    (218, 'Multiple choices', 'D', 10.00, 8, 'What is a key feature of multi-cloud architecture?'),
    (219, 'True/False', 'True', 10.00, 8, 'Cloud architecture involves planning for both availability and disaster recovery.'),
    (220, 'True/False', 'False', 10.00, 8, 'Cloud architecture is only concerned with software applications.'),
-- Exam 23
    (221, 'True/False', 'True', 10.00, 9, 'Robotic Process Automation (RPA) involves using software robots to automate repetitive tasks.'),
    (222, 'True/False', 'False', 10.00, 9, 'RPA is used primarily for designing new software applications.'),
    (223, 'Multiple choices', 'B', 10.00, 9, 'Which of the following is a benefit of RPA?'),
    (224, 'Multiple choices', 'A', 10.00, 9, 'What type of tasks are suitable for RPA?'),
    (225, 'True/False', 'True', 10.00, 9, 'RPA can help reduce human error in data entry processes.'),
    (226, 'True/False', 'False', 10.00, 9, 'RPA requires significant changes to existing IT infrastructure.'),
    (227, 'Multiple choices', 'B', 10.00, 9, 'Which of the following is a common tool used for RPA?'),
    (228, 'Multiple choices', 'C', 10.00, 9, 'What is a key advantage of RPA in business operations?'),
    (229, 'True/False', 'True', 10.00, 9, 'RPA can be used to automate tasks across multiple systems and applications.'),
    (230, 'True/False', 'False', 10.00, 9, 'RPA is limited to use within a single software application.'),
-- Exam 24
    (231, 'True/False', 'True', 10.00, 5, 'Computational Statistics involves using statistical methods to analyze and interpret data.'),
    (232, 'True/False', 'False', 10.00, 5, 'Computational Statistics does not require knowledge of programming.'),
    (233, 'Multiple choices', 'A', 10.00, 5, 'Which of the following is a common method used in Computational Statistics?'),
    (234, 'Multiple choices', 'B', 10.00, 5, 'What is the primary goal of regression analysis?'),
    (235, 'True/False', 'True', 10.00, 5, 'Statistical models are used to make predictions based on data patterns.'),
    (236, 'True/False', 'False', 10.00, 5, 'Computational Statistics only deals with qualitative data.'),
    (237, 'Multiple choices', 'C', 10.00, 5, 'Which tool is commonly used for statistical analysis?'),
    (238, 'Multiple choices', 'C', 10.00, 5, 'What is a key component of hypothesis testing?'),
    (239, 'True/False', 'True', 10.00, 5, 'Computational Statistics can be used to analyze large datasets efficiently.'),
    (240, 'True/False', 'False', 10.00, 5, 'Computational Statistics does not involve any form of data preprocessing.'),
-- Exam 25
    (241, 'True/False', 'True', 10.00, 10, 'Digital marketing strategies involve using online channels to promote products and services.'),
    (242, 'True/False', 'False', 10.00, 10, 'Digital marketing strategies only include email campaigns.'),
    (243, 'Multiple choices', 'A', 10.00, 10, 'Which of the following is a common digital marketing tool?'),
    (244, 'Multiple choices', 'B', 10.00, 10, 'What is the main goal of search engine optimization (SEO)?'),
    (245, 'True/False', 'True', 10.00, 10, 'Content marketing focuses on creating valuable content to attract and engage an audience.'),
    (246, 'True/False', 'False', 10.00, 10, 'Digital marketing is limited to social media platforms.'),
    (247, 'Multiple choices', 'C', 10.00, 10, 'Which of the following is a key metric for measuring the effectiveness of a digital marketing campaign?'),
    (248, 'Multiple choices', 'C', 10.00, 10, 'What is a common practice in email marketing?'),
    (249, 'True/False', 'True', 10.00, 10, 'Pay-per-click (PPC) advertising involves paying for each click on an ad.'),
    (250, 'True/False', 'False', 10.00, 10, 'Digital marketing does not involve analyzing campaign performance.'),
-- Exam 26
    (251, 'True/False', 'True', 10.00, 10, 'Project management involves planning, executing, and overseeing projects to achieve specific goals.'),
    (252, 'True/False', 'False', 10.00, 10, 'Project management does not include risk assessment and management.'),
    (253, 'Multiple choices', 'A', 10.00, 10, 'Which methodology focuses on iterative development and constant feedback?'),
    (254, 'Multiple choices', 'C', 10.00, 10, 'What is a key component of the project planning phase?'),
    (255, 'True/False', 'True', 10.00, 10, 'Project managers are responsible for coordinating resources and team members.'),
    (256, 'True/False', 'False', 10.00, 10, 'Project management does not involve setting clear objectives and milestones.'),
    (257, 'Multiple choices', 'C', 10.00, 10, 'Which tool is commonly used for tracking project progress?'),
    (258, 'Multiple choices', 'C', 10.00, 10, 'What is the purpose of a project scope statement?'),
    (259, 'True/False', 'True', 10.00, 10, 'Risk management in project management involves identifying and mitigating potential risks.'),
    (260, 'True/False', 'False', 10.00, 10, 'Project management focuses only on completing tasks on time.'),
-- Exam 27
    (261, 'True/False', 'True', 10.00, 9, 'Software development involves designing, coding, and testing applications.'),
    (262, 'True/False', 'False', 10.00, 9, 'Software development does not include debugging and maintenance.'),
    (263, 'Multiple choices', 'C', 10.00, 9, 'Which phase of software development involves writing code?'),
    (264, 'Multiple choices', 'C', 10.00, 9, 'What is the purpose of software testing?'),
    (265, 'True/False', 'True', 10.00, 9, 'Version control systems help manage changes to source code over time.'),
    (266, 'True/False', 'False', 10.00, 9, 'Software development does not require collaboration among team members.'),
    (267, 'Multiple choices', 'C', 10.00, 9, 'Which model focuses on delivering software incrementally?'),
    (268, 'Multiple choices', 'A', 10.00, 9, 'What is a common tool for version control?'),
    (269, 'True/False', 'True', 10.00, 9, 'Documentation is important for understanding and maintaining software.'),
    (270, 'True/False', 'False', 10.00, 9, 'Software development only involves coding and ignores user requirements.'),
-- Exam 28
    (271, 'True/False', 'True', 10.00, 3, 'Data analysis involves inspecting and interpreting data to uncover insights.'),
    (272, 'True/False', 'False', 10.00, 3, 'Data analysis does not require statistical methods.'),
    (273, 'Multiple choices', 'A', 10.00, 3, 'Which technique is used for summarizing data distributions?'),
    (274, 'Multiple choices', 'B', 10.00, 3, 'What is the purpose of data visualization?'),
    (275, 'True/False', 'True', 10.00, 3, 'Data cleaning involves removing inaccuracies and inconsistencies from datasets.'),
    (276, 'True/False', 'False', 10.00, 3, 'Data analysis is only concerned with the collection of data.'),
    (277, 'Multiple choices', 'C', 10.00, 3, 'Which tool is commonly used for data analysis?'),
    (278, 'Multiple choices', 'C', 10.00, 3, 'What is a common technique for finding correlations in data?'),
    (279, 'True/False', 'True', 10.00, 3, 'Exploratory Data Analysis (EDA) helps to understand the main characteristics of data.'),
    (280, 'True/False', 'False', 10.00, 3, 'Data analysis does not involve interpreting the results.'),
-- Exam 29
    (281, 'True/False', 'True', 10.00, 2, 'Database management involves organizing and maintaining data efficiently.'),
    (282, 'True/False', 'False', 10.00, 2, 'Database management does not require backup and recovery processes.'),
    (283, 'Multiple choices', 'A', 10.00, 2, 'Which type of database model uses tables to store data?'),
    (284, 'Multiple choices', 'B', 10.00, 2, 'What is SQL used for in database?'),
    (285, 'True/False', 'True', 10.00, 2, 'Normalization helps to reduce data redundancy in relational databases.'),
    (286, 'True/False', 'False', 10.00, 2, 'Database management systems do not require security measures.'),
    (287, 'Multiple choices', 'C', 10.00, 2, 'Which tool is commonly used for database management?'),
    (288, 'Multiple choices', 'A', 10.00, 2, 'What is a primary key in a database?'),
    (289, 'True/False', 'True', 10.00, 2, 'Database transactions ensure data integrity and consistency.'),
    (290, 'True/False', 'False', 10.00, 2, 'Database management does not involve handling concurrent user access.'),
-- Exam 30
    (291, 'True/False', 'True', 10.00, 7, 'Cybersecurity involves protecting systems and networks from digital attacks.'),
    (292, 'True/False', 'False', 10.00, 7, 'Cybersecurity is only concerned with protecting hardware.'),
    (293, 'Multiple choices', 'A', 10.00, 7, 'Which of the following is a common cybersecurity threat?'),
    (294, 'Multiple choices', 'C', 10.00, 7, 'What is the purpose of encryption in cybersecurity?'),
    (295, 'True/False', 'True', 10.00, 7, 'Firewalls help to monitor and control incoming and outgoing network traffic.'),
    (296, 'True/False', 'False', 10.00, 7, 'Cybersecurity does not require regular updates and patches.'),
    (297, 'Multiple choices', 'C', 10.00, 7, 'Which technique is used to verify the identity of users in cybersecurity?'),
    (298, 'Multiple choices', 'C', 10.00, 7, 'What is a common practice for maintaining cybersecurity?'),
    (299, 'True/False', 'True', 10.00, 7, 'Multi-factor authentication adds an additional layer of security beyond just a password.'),
    (300, 'True/False', 'False', 10.00, 7, 'Cybersecurity measures are only needed for large organizations.');
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO Instructor (Name , Email, Phone, Salary , TrainingManager_id) 
VALUES
	('Ahmed Khaled', 'ahmed.khaled@example.com', '01123456789', 5000.00, NULL),
	('Fatima Ali', 'fatima.ali@example.com', '01234567890', 5500.00, 1),
	('Mohamed Hassan', 'mohamed.hassan@example.com', '01012345678', 6000.00, 2),
	('Sara Ibrahim', 'sara.ibrahim@example.com', '01512345678', 6200.00, 1),
	('Youssef Ahmed', 'youssef.ahmed@example.com', '01198765432', 5800.00, 2),
	('Amina Mohamed', 'amina.mohamed@example.com', '01287654321', 5900.00, 3),
	('Omar Ali', 'omar.ali@example.com', '01023456789', 6100.00, 4),
	('Laila Ahmed', 'laila.ahmed@example.com', '01598765432', 6300.00, 5),
	('Hassan Mohamed', 'hassan.mohamed@example.com', '01165432198', 5700.00, 6),
	('Nadia Ibrahim', 'nadia.ibrahim@example.com', '01245678901', 6000.00, 7),
	('Khaled Mansour', 'khaled.mansour@example.com', '01034567890', 6200.00, 2),
	('Mona Ahmed', 'mona.ahmed@example.com', '01567890123', 5900.00, 3),
	('Ali Rami', 'ali.rami@example.com', '01123456780', 5800.00, 4),
	('Rana Mahmoud', 'rana.mahmoud@example.com', '01234567891', 6050.00, 5),
	('Fady Adel', 'fady.adel@example.com', '01098765432', 6000.00, 6),
	('Salma El Gohary', 'salma.elgohary@example.com', '01512345679', 6150.00, 7),
	('Ziad Mostafa', 'ziad.mostafa@example.com', '01187654321', 6250.00, 8),
	('Nour Hassan', 'nour.hassan@example.com', '01298765432', 6100.00, 9),
	('Layla Farid', 'layla.farid@example.com', '01012345679', 5950.00, 10),
	('Yasser Omar', 'yasser.omar@example.com', '01523456789', 6050.00, 1);
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO Student (StudentID, Name , Email, Phone, TrackID) 
VALUES
    (1, 'Omar Ahmed', 'omar.ahmed@example.com', '01111222333', 1),
    (2, 'Mariam Khaled', 'mariam.khaled@example.com', '01233445566', 2),
    (3, 'Hassan Ali', 'hassan.ali@example.com', '01055667788', 3),
    (4, 'Nadia Mohamed', 'nadia.mohamed@example.com', '01599887766', 4),
    (5, 'Youssef Ibrahim', 'youssef.ibrahim@example.com', '01122334455', 5),
    (6, 'Fatima Hassan', 'fatima.hassan@example.com', '01255667788', 6),
    (7, 'Ahmed Ali', 'ahmed.ali@example.com', '01066778809', 7),
    (8, 'Sara Ahmed', 'sara.ahmed1@example.com', '01522334455', 8),
    (9, 'Mohamed Ibrahim', 'mohamed.ibrahim@example.com', '01133445566', 9),
    (10, 'Amina Khaled', 'amina.khaled@example.com', '01266778899', 10),
    (11, 'Hassan Mohamed', 'hassan.mohamed@example.com', '0108888909', 1),
    (12, 'Mona Ali', 'mona.ali@example.com', '01122334456', 2),
    (13, 'Omar Rami', 'omar.rami@example.com', '01233445567', 3),
    (14, 'Laila Farid', 'laila.farid@example.com', '01055667789', 4),
    (15, 'Nour Khaled', 'nour.khaled@example.com', '01133445567', 5),
    (16, 'Yasser Ibrahim', 'yasser.ibrahim@example.com', '01255667789', 6),
    (17, 'Fatima Ali', 'fatima.ali1@example.com', '01066778899', 7),
    (18, 'Rana Ahmed', 'rana.ahmed@example.com', '01522334456', 8),
    (19, 'Hassan Rami', 'hassan.rami@example.com', '01122334467', 9),
    (20, 'Mariam Farid', 'mariam.farid@example.com', '01266778890', 10),
    (21, 'Omar Ahmed', 'omar.ahmed2@example.com', '01111223344', 1),
    (22, 'Amina Ali', 'amina.ali2@example.com', '01233445577', 2),
    (23, 'Youssef Hassan', 'youssef.hassan@example.com', '01055667799', 3),
    (24, 'Nadia Khaled', 'nadia.khaled@example.com', '01599887777', 4),
    (25, 'Mohamed Ahmed', 'mohamed.ahmed1@example.com', '01122334466', 5),
    (26, 'Sara Ibrahim', 'sara.ibrahim@example.com', '01255667799', 6),
    (27, 'Hassan Khaled', 'hassan.khaled1@example.com', '01066778890', 7),
    (28, 'Mona Farid', 'mona.farid@example.com', '01522334466', 8),
    (29, 'Omar Hassan', 'omar.hassan@example.com', '01133445577', 9),
    (30, 'Laila Ali', 'laila.ali@example.com', '01266778891', 10),
    (31, 'Fatima Ahmed', 'fatima.ahmed@example.com', '01088889988', 1),
    (32, 'Yasser Rami', 'yasser.rami@example.com', '01122334468', 2),
    (33, 'Nour Hassan', 'nour.hassan@example.com', '01233445578', 3),
    (34, 'Omar Ibrahim', 'omar.ibrahim@example.com', '01055667780', 4),
    (35, 'Sara Ahmed', 'sara.ahmed2@example.com', '01599887788', 5),
    (36, 'Mariam Ali', 'mariam.ali@example.com', '01122334469', 6),
    (37, 'Amina Rami', 'amina.rami@example.com', '01255667780', 7),
    (38, 'Hassan Ali', 'hassan.ali1@example.com', '01066778891', 8),
    (39, 'Fatima Farid', 'fatima.farid@example.com', '01522334467', 9),
    (40, 'Mohamed Rami', 'mohamed.rami@example.com', '01133445578', 10),
    (41, 'Mona Khaled', 'mona.khaled@example.com', '01266778892', 1),
    (42, 'Omar Ali', 'omar.ali1@example.com', '01088889999', 2),
    (43, 'Nadia Ibrahim', 'nadia.ibrahim@example.com', '01122334470', 3),
    (44, 'Sara Khaled', 'sara.khaled@example.com', '01233445579', 4),
    (45, 'Youssef Ali', 'youssef.ali1@example.com', '01055667781', 5),
    (46, 'Mariam Hassan', 'mariam.hassan@example.com', '01599887789', 6),
    (47, 'Omar Farid', 'omar.farid@example.com', '01122334471', 7),
    (48, 'Laila Khaled', 'laila.khaled@example.com', '01255667781', 8),
    (49, 'Hassan Ahmed', 'hassan.ahmed1@example.com', '01066778892', 9),
    (50, 'Fatima Rami', 'fatima.rami@example.com', '01522334468', 10),
    (51, 'Nadia Farid', 'nadia.farid@example.com', '01133445579', 1),
    (52, 'Yasser Ahmed', 'yasser.ahmed@example.com', '01266778893', 2),
    (53, 'Omar Hassan', 'omar.hassan1@example.com', '01088889997', 3),
    (54, 'Sara Ali', 'sara.ali1@example.com', '01599887790', 4),
    (55, 'Fatima Khaled', 'fatima.khaled@example.com', '01122334472', 5),
    (56, 'Hassan Ibrahim', 'hassan.ibrahim@example.com', '01233445580', 6),
    (57, 'Omar Ahmed', 'omar.ahmed3@example.com', '01055667782', 7),
    (58, 'Mona Rami', 'mona.rami@example.com', '01599887791', 8),
    (59, 'Nadia Ali', 'nadia.ali1@example.com', '01122334473', 9),
    (60, 'Laila Ahmed', 'laila.ahmed@example.com', '01255667782', 10),
    (61, 'Fatima Ibrahim', 'fatima.ibrahim@example.com', '01088889996', 1),
    (62, 'Mariam Rami', 'mariam.rami@example.com', '01133445580', 2),
    (63, 'Omar Farid', 'omar.farid1@example.com', '01266778894', 3),
    (64, 'Sara Hassan', 'sara.hassan@example.com', '01522334469', 4),
    (65, 'Youssef Khaled', 'youssef.khaled@example.com', '01055667783', 5),
    (66, 'Nadia Rami', 'nadia.rami@example.com', '01122334474', 6),
    (67, 'Hassan Farid', 'hassan.farid@example.com', '01233445581', 7),
    (68, 'Mona Ahmed', 'mona.ahmed@example.com', '01599887792', 8),
    (69, 'Fatima Ali', 'fatima.ali2@example.com', '01088889995', 9),
    (70, 'Omar Ibrahim', 'omar.ibrahim1@example.com', '01133445581', 10),
    (71, 'Mariam Ali', 'mariam.ali1@example.com', '01255667783', 1),
    (72, 'Hassan Khaled', 'hassan.khaled2@example.com', '01522334470', 2),
    (73, 'Sara Farid', 'sara.farid@example.com', '01122334475', 3),
    (74, 'Omar Ali', 'omar.ali2@example.com', '01233445582', 4),
    (75, 'Fatima Ahmed', 'fatima.ahmed2@example.com', '01055667784', 5),
    (76, 'Youssef Rami', 'youssef.rami@example.com', '01599887793', 6),
    (77, 'Nadia Hassan', 'nadia.hassan@example.com', '01122334476', 7),
    (78, 'Mariam Khaled', 'mariam.khaled1@example.com', '01255667784', 8),
    (79, 'Laila Ibrahim', 'laila.ibrahim@example.com', '01088889994', 9),
    (80, 'Fatima Rami', 'fatima.rami1@example.com', '01133445582', 10),
    (81, 'Omar Farid', 'omar.farid2@example.com', '01266778895', 1),
    (82, 'Sara Khaled', 'sara.khaled1@example.com', '01522334471', 2),
    (83, 'Hassan Ahmed', 'hassan.ahmed2@example.com', '01122334477', 3),
    (84, 'Mona Ibrahim', 'mona.ibrahim@example.com', '01233445583', 4),
    (85, 'Fatima Khaled', 'fatima.khaled1@example.com', '01055667785', 5),
    (86, 'Youssef Ahmed', 'youssef.ahmed@example.com', '01599887794', 6),
    (87, 'Nadia Rami', 'nadia.rami1@example.com', '01122334478', 7),
    (88, 'Laila Ali', 'laila.ali1@example.com', '01255667785', 8),
    (89, 'Omar Hassan', 'omar.hassan2@example.com', '01088889993', 9),
    (90, 'Mariam Ibrahim', 'mariam.ibrahim@example.com', '01133445583', 10),
    (91, 'Nadia Farid', 'nadia.farid1@example.com', '01266778896', 1),
    (92, 'Omar Khaled', 'omar.khaled@example.com', '01522334472', 2),
    (93, 'Fatima Ibrahim', 'fatima.ibrahim1@example.com', '01122334479', 3),
    (94, 'Mona Khaled', 'mona.khaled1@example.com', '01233445584', 4),
    (95, 'Laila Rami', 'laila.rami@example.com', '01055667786', 5),
    (96, 'Youssef Hassan', 'youssef.hassan1@example.com', '01599887795', 6),
    (97, 'Nadia Ahmed', 'nadia.ahmed@example.com', '01122334480', 7),
    (98, 'Fatima Farid', 'fatima.farid1@example.com', '01255667786', 8),
    (99, 'Omar Ali', 'omar.ali3@example.com', '01088889992', 9),
    (100, 'Mariam Rami', 'mariam.rami1@example.com', '01133445584', 10);
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO Course_Topics (CourseID , TopicID) 
VALUES
    -- Topics for Basic Programming
    (1, 1), -- Introduction to Programming
    (1, 2), -- Variables and Data Types
    (1, 3), -- Control Structures

    -- Topics for Database Design
    (2, 4), -- Entity-Relationship Modeling
    (2, 5), -- Normalization and Schema Design
    (2, 6), -- SQL Query Fundamentals

    -- Topics for Data Analysis
    (3, 7), -- Data Cleaning and Preprocessing
    (3, 8), -- Exploratory Data Analysis
    (3, 9), -- Statistical Methods

    -- Topics for Network Engineering
    (4, 10), -- Network Protocols
    (4, 11), -- IP Addressing and Subnetting
    (4, 12), -- Network Security

    -- Topics for Machine Learning
    (5, 13), -- Supervised Learning Algorithms
    (5, 14), -- Unsupervised Learning Techniques
    (5, 15), -- Model Evaluation and Validation

    -- Topics for Web Development
    (6, 16), -- HTML and CSS Basics
    (6, 17), -- JavaScript Programming
    (6, 18), -- Responsive Web Design

    -- Topics for Information Security
    (7, 19), -- Cybersecurity Fundamentals
    (7, 20), -- Cryptography Techniques
    (7, 21), -- Network Security Protocols

    -- Topics for Cloud Computing
    (8, 22), -- Introduction to Cloud Services
    (8, 23), -- Cloud Storage Solutions
    (8, 24), -- Cloud Security Best Practices

    -- Topics for Software Engineering
    (9, 25), -- Software Development Life Cycle
    (9, 26), -- Design Patterns
    (9, 27), -- Software Testing and Debugging

    -- Topics for Human-Computer Interaction
    (10, 28), -- User Interface Design
    (10, 29), -- Usability Testing
    (10, 30); -- Interaction Design Principles
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Insert data into Course_instructor table
INSERT INTO Instructor_Courses (CourseID , InstructorID , Year)
VALUES 
    (1, 1, 2024),  -- Instructor 1 teaches Course 1
    (1, 2, 2024),  -- Instructor 2 also teaches Course 1
    (2, 2, 2024),  -- Instructor 2 teaches Course 2
    (2, 3, 2024),  -- Instructor 3 also teaches Course 2
    (3, 3, 2024),  -- Instructor 3 teaches Course 3
    (3, 4, 2024),  -- Instructor 4 also teaches Course 3
    (4, 4, 2024),  -- Instructor 4 teaches Course 4
    (4, 5, 2024),  -- Instructor 5 also teaches Course 4
    (5, 5, 2024),  -- Instructor 5 teaches Course 5
    (5, 6, 2024),  -- Instructor 6 also teaches Course 5
    (6, 6, 2024),  -- Instructor 6 teaches Course 6
    (6, 7, 2024),  -- Instructor 7 also teaches Course 6
    (7, 7, 2024),  -- Instructor 7 teaches Course 7
    (7, 8, 2024),  -- Instructor 8 also teaches Course 7
    (8, 8, 2024),  -- Instructor 8 teaches Course 8
    (8, 9, 2024),  -- Instructor 9 also teaches Course 8
    (9, 9, 2024),  -- Instructor 9 teaches Course 9
    (9, 10, 2024), -- Instructor 10 also teaches Course 9
    (10, 10, 2024) -- Instructor 10 teaches Course 10
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Exam 1
-- Insert data into MCQ_Options table for Exam 1 with formatted options
-- Insert MCQ options for Question 6
INSERT INTO McqOptions (QuestionID , Options , Is_Correct)
VALUES
    (6, 'A) +', 1),
    (6, 'B) -', 0),
    (6, 'C) *', 0),
    (6, 'D) /', 0),

    (7, 'A) Data Analysis', 0),
    (7, 'B) Web Development', 0),
    (7, 'C) Software Testing', 0),
    (7, 'D) All of The above', 1),

    (8, 'A) 4', 0),
    (8, 'B) 7', 1),
    (8, 'C) 9', 0),
    (8, 'D) 12', 0),

    (9, 'A) 25', 0),
    (9, 'B) 30', 0),
    (9, 'C) 35', 0),
    (9, 'D) 30', 1),

    (10, 'A) 2', 1),
    (10, 'B) 4', 0),
    (10, 'C) 6', 0),
    (10, 'D) 8', 0),

    (11, 'A) Denormalization', 0),
    (11, 'B) Normalization', 1),
    (11, 'C) Indexing', 0),
    (11, 'D) Partitioning', 0),

    (12, 'A) INSERT', 0),
    (12, 'B) SELECT', 1),
    (12, 'C) DELETE', 0),
    (12, 'D) UPDATE', 0),

    (14, 'A) Structured Query Language', 1),
    (14, 'B) Simple Query Language', 0),
    (14, 'C) Structured Quick Language', 0),
    (14, 'D) Sequential Query Language', 0),

    (16, 'A) WHERE', 1),
    (16, 'B) GROUP BY', 0),
    (16, 'C) ORDER BY', 0),
    (16, 'D) HAVING', 0),

    (18, 'A) SUM()', 0),
    (18, 'B) COUNT()', 0),
    (18, 'C) AVG()', 1),
    (18, 'D) MIN()', 0),

    (20, 'A) Inner Join', 0),
    (20, 'B) Outer Join', 1),
    (20, 'C) Cross Join', 0),
    (20, 'D) Self Join', 0),

    (22, 'A) Excel', 1),
    (22, 'B) Word', 0),
    (22, 'C) PowerPoint', 0),
    (22, 'D) Outlook', 0),

    (24, 'A) Regression', 0),
    (24, 'B) Descriptive Statistics', 1),
    (24, 'C) Classification', 0),
    (24, 'D) Clustering', 0),

    (26, 'A) Pie Chart', 0),
    (26, 'B) Line Chart', 0),
    (26, 'C) Histogram', 1),
    (26, 'D) Bar Chart', 0),

    (28, 'A) Sampling', 0),
    (28, 'B) Testing', 0),
    (28, 'C) Descriptive Analysis', 0),
    (28, 'D) Inferential Analysis', 1),

    (30, 'A) Relationship between variables', 1),
    (30, 'B) Central Tendency', 0),
    (30, 'C) Dispersion', 0),
    (30, 'D) Probability', 0),

    (32, 'A) Physical', 0),
    (32, 'B) Network', 1),
    (32, 'C) Data Link', 0),
    (32, 'D) Session', 0),

    (34, 'A) Data Host Configuration Protocol', 0),
    (34, 'B) Data Handling Control Protocol', 0),
    (34, 'C) Dynamic Host Configuration Protocol', 1),
    (34, 'D) Dynamic Handling Control Protocol', 0),

    (36, 'A) HTTP', 0),
    (36, 'B) FTP', 0),
    (36, 'C) Telnet', 0),
    (36, 'D) HTTPS', 1),

    (38, 'A) Router', 1),
    (38, 'B) Switch', 0),
    (38, 'C) Hub', 0),
    (38, 'D) Bridge', 0),

    (40, 'A) IP', 0),
    (40, 'B) TCP', 1),
    (40, 'C) HTTP', 0),
    (40, 'D) SMTP', 0),

    (42, 'A) K-means', 0),
    (42, 'B) Decision Trees', 0),
    (42, 'C) Support Vector Machines', 1),
    (42, 'D) Clustering', 0),

    (44, 'A) Structured Vector Machine', 0),
    (44, 'B) Sequential Vector Machine', 0),
    (44, 'C) Support Vector Management', 0),
    (44, 'D) Support Vector Machine', 1),

    (46, 'A) PCA', 1),
    (46, 'B) LDA', 0),
    (46, 'C) ICA', 0),
    (46, 'D) SVM', 0),

    (48, 'A) NumPy', 0),
    (48, 'B) Scikit-learn', 1),
    (48, 'C) Matplotlib', 0),
    (48, 'D) Pandas', 0),

    (50, 'A) Underfitting', 0),
    (50, 'B) Overfitting', 1),
    (50, 'C) Generalization', 0),
    (50, 'D) Validation', 0),

	(52, 'A) CREATE TABLE', 1),
    (52, 'B) INSERT INTO',0),
    (52, 'C) UPDATE',0),
    (52, 'D) DELETE',0),

    (54, 'A) SELECT',0),
    (54, 'B) ALTER TABLE',0),
    (54, 'C) INSERT INTO',1),
    (54, 'D) DROP TABLE',0),

    (56, 'A) GROUP BY',0),
    (56, 'B) ORDER BY',1),
    (56, 'C) WHERE',0),
    (56, 'D) HAVING',0),

    (58, 'A) COUNT', 0),
    (58, 'B) AVG', 0),
    (58, 'C) SUM', 1),
    (58, 'D) MAX', 0),

    (60, 'A) A temporary table', 0),
    (60, 'B) A stored procedure', 0),
    (60, 'C) A virtual table', 1),
    (60, 'D) A type of index', 0),

    (62, 'A) Encapsulation', 0),
    (62, 'B) Inheritance', 0),
    (62, 'C) Polymorphism', 0),
    (62, 'D) Abstraction', 1),

    (64, 'A) class',1),
    (64, 'B) object',0),
    (64, 'C) new',0),
    (64, 'D) define',0),

    (66, 'A) self',0),
    (66, 'B) this',1),
    (66, 'C) current',0),
    (66, 'D) instance',0),

    (68, 'A) start()',0),
    (68, 'B) main()',0),
    (68, 'C) initialize()',1),
    (68, 'D) constructor',0),

    (70, 'A) Using the same method name with different parameters',1),
    (70, 'B) Overwriting methods in a derived class',0),
    (70, 'C) Using methods from multiple classes',0),
    (70, 'D) Calling a method repeatedly',0),

    (72, 'A) HTTP', 0),
    (72, 'B) SMTP', 0),
    (72, 'C) FTP', 1),  -- Correct answer
    (72, 'D) SSH', 0),
    
    (74, 'A) Defines network protocols', 1),  -- Correct answer
    (74, 'B) Determines IP addresses', 0),
    (74, 'C) Specifies network hardware', 0),
    (74, 'D) Manages domain names', 0),
    
    (76, 'A) Application Layer', 0),
    (76, 'B) Presentation Layer', 1),  -- Correct answer
    (76, 'C) Session Layer', 0),
    (76, 'D) Transport Layer', 0),
    
    (78, 'A) Domain Name System', 1),  -- Correct answer
    (78, 'B) Data Network System', 0),
    (78, 'C) Distributed Name Service', 0),
    (78, 'D) Direct Network Service', 0),
    
    (80, 'A) TCP', 1),  -- Correct answer
    (80, 'B) UDP', 0),
    (80, 'C) ICMP', 0),
    (80, 'D) ARP', 0),

    (82, 'A) Relational database', 0),
    (82, 'B) Key-Value store', 0),
    (82, 'C) Column-oriented database', 0),
    (82, 'D) NoSQL database', 1),  -- Correct answer
    
    (84, 'A) Atomicity, Consistency, Isolation, Durability', 1),  -- Correct answer
    (84, 'B) Availability, Consistency, Integrity, Durability', 0),
    (84, 'C) Accuracy, Correctness, Isolation, Durability', 0),
    (84, 'D) Availability, Consistency, Isolation, Dependency', 0),
    
    (86, 'A) SELECT', 0),
    (86, 'B) INSERT', 0),
    (86, 'C) UPDATE', 1),  -- Correct answer
    (86, 'D) DELETE', 0),
    
    (88, 'A) ORDER BY', 0),
    (88, 'B) GROUP BY', 0),
    (88, 'C) WHERE', 1),  -- Correct answer
    (88, 'D) HAVING', 0),
    
    (90, 'A) Defines table structure', 0),
    (90, 'B) Outlines relationships', 0),
    (90, 'C) Ensures data integrity', 0),
    (90, 'D) Blueprint of the database', 1),  -- Correct answer

    (92, 'A) Waterfall', 0),
    (92, 'B) Agile', 1),  -- Correct answer
    (92, 'C) V-Model', 0),
    (92, 'D) RAD', 0),
    
    (94, 'A) Strict documentation', 0),
    (94, 'B) Large teams', 0),
    (94, 'C) Sprint-based development', 1),  -- Correct answer
    (94, 'D) Sequential phases', 0),
    
    (96, 'A) Design', 0),
    (96, 'B) Testing', 0),
    (96, 'C) Implementation', 1),  -- Correct answer
    (96, 'D) Maintenance', 0),
    
    (98, 'A) Design Document', 0),
    (98, 'B) Test Plan', 0),
    (98, 'C) Project Charter', 0),
    (98, 'D) Requirements Specification', 1),  -- Correct answer
    
    (100, 'A) User satisfaction', 1),  -- Correct answer
    (100, 'B) Code efficiency', 0),
    (100, 'C) System performance', 0),
    (100, 'D) Test coverage', 0),

    (103, 'A) SELECT', 1),  -- Correct answer
    (103, 'B) INSERT', 0),
    (103, 'C) UPDATE', 0),
    (103, 'D) DELETE', 0),
    
    (104, 'A) GROUP BY', 0),
    (104, 'B) ORDER BY', 0),
    (104, 'C) WHERE', 1),  -- Correct answer
    (104, 'D) JOIN', 0),
    
    (107, 'A) Filters data', 0),
    (107, 'B) Sorts records', 0),
    (107, 'C) Combines rows from tables', 1),  -- Correct answer
    (107, 'D) Deletes rows', 0),
    
    (108, 'A) INNER JOIN', 0),
    (108, 'B) LEFT JOIN', 1),  -- Correct answer
    (108, 'C) RIGHT JOIN', 0),
    (108, 'D) FULL JOIN', 0),

    (113, 'A) Naive Bayes', 1),  -- Correct answer
    (113, 'B) Apriori', 0),
    (113, 'C) Clustering', 0),
    (113, 'D) SVM', 0),
    
    (114, 'A) Data cleaning', 0),
    (114, 'B) Data representation', 1),  -- Correct answer
    (114, 'C) Data warehousing', 0),
    (114, 'D) Data indexing', 0),
    
    (117, 'A) SVM', 0),
    (117, 'B) Clustering', 0),
    (117, 'C) Apriori', 1),  -- Correct answer
    (117, 'D) Decision Trees', 0),
    
    (118, 'A) Extract, Transform, Load', 1),  -- Correct answer
    (118, 'B) Extract, Transfer, Load', 0),
    (118, 'C) Extract, Transform, Link', 0),
    (118, 'D) Extract, Tag, Load', 0),

    (123, 'A) Phishing', 0),
    (123, 'B) Spoofing', 0),
    (123, 'C) Man-in-the-middle', 1),  -- Correct answer
    (123, 'D) Denial of Service', 0),
    
    (124, 'A) Confidentiality', 1),  -- Correct answer
    (124, 'B) Integrity', 0),
    (124, 'C) Availability', 0),
    (124, 'D) Non-repudiation', 0),
    
    (127, 'A) HTTP', 0),
    (127, 'B) FTP', 0),
    (127, 'C) HTTPS', 1),  -- Correct answer
    (127, 'D) SMTP', 0),
    
    (128, 'A) Rootkit', 1),  -- Correct answer
    (128, 'B) Proxy', 0),
    (128, 'C) Gateway', 0),
    (128, 'D) Firewall', 0),

    (133, 'A) Decision Trees', 1),  -- Correct answer
    (133, 'B) Clustering', 0),
    (133, 'C) Reinforcement', 0),
    (133, 'D) Regression', 0),
    
    (134, 'A) Maximize accuracy', 0),
    (134, 'B) Maximize cumulative reward', 1),  -- Correct answer
    (134, 'C) Minimize loss', 0),
    (134, 'D) Minimize variance', 0),
    
    (137, 'A) RNN', 0),
    (137, 'B) CNN', 1),  -- Correct answer
    (137, 'C) SVM', 0),
    (137, 'D) GAN', 0),
    
    (138, 'A) Over-sampling', 0),
    (138, 'B) Dropout', 1),  -- Correct answer
    (138, 'C) Under-sampling', 0),
    (138, 'D) Data augmentation', 0),

    (143, 'A) IaaS', 1),  -- Correct answer
    (143, 'B) PaaS', 0),
    (143, 'C) SaaS', 0),
    (143, 'D) FaaS', 0),
    
    (144, 'A) Software as a Service', 1),  -- Correct answer
    (144, 'B) System as a Service', 0),
    (144, 'C) Storage as a Service', 0),
    (144, 'D) Service as a Software', 0),
    
    (147, 'A) Scalability', 1),  -- Correct answer
    (147, 'B) Latency', 0),
    (147, 'C) Reliability', 0),
    (147, 'D) Maintainability', 0),
    
    (148, 'A) Accessibility', 0),
    (148, 'B) Cost-effectiveness', 1),  -- Correct answer
    (148, 'C) Performance', 0),
    (148, 'D) Scalability', 0),

    (153, 'A) C++', 1),
    (153, 'B) Python', 0),
    (153, 'C) Java', 0),
    (153, 'D) Swift', 0),

    (154, 'A) React', 0),
    (154, 'B) Unity', 1),
    (154, 'C) Django', 0),
    (154, 'D) Laravel', 0),

    (157, 'A) Writing code', 0),
    (157, 'B) Creating assets', 0),
    (157, 'C) Designing game mechanics', 1),
    (157, 'D) Marketing the game', 0),

    (158, 'A) Texturing', 0),
    (158, 'B) Rigging', 0),
    (158, 'C) Shading', 0),
    (158, 'D) Motion capture', 1),

    (163, 'A) Decentralization', 1),
    (163, 'B) Centralization', 0),
    (163, 'C) Speed', 0),
    (163, 'D) Simplicity', 0),

    (164, 'A) Proof of Stake', 0),
    (164, 'B) Proof of Work', 1),
    (164, 'C) Proof of Authority', 0),
    (164, 'D) Delegated Proof of Stake', 0),

    (167, 'A) Gaming', 0),
    (167, 'B) Social Media', 0),
    (167, 'C) Supply Chain Management', 1),
    (167, 'D) Blogging', 0),

    (168, 'A) A traditional contract', 0),
    (168, 'B) A legal agreement', 0),
    (168, 'C) A digital form of agreement', 0),
    (168, 'D) Self-executing code', 1),

    (173, 'A) Tableau', 1),
    (173, 'B) Excel', 0),
    (173, 'C) PowerPoint', 0),
    (173, 'D) Word', 0),

    (174, 'A) Data collection', 0),
    (174, 'B) Data analysis', 0),
    (174, 'C) Reporting', 0),
    (174, 'D) Data presentation', 1),

    (177, 'A) Pie chart', 0),
    (177, 'B) Bar chart', 0),
    (177, 'C) Line chart', 1),
    (177, 'D) Scatter plot', 0),

    (178, 'A) Showing distribution', 0),
    (178, 'B) Visualizing relationships', 0),
    (178, 'C) Identifying patterns', 1),
    (178, 'D) Displaying raw data', 0),

    (183, 'A) Usability', 1),
    (183, 'B) Complexity', 0),
    (183, 'C) Inaccessibility', 0),
    (183, 'D) Ambiguity', 0),

    (184, 'A) Surveys', 0),
    (184, 'B) Interviews', 1),
    (184, 'C) Brainstorming', 0),
    (184, 'D) Prototyping', 0),

    (187, 'A) Waterfall model', 0),
    (187, 'B) Agile model', 0),
    (187, 'C) HCI model', 1),
    (187, 'D) Spiral model', 0),

    (188, 'A) Command-line interface', 0),
    (188, 'B) Text-based interface', 0),
    (188, 'C) Voice user interface', 0),
    (188, 'D) Graphical user interface', 1),

    (193, 'A) Machine learning', 1),
    (193, 'B) Networking', 0),
    (193, 'C) Operating systems', 0),
    (193, 'D) Hardware design', 0),

    (194, 'A) To detect anomalies', 0),
    (194, 'B) To predict outcomes', 1),
    (194, 'C) To analyze big data', 0),
    (194, 'D) To automate tasks', 0),

    (197, 'A) Clustering', 1),
    (197, 'B) Regression', 0),
    (197, 'C) Classification', 0),
    (197, 'D) Reinforcement learning', 0),

    (198, 'A) Speech recognition', 0),
    (198, 'B) Customer service automation', 1),
    (198, 'C) Facial recognition', 0),
    (198, 'D) Image generation', 0),
	
    (203, 'A) Nmap', 1),
    (203, 'B) Photoshop', 0),
    (203, 'C) Illustrator', 0),
    (203, 'D) Power BI', 0),

    (204, 'A) Data analysis', 0),
    (204, 'B) Identifying vulnerabilities', 1),
    (204, 'C) Performance testing', 0),
    (204, 'D) Code optimization', 0),

    (207, 'A) Brute force attack', 1),
    (207, 'B) Data mining', 0),
    (207, 'C) Cloud computing', 0),
    (207, 'D) Data visualization', 0),

    (208, 'A) Reconnaissance', 1),
    (208, 'B) Development', 0),
    (208, 'C) Deployment', 0),
    (208, 'D) Maintenance', 0),

    (213, 'A) Load balancer', 1),
    (213, 'B) Network switch', 0),
    (213, 'C) Router', 0),
    (213, 'D) Firewall', 0),

    (214, 'A) Data transmission', 0),
    (214, 'B) Content delivery', 1),
    (214, 'C) Data storage', 0),
    (214, 'D) Data processing', 0),

    (217, 'A) Horizontal scaling', 1),
    (217, 'B) Vertical scaling', 0),
    (217, 'C) Diagonal scaling', 0),
    (217, 'D) Circular scaling', 0),

    (218, 'A) Image generation', 0),
    (218, 'B) Video streaming', 0),
    (218, 'C) Data encryption', 0),
    (218, 'D) Video transcoding', 1),

    (223, 'A) In-memory database', 0),
    (223, 'B) Disk-based database', 1),
    (223, 'C) NoSQL database', 0),
    (223, 'D) Graph database', 0),

    (224, 'A) SQLite', 1),
    (224, 'B) PostgreSQL', 0),
    (224, 'C) Oracle', 0),
    (224, 'D) SQL Server', 0),

    (227, 'A) Scalability', 0),
    (227, 'B) Integrity', 1),
    (227, 'C) Performance', 0),
    (227, 'D) Speed', 0),

    (228, 'A) Continuous deployment', 0),
    (228, 'B) Testing', 0),
    (228, 'C) Backup', 1),
    (228, 'D) Logging', 0),

    (233, 'A) Statistical methods', 1),
    (233, 'B) Qualitative analysis', 0),
    (233, 'C) Data visualization', 0),
    (233, 'D) Machine learning', 0),

    (234, 'A) Predictive analysis', 0),
    (234, 'B) To understand relationships', 1),
    (234, 'C) Data cleaning', 0),
    (234, 'D) Data visualization', 0),

    (237, 'A) R', 0),
    (237, 'B) Excel', 0),
    (237, 'C) SAS', 1),
    (237, 'D) Python', 0),

    (238, 'A) Data collection', 0),
    (238, 'B) Statistical significance', 0),
    (238, 'C) Hypothesis formulation', 1),
    (238, 'D) Data cleaning', 0),

    (243, 'A) SEO tools', 1),
    (243, 'B) Print media', 0),
    (243, 'C) Radio ads', 0),
    (243, 'D) TV commercials', 0),

    (244, 'A) To increase web traffic', 0),
    (244, 'B) To improve search engine ranking', 1),
    (244, 'C) To create engaging content', 0),
    (244, 'D) To manage email lists', 0),

    (247, 'A) Click-through rate', 0),
    (247, 'B) Social media shares', 0),
    (247, 'C) Conversion rate', 1),
    (247, 'D) Page views', 0),

    (248, 'A) Personalization', 0),
    (248, 'B) Targeted promotions', 0),
    (248, 'C) A/B testing', 1),
    (248, 'D) Frequency capping', 0),

    (253, 'A) Agile', 1),
    (253, 'B) Waterfall', 0),
    (253, 'C) Scrum', 0),
    (253, 'D) Lean', 0),

    (254, 'A) Resource allocation', 0),
    (254, 'B) Time tracking', 0),
    (254, 'C) Budget estimation', 1),
    (254, 'D) Risk assessment', 0),

    (257, 'A) Gantt chart', 0),
    (257, 'B) Kanban board', 0),
    (257, 'C) Project management software', 1),
    (257, 'D) Status reports', 0),

    (258, 'A) To define project objectives', 0),
    (258, 'B) To identify project stakeholders', 0),
    (258, 'C) To outline deliverables and deadlines', 1),
    (258, 'D) To create a project budget', 0),

    (263, 'A) Implementation', 0),
    (263, 'B) Design', 0),
    (263, 'C) Coding', 1),
    (263, 'D) Testing', 0),

    (264, 'A) To identify bugs', 0),
    (264, 'B) To validate user requirements', 0),
    (264, 'C) To ensure software meets quality standards', 1),
    (264, 'D) To document code changes', 0),

    (267, 'A) Waterfall model', 0),
    (267, 'B) Spiral model', 0),
    (267, 'C) Incremental model', 1),
    (267, 'D) V-Model', 0),

    (268, 'A) Git', 1),
    (268, 'B) SVN', 0),
    (268, 'C) CVS', 0),
    (268, 'D) Perforce', 0),

    (273, 'A) Descriptive statistics', 1),
    (273, 'B) Inferential statistics', 0),
    (273, 'C) Predictive modeling', 0),
    (273, 'D) Data mining', 0),

    (274, 'A) To highlight important patterns', 0),
    (274, 'B) To make data more accessible', 1),
    (274, 'C) To conduct statistical tests', 0),
    (274, 'D) To store large datasets', 0),

    (277, 'A) SQL', 0),
    (277, 'B) Excel', 0),
    (277, 'C) R', 1),
    (277, 'D) SPSS', 0),

    (278, 'A) Regression analysis', 0),
    (278, 'B) Correlation analysis', 0),
    (278, 'C) Cross-tabulation', 1),
    (278, 'D) Cluster analysis', 0),

    (283, 'A) Relational database', 1),
    (283, 'B) Object-oriented database', 0),
    (283, 'C) NoSQL database', 0),
    (283, 'D) Hierarchical database', 0),

    (284, 'A) Data analysis', 0),
    (284, 'B) Database management', 1),
    (284, 'C) Network administration', 0),
    (284, 'D) Software development', 0),

    (287, 'A) MongoDB', 0),
    (287, 'B) PostgreSQL', 0),
    (287, 'C) MySQL', 1),
    (287, 'D) SQLite', 0),

    (288, 'A) A unique identifier for a row', 1),
    (288, 'B) An index for fast access', 0),
    (288, 'C) A constraint for data integrity', 0),
    (288, 'D) A reference to a foreign table', 0),

    (293, 'A) Phishing', 1),
    (293, 'B) Malware', 0),
    (293, 'C) Social engineering', 0),
    (293, 'D) Denial of Service', 0),

    (294, 'A) To hide data', 0),
    (294, 'B) To encrypt data at rest', 0),
    (294, 'C) To protect data in transit', 1),
    (294, 'D) To anonymize user data', 0),

    (297, 'A) Fingerprinting', 0),
    (297, 'B) Biometrics', 0),
    (297, 'C) Multi-factor authentication', 1),
    (297, 'D) Access control lists', 0),

    (298, 'A) Regular software updates', 0),
    (298, 'B) Secure passwords', 0),
    (298, 'C) Firewalls', 1),
    (298, 'D) Encryption', 0);
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Insert data into Student_Course table for 100 students
-- each student assigned to 3 courses
INSERT INTO Student_Courses (StudentID , CourseID) 
VALUES
    -- Student 1
    (1, 1),
    (1, 2),
    (1, 3),
    -- Student 2
    (2, 2),
    (2, 3),
    (2, 4),
    -- Student 3
    (3, 4),
    (3, 5),
    (3, 6),
    -- Student 4
    (4, 1),
    (4, 6),
    (4, 7),
    -- Student 5
    (5, 3),
    (5, 5),
    (5, 8),
    -- Student 6
    (6, 2),
    (6, 4),
    (6, 7),
    -- Student 7
    (7, 5),
    (7, 6),
    (7, 9),
    -- Student 8
    (8, 1),
    (8, 3),
    (8, 8),
    -- Student 9
    (9, 2),
    (9, 4),
    (9, 10),
    -- Student 10
    (10, 5),
    (10, 6),
    (10, 7),
    -- Student 11
    (11, 1),
    (11, 3),
    (11, 10),
    -- Student 12
    (12, 2),
    (12, 4),
    (12, 9),
    -- Student 13
    (13, 6),
    (13, 7),
    (13, 10),
    -- Student 14
    (14, 3),
    (14, 5),
    (14, 9),
    -- Student 15
    (15, 1),
    (15, 4),
    (15, 6),
    -- Student 16
    (16, 2),
    (16, 7),
    (16, 10),
    -- Student 17
    (17, 3),
    (17, 5),
    (17, 8),
    -- Student 18
    (18, 1),
    (18, 4),
    (18, 7),
    -- Student 19
    (19, 2),
    (19, 6),
    (19, 9),
    -- Student 20
    (20, 3),
    (20, 5),
    (20, 10),
    -- Student 21
    (21, 2),
    (21, 4),
    (21, 6),
    -- Student 22
    (22, 1),
    (22, 5),
    (22, 9),
    -- Student 23
    (23, 3),
    (23, 7),
    (23, 8),
    -- Student 24
    (24, 4),
    (24, 6),
    (24, 9),
    -- Student 25
    (25, 2),
    (25, 5),
    (25, 8),
    -- Student 26
    (26, 1),
    (26, 4),
    (26, 10),
    -- Student 27
    (27, 3),
    (27, 6),
    (27, 9),
    -- Student 28
    (28, 2),
    (28, 5),
    (28, 8),
    -- Student 29
    (29, 1),
    (29, 4),
    (29, 6),
    -- Student 30
    (30, 2),
    (30, 7),
    (30, 10),
    -- Student 31
    (31, 1),
    (31, 3),
    (31, 5),
    -- Student 32
    (32, 2),
    (32, 4),
    (32, 6),
    -- Student 33
    (33, 3),
    (33, 5),
    (33, 7),
    -- Student 34
    (34, 1),
    (34, 4),
    (34, 8),
    -- Student 35
    (35, 2),
    (35, 5),
    (35, 9),
    -- Student 36
    (36, 3),
    (36, 6),
    (36, 8),
    -- Student 37
    (37, 1),
    (37, 4),
    (37, 7),
    -- Student 38
    (38, 2),
    (38, 5),
    (38, 9),
    -- Student 39
    (39, 3),
    (39, 6),
    (39, 8),
    -- Student 40
    (40, 1),
    (40, 4),
    (40, 7),
    -- Student 41
    (41, 2),
    (41, 5),
    (41, 10),
    -- Student 42
    (42, 3),
    (42, 6),
    (42, 8),
    -- Student 43
    (43, 1),
    (43, 4),
    (43, 9),
    -- Student 44
    (44, 2),
    (44, 5),
    (44, 8),
    -- Student 45
    (45, 3),
    (45, 6),
    (45, 10),
    -- Student 46
    (46, 1),
    (46, 4),
    (46, 7),
    -- Student 47
    (47, 2),
    (47, 5),
    (47, 8),
    -- Student 48
    (48, 3),
    (48, 6),
    (48, 10),
    -- Student 49
    (49, 1),
    (49, 4),
    (49, 7),
    -- Student 50
    (50, 2),
    (50, 5),
    (50, 8),
    -- Student 51
    (51, 3),
    (51, 6),
    (51, 10),
    -- Student 52
    (52, 1),
    (52, 4),
    (52, 7),
    -- Student 53
    (53, 2),
    (53, 5),
    (53, 8),
    -- Student 54
    (54, 3),
    (54, 6),
    (54, 10),
    -- Student 55
    (55, 1),
    (55, 4),
    (55, 7),
    -- Student 56
    (56, 2),
    (56, 5),
    (56, 8),
    -- Student 57
    (57, 3),
    (57, 6),
    (57, 10),
    -- Student 58
    (58, 1),
    (58, 4),
    (58, 7),
    -- Student 59
    (59, 2),
    (59, 5),
    (59, 8),
    -- Student 60
    (60, 3),
    (60, 6),
    (60, 10),
    -- Student 61
    (61, 1),
    (61, 4),
    (61, 7),
    -- Student 62
    (62, 2),
    (62, 5),
    (62, 8),
    -- Student 63
    (63, 3),
    (63, 6),
    (63, 10),
    -- Student 64
    (64, 1),
    (64, 4),
    (64, 7),
    -- Student 65
    (65, 2),
    (65, 5),
    (65, 8),
    -- Student 66
    (66, 3),
    (66, 6),
    (66, 10),
    -- Student 67
    (67, 1),
    (67, 4),
    (67, 7),
    -- Student 68
    (68, 2),
    (68, 5),
    (68, 8),
    -- Student 69
    (69, 3),
    (69, 6),
    (69, 9),
	    -- Student 70
    (70, 1),
    (70, 5),
    (70, 9),
    -- Student 71
    (71, 2),
    (71, 6),
    (71, 10),
    -- Student 72
    (72, 3),
    (72, 4),
    (72, 7),
    -- Student 73
    (73, 1),
    (73, 6),
    (73, 8),
    -- Student 74
    (74, 2),
    (74, 5),
    (74, 9),
    -- Student 75
    (75, 3),
    (75, 4),
    (75, 7),
    -- Student 76
    (76, 1),
    (76, 6),
    (76, 8),
    -- Student 77
    (77, 2),
    (77, 5),
    (77, 9),
    -- Student 78
    (78, 3),
    (78, 4),
    (78, 7),
    -- Student 79
    (79, 1),
    (79, 6),
    (79, 8),
    -- Student 80
    (80, 2),
    (80, 5),
    (80, 9),
    -- Student 81
    (81, 3),
    (81, 4),
    (81, 7),
    -- Student 82
    (82, 1),
    (82, 6),
    (82, 8),
    -- Student 83
    (83, 2),
    (83, 5),
    (83, 9),
    -- Student 84
    (84, 3),
    (84, 4),
    (84, 7),
    -- Student 85
    (85, 1),
    (85, 6),
    (85, 8),
    -- Student 86
    (86, 2),
    (86, 5),
    (86, 9),
    -- Student 87
    (87, 3),
    (87, 4),
    (87, 7),
    -- Student 88
    (88, 1),
    (88, 6),
    (88, 8),
    -- Student 89
    (89, 2),
    (89, 5),
    (89, 9),
    -- Student 90
    (90, 3),
    (90, 4),
    (90, 7),
    -- Student 91
    (91, 1),
    (91, 6),
    (91, 8),
    -- Student 92
    (92, 2),
    (92, 5),
    (92, 9),
    -- Student 93
    (93, 3),
    (93, 4),
    (93, 7),
    -- Student 94
    (94, 1),
    (94, 6),
    (94, 8),
    -- Student 95
    (95, 2),
    (95, 5),
    (95, 9),
    -- Student 96
    (96, 3),
    (96, 4),
    (96, 7),
    -- Student 97
    (97, 1),
    (97, 6),
    (97, 8),
    -- Student 98
    (98, 2),
    (98, 5),
    (98, 9),
    -- Student 99
    (99, 3),
    (99, 4),
    (99, 7),
    -- Student 100
    (100, 1),
    (100, 6),
    (100, 8);
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Insert data into Exam_question table
-- Exam 1
INSERT INTO Exam_questions (ExamID, QuestionID)
VALUES (1, 1), (1, 2), (1, 3), (1, 4), (1, 5), (1, 6), (1, 7), (1, 8), (1, 9), (1, 10);
GO
-- Exam 2
INSERT INTO Exam_questions (ExamID, QuestionID)
VALUES (2, 11), (2, 12), (2, 13), (2, 14), (2, 15), (2, 16), (2, 17), (2, 18), (2, 19), (2, 20);
GO
-- Exam 3
INSERT INTO Exam_questions (ExamID, QuestionID)
VALUES (3, 21), (3, 22), (3, 23), (3, 24), (3, 25), (3, 26), (3, 27), (3, 28), (3, 29), (3, 30);
GO
-- Exam 4
INSERT INTO Exam_questions (ExamID, QuestionID)
VALUES (4, 31), (4, 32), (4, 33), (4, 34), (4, 35), (4, 36), (4, 37), (4, 38), (4, 39), (4, 40);
GO
-- Exam 5
INSERT INTO Exam_questions (ExamID, QuestionID)
VALUES (5, 41), (5, 42), (5, 43), (5, 44), (5, 45), (5, 46), (5, 47), (5, 48), (5, 49), (5, 50);
GO
-- Exam 6
INSERT INTO Exam_questions (ExamID, QuestionID)
VALUES (6, 51), (6, 52), (6, 53), (6, 54), (6, 55), (6, 56), (6, 57), (6, 58), (6, 59), (6, 60);
GO
-- Exam 7
INSERT INTO Exam_questions (ExamID, QuestionID)
VALUES (7, 61), (7, 62), (7, 63), (7, 64), (7, 65), (7, 66), (7, 67), (7, 68), (7, 69), (7, 70);
GO
-- Exam 8
INSERT INTO Exam_questions (ExamID, QuestionID)
VALUES (8, 71), (8, 72), (8, 73), (8, 74), (8, 75), (8, 76), (8, 77), (8, 78), (8, 79), (8, 80);
GO
-- Exam 9
INSERT INTO Exam_questions (ExamID, QuestionID)
VALUES (9, 81), (9, 82), (9, 83), (9, 84), (9, 85), (9, 86), (9, 87), (9, 88), (9, 89), (9, 90);
GO
-- Exam 10
INSERT INTO Exam_questions (ExamID, QuestionID)
VALUES (10, 91), (10, 92), (10, 93), (10, 94), (10, 95), (10, 96), (10, 97), (10, 98), (10, 99), (10, 100);
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO StudentAnswer (StudentID, QuestionID, ExamID, Answer, Grade) -- need edit
VALUES 
 -- Answers for Exam 1, Course 1
    (1, 1, 1, 'True', NULL),   -- Question 1
    (1, 2, 1, 'False', NULL),  -- Question 2
    (1, 3, 1, 'True', NULL),   -- Question 3
    (1, 4, 1, 'True', 0),  -- Question 4
    (1, 5, 1, 'False', NULL),  -- Question 5
    (1, 6, 1, 'A', NULL),      -- Question 6
    (1, 7, 1, 'D', NULL),      -- Question 7
    (1, 8, 1, 'B', NULL),      -- Question 8
    (1, 9, 1, 'D', NULL),      -- Question 9
    (1, 10, 1, 'A', NULL),      -- Question 10

    -- Answers for Exam 2, Course 2
    (1, 11, 2, 'B', NULL),      -- Question 11
    (1, 12, 2, 'B', NULL),      -- Question 12
    (1, 13, 2, 'False', NULL),  -- Question 13
    (1, 14, 2, 'A', NULL),      -- Question 14
    (1, 15, 2, 'True', NULL),   -- Question 15
    (1, 16, 2, 'A', NULL),      -- Question 16
    (1, 17, 2, 'True', NULL),   -- Question 17
    (1, 18, 2, 'C', NULL),      -- Question 18
    (1, 19, 2, 'True', NULL),   -- Question 19
    (1, 20, 2, 'B', NULL),      -- Question 20

    -- Answers for Exam 3, Course 3
    (1, 21, 3, 'True', NULL),   -- Question 21
    (1, 22, 3, 'A', NULL),      -- Question 22
    (1, 23, 3, 'False', NULL),  -- Question 23
    (1, 24, 3, 'B', NULL),      -- Question 24
    (1, 25, 3, 'True', NULL),   -- Question 25
    (1, 26, 3, 'C', NULL),      -- Question 26
    (1, 27, 3, 'False', NULL),  -- Question 27
    (1, 28, 3, 'D', NULL),      -- Question 28
    (1, 29, 3, 'True', NULL),   -- Question 29
    (1, 39, 3, 'A', NULL);      -- Question 30
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------