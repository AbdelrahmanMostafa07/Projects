-- report 5
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