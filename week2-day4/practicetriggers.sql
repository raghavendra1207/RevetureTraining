use cars;
select * from cars;
create table updatecars (car_name varchar(30),timeStamp1 timestamp);
ALTER TABLE updatecars
ADD COLUMN newupdatecar varchar(30);



delete  from updatecars where car_name="Maruti Alto K10";
DELIMITER //
create trigger update_on_updatecars
after UPDATE ON cars
FOR EACH ROW
begin 
INSERT INTO updatecars (car_name, newupdatecar, timeStamp1) 
VALUES (old.car_name, new.car_name, CURRENT_TIMESTAMP);
END //
DELIMITER ;

DROP TRIGGER update_on_updatecars;
UPDATE cars 
SET car_name="KIA" where fuel_type="Diesel";

DELETE FROM updatecars where car_name="Maruti Alto K10";
SELECT * FROM updatecars;