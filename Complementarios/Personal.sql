create database personal;
use personal;
-- Creación de la tabla Departamento 
CREATE TABLE  Departamento ( 
	codDepto varchar (4)  PRIMARY KEY, 
	nombreDpto   varchar (20) NOT NULL, 
	ciudad      varchar (15), 
	codDirector  varchar (12) );

-- Creación de la tabla Empleado 
CREATE TABLE  Empleado ( 
	nDIEmp VARCHAR( 12 ) NOT NULL PRIMARY KEY, 
	nomEmp VARCHAR( 30 ) NOT NULL , 
	sexEmp CHAR( 1 ) NOT NULL CHECK (sexEmp  IN ('F', 'M') ), 
	fecNac DATE NOT NULL , 
	fecIncorporacion DATE NOT NULL, 
	salEmp FLOAT NOT NULL, 
	comisionE FLOAT NOT NULL, 
	cargoE VARCHAR( 15 ) NOT NULL, 
	jefeID VARCHAR( 12 ), 
	codDepto VARCHAR( 4 ) NOT NULL
	);

-- Cada frase desde -- hasta el final de la línea es ignorado (es un comentario) 
-- SQL es insensible a los espacios en blanco 
-- SQL NO es sensible a las mayúsculas (ejemplo:...Empleado... es equivalente a  -- ...EMPLEADO...)  

INSERT INTO Departamento (codDepto, nombreDpto, ciudad, coddirector) VALUES
('1000', 'GERENCIA', 'CALI', '31.840.269'),  
('1500', 'PRODUCCIÓN', 'CALI', '16.211.383'), 
('2000', 'VENTAS', 'CALI', '31.178.144'), 
('3000', 'INVESTIGACIÓN', 'CALI', '16.759.060'),  
('3500', 'MERCADEO', 'CALI', '22.222.222'), 
('2100', 'VENTAS', 'POPAYAN', '31.751.219'), 
('2200', 'VENTAS', 'BUGA', '768.782'), 
('2300', 'VENTAS', 'CARTAGO', '737.689'), 
('4000', 'MANTENIMIENTO', 'CALI', '333.333.333'), 
('4100', 'MANTENIMIENTO', 'POPAYAN', '888.888'), 
('4200', 'MANTENIMIENTO', 'BUGA', '11.111.111'), 
('4300', 'MANTENIMIENTO', 'CARTAGO', '444.444');

INSERT INTO Empleado (nDIEmp, nomEmp, sexEmp, fecNac, fecIncorporacion, salEmp, comisionE, cargoE, jefeID, codDepto) VALUES 
('31.840.269', 'María Rojas', 'F', '1959-01-15', '1990-05-16', 6250000, 1500000, 'Gerente', NULL, '1000'), 
('16.211.383', 'Luis Pérez', 'M', '1956-02-25', '2000-01-01', 5050000, 0, 'Director', '31.840.269', '1500'), 
('31.178.144', 'Rosa Angulo', 'F',  '1957-03-15', '1998-08-16', 3250000, 3500000, 'Jefe Ventas', '31.840.269', '2000'), 
('16.759.060', 'Darío Casas', 'M', '1960-04-05', '1992-11-01', 4500000, 500000, 'Investigador', '31.840.269', '3000'), 
('22.222.222', 'Carla López', 'F', '1975-05-11', '2005-07-16',  4500000, 500000, 'Jefe Mercadeo', '31.840.269', '3500'), 
('22.222.333', 'Carlos Rozo', 'M', '1975-05-11', '2001-09-16',  750000, 500000, 'Vigilante', '31.840.269', '3500') , 
('1.751.219', 'Melissa Roa', 'F', '1960-06-19', '2001-03-16', 2250000, 2500000, 'Vendedor', '31.178.144', '2100'), 
('768.782', 'Joaquín Rosas', 'M', '1947-07-07', '1990-05-16', 2250000, 2500000, 'Vendedor', '31.178.144', '2200'), 
('737.689', 'Mario Llano', 'M', '1945-08-30', '1990-05-16', 2250000, 2500000, 'Vendedor', '31.178.144', '2300'),
('333.333.333', 'Elisa Rojas', 'F', '1979-09-28', '2004-06-01', 3000000, 1000000, 'Jefe Mecánicos', '31.840.269', '4000'), 
('888.888', 'Iván Duarte', 'M', '1955-08-12',  '1998-05-16',  1050000, 200000, 'Mecánico', '333.333.333', '4100'), 
('11.111.111', 'Irene Díaz', 'F', '1979-09-28', '2004-06-01', 1050000, 200000, 'Mecánico', '333.333.333', '4200'), 
('444.444', 'Abel Gómez', 'M', '1939-12-24', '2000-10-01', 1050000, 200000, 'Mecánico', '333.333.333', '4300'), 
('1.130.222', 'José Giraldo', 'M', '1985-01-20', '2000-11-01', 1200000, 400000, 'Asesor', '22.222.222', '3500'), 
('19.709.802', 'William Daza', 'M', '1982-10-09', '1999-12-16', 2250000, 1000000,'Investigador', '16.759.060', '3000'), 
('31.174.099', 'Diana Solarte', 'F', '1957-11-19', '1990-05-16', 1250000, 500000, 'Secretaria', '31.840.269', '1000'), 
('1.130.777', 'Marcos Cortez', 'M', '1986-06-23', '2000-04-16',  2550000, 500000, 'Mecánico', '333.333.333', '4000'), 
('1.130.782', 'Antonio Gil', 'M', '1980-01-23', '2010-04-16', 850000, 1500000, 'Técnico', '16.211.383', '1500'), 
('333.333.334', 'Marisol Pulido', 'F', '1979-10-01', '1990-05-16', 3250000, 1000000, 'Investigador', '16.759.060', '3000'), 
('333.333.335', 'Ana Moreno', 'F', '1992-01-05', '2004-06-01', 1200000, 400000, 'Secretaria', '16.759.060', '3000'), 
('1.130.333', 'Pedro Blanco', 'M', '1987-10-28', '2000-10-01', 800000, 3000000, 'Vendedor', '31.178.144', '2000'), 
('1.130.444', 'Jesús Alfonso', 'M', '1988-03-14', '2000-10-01', 800000, 3500000, 'Vendedor', '31.178.144', '2000'), 
('333.333.336', 'Carolina Ríos', 'F', '1992-02-15', '2000-10-01', 1250000, 500000, 'Secretaria', '16.211.383', '1500'), ('333.333.337', 'Edith Muñoz', 'F', '1992-03-31', '2000-10-01', 800000, 3600000, 'Vendedor', '31.178.144', '2100'), 
('1.130.555', 'Julián Mora', 'M', '1989-07-03', '2000-10-01', 800000, 3100000, 'Vendedor', '31.178.144', '2200'), 
('1.130.666', 'Manuel Millán', 'M', '1990-12-08', '2004-06-01', 800000, 3700000, 'Vendedor', '31.178.144', '2300');


-- 1. Obtener los datos completos del Personal.
select * from empleado;

-- 2. Obtener los datos completos de los departamentos
select * from departamento;

-- 3. Obtener los datos de personal con cargo 'Secretaria'.
select * from empleado where cargoE = "Secretaria";

-- 4. Obtener el nombre y salario de los/las empleados/as.
select nomEmp,salEmp from empleado;

-- 5. Obtener los datos de vendedores, ordenado por nombre.
select * from empleado where cargoE = "Vendedor" order by nomEmp asc;

-- 6. Listar el nombre de los departamentos
select distinct nombreDpto from departamento;

-- 7. Listar el nombre de los departamentos, ordenado por nombre
select distinct nombreDpto from departamento order by nombreDpto asc;

-- 8. Listar el nombre de los departamentos, ordenado por ciudad
select distinct nombreDpto from departamento order by ciudad asc;

-- 9. Listar el nombre de los departamentos, ordenado por ciudad, en orden inverso
select distinct nombreDpto from departamento order by ciudad desc;

-- 10. Obtener el nombre y cargo del personal, ordenado por salario
select nomEmp,CargoE,salEmp from empleado order by salEmp desc;

-- 11. Listar los salarios y comisiones del personal del departamento 2000
select nomEmp,salEmp,ComisionE from empleado where codDepto = 2000;

-- 12. Listar los salarios y comisiones del personal del departamento 2000, ordenado por comisión
select nomEmp,salEmp,ComisionE from empleado where codDepto = 2000 order by comisionE;

-- 13. Listar todas las comisiones
select comisionE from empleado;

-- 14. Obtener el valor total a pagar que resulta de sumar al personal del departamento 3000 una bonificación de $500.000, en orden alfabético por nombre.
select sum(salEmp+500)
from empleado
where codDepto = 3000
order by nomEmp;

-- 15. Listar los empleados cuya comisión es menor o igual que el 30% de su sueldo.
select *
from empleado
where comisionE <= salEmp*0.30;

-- 16. Elabore un listado donde para cada fila, figure ‘Nombre’ y ‘Cargo’ antes del valor respectivo para cada persona
select distinct concat("Nombre : ", e.nombre) as Nombre, concat("Cargo : ", d.nombre) as Cargo
from empleado e inner join departamento d;

-- 17. Hallar el salario y la comisión de aquellas personas cuyo número de documento de identidad es superior al '19.709.802'
select *
from empleado
where cast(replace(nDIEmp,'.','') as unsigned)> 19709802;

-- 18. Genere un grupo de personas, incluyendo aquéllas cuyo nombre inicie por la letra J. Emita un listado con nombre y su cargo por orden alfabético.
select distinct e.nombre,d.nombre
from empleado e inner join departamento d
where e.nombre like "J%"
order by e.nombre,d.nombre;

-- 19. Listar el salario, la  comisión,  el salario total (salario + comisión), documento de identidad  de la persona y nombre, de quienes tienen comisión superior a $1.000.000, ordenar el informe por el número del documento de identidad 
select nDIEmp,comisionE,salEmp,(salEmp+comisionE)as Total
from empleado
where comisionE > 1000000
order by nDIEmp;

-- 20. Hallar el nombre de empleados/as que tienen un salario superior a $1.000.000, y tienen como jefe/a a alguien con documento de identidad '31.840.269'
select nomEmp
from empleado 
where salEmp > 1000000 and cast(replace(jefeID,'.','') as unsigned)=31840269;

-- 21. Obtener los nombres de los departamentos que no sean “Ventas” ni “Investigación” ni ‘MANTENIMIENTO’, ordenados por ciudad
select distinct nombreDpto
from departamento
where nombreDpto != "Ventas"
order by ciudad;