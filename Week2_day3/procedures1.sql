SELECT * FROM DieselCars;

SELECT * FROM cars;

DELiMITER //
CREATE PROCEDURE get_carscount_body_type(IN body_type VARCHAR(20),OUT count1 INT)
BEGIN 
Select COUNT(cars.body_type) FROM cars where cars.body_type=body_type;
END //


CALL get_carscount_body_type("SUV",@body_type);

CALL get_carscount_body_type("Hatchback",@body_type);

Delimiter //

CREATE PROCEDURE GetDieselCars(IN ID INT,OUT ID1 INT)
BEGIN
SELECT COUNT(fuel_type) from cars where fuel_type="Diesel";
END //

CALL GetDieselCars(1,@fuel_type);

Delimiter //
CREATE PROCEDURE GetbodytypeCars1(IN body_type varchar(20))
BEGIN
SELECT *  from cars where cars.body_type=body_type;
END //




CALL GetbodytypeCars1("SUV");