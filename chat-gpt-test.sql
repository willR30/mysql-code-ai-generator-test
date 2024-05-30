--first prompt
CREATE DATABASE Animales;


---Second prompt
-- Create the database
CREATE DATABASE Animales;

-- Use the database
USE Animales;

-- Create the Especie table
CREATE TABLE Especie (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nombre_de_especie VARCHAR(100) NOT NULL,
    Descripcion TEXT
);

-- Create the Habitad table
CREATE TABLE Habitad (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nombre_de_habitad VARCHAR(100) NOT NULL,
    Detalle_de_habitad TEXT
);

-- Create the Animales table
CREATE TABLE Animales (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
    Cantidad_de_patas INT,
    Especie_ID INT,
    Habitad_ID INT,
    FOREIGN KEY (Especie_ID) REFERENCES Especie(ID),
    FOREIGN KEY (Habitad_ID) REFERENCES Habitad(ID)
);



--third prompt
DELIMITER //

-- Create the stored procedure
CREATE PROCEDURE ListAllRecords()
BEGIN
    -- Create a temporary table to store the results
    CREATE TEMPORARY TABLE TempResults (
        AnimalID INT,
        AnimalName VARCHAR(100),
        Patas INT,
        EspecieName VARCHAR(100),
        HabitadName VARCHAR(100)
    );

    -- Insert data into the temporary table
    INSERT INTO TempResults (AnimalID, AnimalName, Patas, EspecieName, HabitadName)
    SELECT 
        a.ID, a.Nombre, a.Cantidad_de_patas, 
        e.Nombre_de_especie, 
        h.Nombre_de_habitad
    FROM 
        Animales a
    JOIN 
        Especie e ON a.Especie_ID = e.ID
    JOIN 
        Habitad h ON a.Habitad_ID = h.ID
    ORDER BY 
        a.ID;

    -- Select from the temporary table
    SELECT * FROM TempResults;

    -- Drop the temporary table
    DROP TEMPORARY TABLE TempResults;
END //

DELIMITER ;
