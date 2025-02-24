CREATE SCHEMA tienda_zapatillas; 
USE tienda_zapatillas;

CREATE TABLE empleados(
	id_empleado INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nombre VARCHAR(45) NOT NULL,
    numero_telefono INT NOT NULL,
    email VARCHAR(45) NOT NULL,
    direccion VARCHAR(45) NOT NULL,
    ciudad VARCHAR(45) NOT NULL,
    provincia VARCHAR(45) NOT NULL,
    pais VARCHAR(45) NOT NULL,
    codigo_postal VARCHAR(45) NOT NULL);
    

CREATE TABLE clientes(
	id_cliente INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	nombre VARCHAR(45) NOT NULL,
	numero_telefono INT NOT NULL,
	email VARCHAR(45) NOT NULL,
	direccion VARCHAR(45) NOT NULL,
	ciudad VARCHAR(45) NOT NULL,
	provincia VARCHAR(45) NOT NULL,
	pais VARCHAR(45) NOT NULL,
	codigo_postal VARCHAR(45) NOT NULL);
    
    
CREATE TABLE zapatillas(
	id_zapatillas INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    modelo VARCHAR(45) NOT NULL,
    color VARCHAR(45) NOT NULL);


CREATE TABLE facturas(
	id_factura INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    numero_factura VARCHAR(45) NOT NULL,
    fecha DATE NOT NULL,
    zapatillas_id INT,
    cliente_id INT,
    empleado_id INT,
	CONSTRAINT fk_zapatilla
		FOREIGN KEY (zapatillas_id)
        REFERENCES zapatillas (id_zapatillas),
	CONSTRAINT fk_cliente
		FOREIGN KEY (cliente_id)
        REFERENCES clientes (id_cliente),
	CONSTRAINT fk_empleado 
		FOREIGN KEY (empleado_id)
        REFERENCES empleados (id_empleado)
);
		
		
    
    
    

