--first prompt


CREATE DATABASE Moovit_Nica;

USE Moovit_Nica;

CREATE TABLE Rutas (
    placa INT PRIMARY KEY,
    numero_de_placa VARCHAR(50),
    Terminal_1 VARCHAR(50),
    Terminal_2 VARCHAR(50),
    Detalles TEXT
);

CREATE TABLE Parada_de_bus (
    ID_parada INT PRIMARY KEY,
    Barrio VARCHAR(50),
    Coordenadas_map VARCHAR(50),
    Detalles TEXT
);

CREATE TABLE Horario (
    ID_horario INT PRIMARY KEY,
    ruta INT,
    Parada INT,
    Hora TIME,
    FOREIGN KEY (ruta) REFERENCES Rutas(placa),
    FOREIGN KEY (Parada) REFERENCES Parada_de_bus(ID_parada)
);

-- CRUD operations for Rutas table
-- Create
INSERT INTO Rutas (placa, numero_de_placa, Terminal_1, Terminal_2, Detalles) VALUES (1, 'ABC123', 'Terminal A', 'Terminal B', 'Detalles de la ruta');

-- Read
SELECT * FROM Rutas;

-- Update
UPDATE Rutas 
SET numero_de_placa = 'DEF456'
WHERE placa = 1;

-- Delete
DELETE FROM Rutas
WHERE placa = 1;

---------------------------------------------------------------------------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------------------------------------------------------------------------

SELECT *
FROM Parada_de_bus
INNER JOIN Otra_tabla ON Parada_de_bus.id = Otra_tabla.id;


---------------------------------------------------------------------------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE VIEW vista_horarios AS
SELECT *,
    CASE
        WHEN HOUR(hora) < 12 THEN 'MATUTINO'
        WHEN HOUR(hora) >= 12 AND HOUR(hora) < 18 THEN 'VESPERTINO'
        ELSE 'NOCTURNO'
    END AS TURNO
FROM Horarios;
