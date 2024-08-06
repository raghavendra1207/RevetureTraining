use cars;
create table loginDetails (UserID int,time1 int);
DESC LOGINDETAILS;
ALTER TABLE LOGINDETAILS
RENAME COLUMN datetime to time1;


DELIMITER //
CREATE FUNCTION loginactivity(UserID INT)
RETURNS VARCHAR(30)
reads sql data
begin
DECLARE VAR1 VARCHAR(30);
if( (SELECT time1 from loginDetails where loginDetails.UserID=UserID ) BETWEEN 900 AND 905) THEN
SET VAR1="LOGED IN SUCCESSFULLY";
else
SET VAR1="NOT ACCESSIBLE";
END IF;
RETURN VAR1;
END //

DELIMITER ;

DROP FUNCTION loginactivity;
INSERT INTO loginDetails VALUES (101,900);  
select   loginactivity(104);
INSERT INTO loginDetails VALUES (102,902);  
INSERT INTO loginDetails VALUES (104,906);

create database banking;
use banking;
CREATE TABLE SUMV (SUM1 INT);

DELIMITER //
create trigger loginactivity 
before insert on SUMV
FOR EACH ROW 
BEGIN
SET @SUM2=@SUM2+NEW.SUM1;
END//

DELIMITER ;
SET @SUM2=0;

INSERT INTO SUMV VALUES (10);
SELECT @SUM2;
