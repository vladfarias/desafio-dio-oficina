CREATE DATABASE IF NOT EXISTS MechanicWorkshop;
USE MechanicWorkshop;

-- DROP DATABASE IF EXISTS MechanicWorkshop;

-- Criação da tabela client, se não existir
CREATE TABLE IF NOT EXISTS client (
    idClient INT AUTO_INCREMENT,
    Fname VARCHAR(10) NOT NULL,
    Minti CHAR(3),
    Lname VARCHAR(20) NOT NULL,
    CPF CHAR(11) NOT NULL,
    Street VARCHAR(50) NOT NULL,
    City VARCHAR(30) NOT NULL,
    Zipcode CHAR(8) NOT NULL,
    CONSTRAINT PK_idClient PRIMARY KEY(idClient),
    CONSTRAINT UQ_CPF_client UNIQUE(CPF)
);

-- Criação da tabela vehicle, se não existir
CREATE TABLE IF NOT EXISTS vehicle (
    idVehicle INT AUTO_INCREMENT,
    Plate VARCHAR(10) UNIQUE,
    Model VARCHAR(50),
    ModelYear INT,
    idClient INT,
    CONSTRAINT PK_Vehicle PRIMARY KEY(idVehicle),
    CONSTRAINT FK_Vehicle_Client FOREIGN KEY(idClient) REFERENCES client(idClient) ON UPDATE CASCADE
);

-- Criação da tabela service, se não existir
CREATE TABLE IF NOT EXISTS service (
    idService INT,
    description VARCHAR(100),
    price DECIMAL(10, 2),
    CONSTRAINT PK_Service PRIMARY KEY(idService)
);

-- Criação da tabela vehicleService, se não existir
CREATE TABLE IF NOT EXISTS vehicleService (
    idVehicle INT,
    idService INT,
    CONSTRAINT PK_VehicleService PRIMARY KEY(idVehicle, idService),
    CONSTRAINT FK_VehicleService_Vehicle FOREIGN KEY(idVehicle) REFERENCES vehicle(idVehicle),
    CONSTRAINT FK_VehicleService_Service FOREIGN KEY(idService) REFERENCES service(idService)
);
