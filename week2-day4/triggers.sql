CREATE TABLE PROMOTEDEMPLOYEES (userID INT PRIMARY KEY,OldSalary INT,NewSalary INT, datetime timestamp);

DELIMITER //
CREATE TRIGGER UpdateSalaryInfo
after update on userdata
for each row
begin
if((select userID from userdata where userId=old.userID) is NULL) then INSERT INTO PROMOTEDEMPLOYEES VALUES (old.userID,old.EstimatedSalary,new.EstimatedSalary,CURRENT_TIMESTAMP);
else update PROMOTEDEMPLOYEES SET OldSalary=old.EstimatedSalary,NewSalary= new.EstimatedSalary;
END IF;
END //
DELIMITER ;
SELECT * FROM userdata;
UPDATE userdata 
set EstimatedSalary="60000" WHERE UserId=15566689;
SELECT * FROM PROMOTEDEMPLOYEES;
DROP TRIGGER UpdateSalaryInfo;