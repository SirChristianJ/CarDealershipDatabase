SELECT
sales_id
,vin
,date
,year
,make
,model
,type
,color
,odometer
,price
FROM cardealership.sales_contracts
INNER JOIN cardealership.vehicles
		ON	vehicles.vin = sales_contracts.vehicle_vin;
        
UPDATE cardealership.vehicles
SET vehicles.SOLD = TRUE
WHERE cardealership.vehicles.vin = cardealership.sales_contracts.vehicle_vin;