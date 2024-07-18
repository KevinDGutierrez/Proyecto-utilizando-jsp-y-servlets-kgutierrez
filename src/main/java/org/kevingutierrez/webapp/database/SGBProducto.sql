-- DROP DATABASE IF EXISTS SGBProductos;

CREATE DATABASE SGBProductos;
USE SGBProductos;

CREATE TABLE Productos(
	productoId INT NOT NULL AUTO_INCREMENT,
    nombreProducto VARCHAR(30) NOT NULL,
    descripcionProducto VARCHAR(100) NOT NULL,
    marcaProducto VARCHAR(30) NOT NULL,
    precio DECIMAL(10,2) NOT NULL,
    PRIMARY KEY PK_productoId(productoId)
);
 
SELECT * FROM Productos;