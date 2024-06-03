-- Crear la base de datos
CREATE DATABASE Moovit_Nica;

-- Seleccionar la base de datos
USE Moovit_Nica;

-- Crear la tabla Rutas
CREATE TABLE Rutas (
    placa VARCHAR(10) PRIMARY KEY,
    numero_de_placa VARCHAR(20) NOT NULL,
    Terminal_1 VARCHAR(100) NOT NULL,
    Terminal_2 VARCHAR(100) NOT NULL,
    Detalles TEXT
);

-- Crear la tabla Parada_de_bus
CREATE TABLE Parada_de_bus (
    ID_parada INT AUTO_INCREMENT PRIMARY KEY,
    Barrio VARCHAR(100) NOT NULL,
    Coordenadas_map VARCHAR(100) NOT NULL,
    Detalles TEXT
);

-- Crear la tabla Horario
CREATE TABLE Horario (
    ID_horario INT AUTO_INCREMENT PRIMARY KEY,
    ruta VARCHAR(10),
    Parada INT,
    Hora TIME NOT NULL,
    FOREIGN KEY (ruta) REFERENCES Rutas(placa),
    FOREIGN KEY (Parada) REFERENCES Parada_de_bus(ID_parada)
);

-- Generar el CRUD para la tabla Rutas
-- Crear (Insertar)
INSERT INTO Rutas (placa, numero_de_placa, Terminal_1, Terminal_2, Detalles)
VALUES ('123ABC', '456DEF', 'Terminal Norte', 'Terminal Sur', 'Detalles de la ruta');

-- Leer (Seleccionar)
SELECT * FROM Rutas;

-- Actualizar
UPDATE Rutas
SET numero_de_placa = '789GHI', Terminal_1 = 'Terminal Este', Terminal_2 = 'Terminal Oeste', Detalles = 'Detalles actualizados de la ruta'
WHERE placa = '123ABC';

-- Borrar
DELETE FROM Rutas
WHERE placa = '123ABC';

-- Mostrar los registros de la tabla Parada_de_bus con un INNER JOIN
SELECT Parada_de_bus.*, Rutas.Detalles AS Detalles_Ruta
FROM Parada_de_bus
INNER JOIN Horario ON Parada_de_bus.ID_parada = Horario.Parada
INNER JOIN Rutas ON Horario.ruta = Rutas.placa;

-- Generar una vista para la tabla Horarios
CREATE VIEW Vista_Horarios AS
SELECT Horario.ID_horario, Rutas.numero_de_placa, Parada_de_bus.Barrio, Horario.Hora
FROM Horario
INNER JOIN Rutas ON Horario.ruta = Rutas.placa
INNER JOIN Parada_de_bus ON Horario.Parada = Parada_de_bus.ID_parada;

-- Seleccionar desde la vista
SELECT * FROM Vista_Horarios;
