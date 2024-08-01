SELECT * FROM CARS;

DELIMITER //
CREATE FUNCTION get_COUNT_Bodytype(body_type VARCHAR(20)) 
RETURNS  INT 
READS SQL DATA
begin 
DECLARE CountCars int;
Set CountCars = (SELECT COUNT(body_type) FROM CARS where cars.body_type=body_type);

RETURN CountCars;
END //

SELECT get_COUNT_Bodytype("SUV");
