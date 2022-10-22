CREATE SCHEMA `proyecto_santi`;

USE `proyecto_santi`;


-- Tabla Proveedor
CREATE TABLE proveedor (
	id_proveedor int not null AUTO_INCREMENT primary key,
    nombre varchar(40) not null,
    direccion varchar(40) not null,
    telefono varchar(20)
);

CREATE TABLE producto(
	id_producto int not null auto_increment primary key,
    precio decimal(8,2) not null,
    nombre varchar(40) not null,
    stock int not null,
    nombre_proveedor varchar(40) not null
);

CREATE TABLE categoria(
	id_categoria int not null auto_increment primary key,
    descripcion varchar(50) not null,
    nombre varchar(30) not null
);

CREATE TABLE venta(
	id_venta int not null auto_increment primary key,
    cliente varchar(30) not null,
    fecha date not null,
    monto_final decimal(8,2) not null,
    descuento decimal(8,2) not null
);


CREATE TABLE cliente(
	id_cliente int not null auto_increment primary key,
    nombre varchar(30) not null,
    direccion varchar(40) not null,
    telefono varchar(20) not null
);