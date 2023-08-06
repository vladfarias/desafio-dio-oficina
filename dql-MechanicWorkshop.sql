-- Seleciona os veículos que o "ModelYear" é maior e igual que 2020.
SELECT Plate, Model
FROM vehicle
WHERE ModelYear >= 2020;

-- Lista os clientes e endereço.
SELECT Fname, Lname, CONCAT(Street, ', ', City) AS Address
FROM client;

-- Seleciona os veículos e ordena os resultados primeiro pelo "ModelYear" em ordem decrescente e depois pelo "Model".
SELECT Plate, Model, ModelYear
FROM vehicle
ORDER BY ModelYear DESC, Model;

/* Seleciona os clientes e o número de veículos (atributo derivado "NumVehicles") que cada cliente possui. 
   Apenas clientes com mais de um veículo são retornados.*/
SELECT c.Fname, c.Lname, COUNT(v.idVehicle) AS NumVehicles
FROM client c
JOIN vehicle v ON c.idClient = v.idClient
GROUP BY c.idClient
HAVING NumVehicles > 1;

-- Seleciona os clientes, veículos e os serviçoes realizados na oficina.
SELECT c.Fname, c.Lname, v.Plate, s.description
FROM client c
JOIN vehicle v ON c.idClient = v.idClient
JOIN vehicleService vs ON v.idVehicle = vs.idVehicle
JOIN service s ON vs.idService = s.idService;

/* Seleciona os clientes e serviços (atributo derivado "NumServices") que cada cliente solicitou. 
Os resultados são agrupados por cliente e ordenados pelo número de serviços em ordem decrescente.*/
SELECT c.idClient, c.Fname, c.Lname, COUNT(vs.idService) AS NumServices
FROM client c
JOIN vehicle v ON c.idClient = v.idClient
JOIN vehicleService vs ON v.idVehicle = vs.idVehicle
GROUP BY c.idClient
ORDER BY NumServices DESC;

-- Seleciona os 3 serviços mais realizados na oficina
SELECT s.description, COUNT(vs.idService) AS NumOccurrences
FROM service s
JOIN vehicleService vs ON s.idService = vs.idService
GROUP BY s.idService
ORDER BY NumOccurrences DESC
LIMIT 3;
