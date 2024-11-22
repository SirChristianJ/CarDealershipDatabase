CREATE DATABASE cardealership;

CREATE TABLE cardealership.dealerships(
	dealership_id	int NOT NULL AUTO_INCREMENT,
    name	varchar(50),
    address	varchar(50),
    phone	varchar(12),
    PRIMARY KEY (dealership_id)
);

CREATE TABLE cardealership.vehicles(
	vin	varchar(17) NOT NULL,
    year	int,
    make	varchar(12),
    model 	varchar(12),
    type	varchar(12),
    color	varchar(12),
    odometer	int,
    price	decimal,
    SOLD	boolean,
    PRIMARY KEY (vin)
);

CREATE TABLE cardealership.inventory(
	dealership_id	int	NOT NULL,
    vin	varchar(17) NOT NULL
);

CREATE TABLE cardealership.sales_contracts(
	sales_id	int AUTO_INCREMENT,
    vehicle_vin	varchar(17) NOT NULL,
    PRIMARY KEY (sales_id),
    FOREIGN KEY (vehicle_vin) REFERENCES vehicles(vin)
);

CREATE TABLE cardealership.lease_contracts(
	lease_id	int AUTO_INCREMENT,
    vehicle_vin	varchar(17) NOT NULL,
    PRIMARY KEY (lease_id),
    FOREIGN KEY (vehicle_vin) REFERENCES vehicles(vin)
);