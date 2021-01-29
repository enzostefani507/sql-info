DROP DATABASE IF EXISTS empresa;
CREATE DATABASE empresa;
USE empresa;

CREATE TABLE departamento(
    id_dpto int not null auto_increment,
    nombre varchar(20) not null,
    primary key(id_dpto)
);

CREATE TABLE empleado(
    id_empleado int not null auto_increment,
    nombre varchar(20) not null,
    apellido varchar(20) not null,
    fecha_nacimiento date not null,
    sueldo float unsigned NOT NULL DEFAULT '0',
    id_dpto int not null,
    primary key(id_empleado),
    foreign key(id_dpto) references departamento(id_dpto)
);