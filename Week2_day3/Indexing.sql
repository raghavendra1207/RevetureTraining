-- INDEX
CREATE Database cars;
USE cars;

SELECT * FROM cars where car_name like "Mahindra%";

CREATE INDEX Car_Name ON cars(car_name);

SELECT * FROM cars where car_name like "Mahindra%";

ALTER TABLE cars
DROP INDEX Car_Name;
