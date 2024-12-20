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

-- Find all dealerships that have a specfic type of car (i.e Red Ford Mustang)
SELECT
*
FROM cardealership.vehicles
INNER JOIN cardealership.inventory
		ON inventory.vin = vehicles.vin
INNER JOIN cardealership.dealerships
		ON dealerships.dealership_Id = inventory.dealership_id
WHERE vehicles.type = "sedan" && vehicles.make = "Honda";


-- Get all sales information for specific dealership
SELECT
dealerships.dealership_id
,dealerships.name
,dealerships.address
,dealerships.phone
,vehicles.vin
,vehicles.year
,vehicles.make
,vehicles.model
,vehicles.type
,vehicles.color
,vehicles.odometer
,vehicles.price
,vehicles.SOLD
,sales_contracts.sales_id
,sales_contracts.date
FROM cardealership.dealerships
INNER JOIN cardealership.inventory
		ON inventory.dealership_id = dealerships.dealership_id
INNER JOIN cardealership.vehicles
		ON vehicles.vin = inventory.vin
INNER JOIN cardealership.sales_contracts
		ON sales_contracts.vehicle_vin = vehicles.vin
        
WHERE dealerships.dealership_id = 1 AND sales_contracts.date LIKE "%2022%";