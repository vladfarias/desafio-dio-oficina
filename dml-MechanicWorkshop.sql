-- Inserir dados na tabela client
INSERT INTO client (Fname, Minti, Lname, CPF, Street, City, Zipcode)
VALUES
    ('John', 'ABC', 'Doe', '12345678901', '123 Main St', 'City A', '12345678'),
    ('Jane', 'DEF', 'Smith', '98765432101', '456 Elm St', 'City B', '87654321'),
    ('Alice', 'GHI', 'Johnson', '45678901234', '789 Oak St', 'City C', '56789012'),
    ('Bob', 'JKL', 'Williams', '56789012345', '321 Maple St', 'City A', '23456789'),
    ('Eva', 'MNO', 'Brown', '34567890123', '567 Pine St', 'City B', '34567890');

-- Inserir dados na tabela vehicle
INSERT INTO vehicle (Plate, Model, ModelYear, idClient)
VALUES
    ('ABC123', 'Sedan', 2020, 1),
    ('DEF456', 'SUV', 2019, 2),
    ('GHI789', 'Truck', 2022, 3),
    ('JKL012', 'Coupe', 2018, 4),
    ('MNO345', 'Convertible', 2021, 5),
    ('PQR678', 'Motorcycle', 2020, 1),
    ('STU901', 'Sedan', 2021, 3);

-- Inserir dados na tabela service
INSERT INTO service (idService, description, price)
VALUES
    (1, 'Oil Change', 50.00),
    (2, 'Brake Repair', 150.00),
    (3, 'Tire Rotation', 30.00),
    (4, 'Engine Tune-Up', 100.00),
    (5, 'Transmission Service', 200.00);

-- Inserir dados na tabela vehicleService
INSERT INTO vehicleService (idVehicle, idService)
VALUES
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5),
    (6, 2),
    (7, 4),
    (1, 3),
    (2, 4),
    (3, 5),
    (4, 1),
    (5, 2),
    (6, 1),
    (7, 3);
