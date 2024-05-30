--first prompt
CREATE DATABASE Animales;

---Second prompt
CREATE TABLE Animales (
    ID INT PRIMARY KEY,
    nombre VARCHAR(50),
    cantidad_patas INT
);

CREATE TABLE Especie (
    ID INT PRIMARY KEY,
    nombre_especie VARCHAR(50),
    descripcion TEXT
);

CREATE TABLE Habitad (
    ID INT PRIMARY KEY,
    nombre_habitad VARCHAR(50),
    detalle_habitad TEXT
);


--third prompt
CREATE PROCEDURE listarRegistros()
BEGIN
    CREATE TEMPORARY TABLE temp_table AS
    SELECT *
    FROM tabla1
    JOIN tabla2 ON tabla1.id = tabla2.id
    JOIN tabla3 ON tabla1.id = tabla3.id
    ORDER BY tabla1.id ASC, tabla2.id ASC, tabla3.id ASC;
    
    SELECT *
    FROM temp_table;
    
    DROP TEMPORARY TABLE IF EXISTS temp_table;
END;