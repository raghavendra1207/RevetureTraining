use cars;

CREATE TABLE UserData (UserID INT,
Gender VARCHAR(10),
Age INT,
EstimatedSalary INT,
Purchased INT);

select * from UserData;

DELIMITER //
CREATE PROCEDURE InsertIntoUserData(UserID INT,
IN Gender VARCHAR(10),
IN Age INT,
IN EstimatedSalary INT,
IN Purchased INT,OUT VARBLE VARCHAR(30))
BEGIN 
INSERT INTO UserData VALUES (UserID, Gender, Age, EstimatedSalary, Purchased);
SELECT "SUCCESSFULLY INSERTED";
END //
DELIMITER ;

CALL InsertIntoUserData(15566690,"FEMALE",23,20000,1,@varble);
select * from UserData WHERE UserId=15566690; 



DELIMITER //
CREATE FUNCTION Validate_Data(UserId INT) RETURNS VARCHAR(30)
reads sql data
BEGIN
DECLARE RESULT VARCHAR(30);

IF((SELECT COUNT(*) FROM UserData WHERE UserData.UserId=UserId)=1) THEN
SET RESULT="Found";
ELSE 
SET RESULT="Not Found";
END IF;
RETURN RESULT;
END //
DELIMITER ;


SELECT Validate_Data(15566690);