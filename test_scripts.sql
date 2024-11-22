-- Get all dealerships
SELECT
*
FROM cardealership.dealerships;

-- Get all vehicles for specific dealership
SELECT
vehicles.vin
,vehicles.year
,vehicles.make
,vehicles.model
,vehicles.type
,vehicles.color
,vehicles.odometer
,vehicles.price
,dealerships.dealership_id
FROM cardealership.vehicles
INNER JOIN cardealership.inventory
		ON vehicles.vin = inventory.vin
INNER JOIN cardealership.dealerships
		ON dealerships.dealership_id = inventory.dealership_id
WHERE dealerships.dealership_id = 2;

-- Find car by vin
SELECT
*
FROM cardealership.vehicles
WHERE vin = "2HGEJ6677WH123456";

-- Find the dealership where a certain car is located by vin
SELECT
vehicles.vin
,dealerships.dealership_id
,dealerships.name
,dealerships.address
,dealerships.phone
FROM cardealership.vehicles
INNER JOIN cardealership.inventory
		ON vehicles.vin = inventory.vin
INNER JOIN cardealership.dealerships
		ON dealerships.dealership_id = inventory.dealership_id
WHERE inventory.vin = "1C6RR7FT5ES123456";

