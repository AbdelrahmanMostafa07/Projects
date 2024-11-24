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