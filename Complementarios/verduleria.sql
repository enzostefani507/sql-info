 create database verduleria;

use verduleria;

CREATE TABLE grupos (
  IdGrupo int NOT NULL,
  NombreGrupo varchar(50) DEFAULT NULL,
  PRIMARY KEY (IdGrupo));

INSERT INTO grupos (IdGrupo,NombreGrupo) VALUES 
 (1,'Frutas'),
 (3,'Hortalizas'),
 (10,'Tubérculos'),
 (4,'Tuberculos2'),
 (2,'Verduras');

CREATE TABLE productos (
  IdProducto int NOT NULL,
  NomProducto varchar(50) DEFAULT NULL,
  IdGrupo int DEFAULT NULL,
  Precio decimal DEFAULT NULL,
  PRIMARY KEY (IdProducto),
  CONSTRAINT FK_Grupo FOREIGN KEY (IdGrupo) REFERENCES grupos (IdGrupo)
);

INSERT INTO productos (IdProducto,NomProducto,IdGrupo,Precio) VALUES 
 (1,'Mandarinas',1,3.9325),
 (2,'Lechugas',2,1.6335),
 (3,'Melones',1,1.936),
 (4,'Coles',2,0.605),
 (5,'Berenjenas',3,2.541),
 (6,'Platanos',1,2.42),
 (7,'Tomates',2,0.968),
 (8,'Uvas',1,3.63),
 (9,'Esparragos',3,1.21),
 (10,'Zanaorias',3,0.605),
 (11,'Naranjas',1,1.21),
 (12,'Malocoton',1,2.42),
 (13,'Pimientos',3,0.242),
 (14,'Manzana',1,3.63),
 (15,'Patatas',4,2.42);
 
 CREATE TABLE vendedores (
  IdVendedor int NOT NULL,
  NombreVendedor varchar(50) DEFAULT NULL,
  NIF varchar(9) DEFAULT NULL,
  Direccion varchar(50) DEFAULT NULL,
  Poblacion varchar(50) DEFAULT NULL,
  CodPostal varchar(5) DEFAULT NULL,
  Telefon varchar(50) DEFAULT NULL,
  EstalCivil varchar(15) DEFAULT NULL,
  Guap tinyint NOT NULL, #esto tenia # : Guap@
  PRIMARY KEY (IdVendedor));
  
 INSERT INTO vendedores (IdVendedor,NombreVendedor,NIF,Direccion,Poblacion,CodPostal,Telefon,EstalCivil,Guap) VALUES 
 (1,'Pepito','32456645D','cvbmcvbmcvb','Barcelona','08782','937745214','Soltero',1),
 (2,'Carmen','12121213G','jkkhjkjhkhjk','Madrid','28257','914556565','Separado',0),
 (3,'Rosa','11313155O','jhjhgjhgjhgjg','Martorell','13131','937754585','Casado',1),
 (4,'Gloria','13131333E','dfsdgdfgdfg','badalona','15344','464646466','Divorciado',0),
 (5,'Fran','11213123O','ghfghgfh','Barcelona','23131','13123123123','Viudo',1),
 (6,'Monica','13131313O','hfghfghfghfg','malaga','13131','4454564646','Arrejuntado',0),
 (7,'Quima','46464646F','jghjghjghjghjgh','Madrid','45456','464646456','Separado',1),
 (8,'Ramon','12113133G',NULL,'Sant Esteve sesrovires','32311','231313131','Divorciado',1),
 (9,'Carlos','13131313F','lkljkljkljkljkljkl','Madrid','43434','464646464','Arrejuntado',0),
 (10,'Antonio','13131113G','fghfghfghfghfgh','Sant Esteve sesrovires','12121',NULL,'Separado',1),
 (11,'Enrique','31113131G','dfgdfgdfgdfgdfgd','Sant Esteve sesrovires','12111',NULL,'Divorciado',0),
 (12,'Carla','31311313E','sfsdfsdfsdfsdf','La Beguda Alta','31331','434464646','Arrejuntado',1),
 (13,'Federico','11313131C','xcvxcvxcvxcv','Sant Esteve sesrovires','21545','131131311','Casado',1),
 (14,'Amadeu','46811136H','asdasdasdasdas','Sant Esteve sesrovires','08635','1465464646','Casado',1);
 
 CREATE TABLE ventas (
  Vendedor int DEFAULT NULL,
  Producto int DEFAULT NULL,
  Kilos decimal DEFAULT NULL,
  CONSTRAINT FK_Vendedor FOREIGN KEY (Vendedor) REFERENCES vendedores (IdVendedor),
  CONSTRAINT FK_Producto FOREIGN KEY (Producto) REFERENCES productos (IdProducto)
);

INSERT INTO ventas (Vendedor,Producto,Kilos) VALUES 
 (7,1,2089.00000),
 (7,1,1322.00000),
 (7,1,1176.00000),
 (7,1,352.00000),
 (7,1,290.00000),
 (7,8,2000.00000),
 (7,8,1218.00000),
 (7,8,951.00000),
 (7,8,536.00000),
 (7,8,467.00000),
 (7,8,347.00000),
 (7,6,2026.00000),
 (7,6,1609.00000),
 (7,6,1036.00000),
 (7,6,770.00000),
 (7,6,659.00000),
 (7,13,2394.00000),
 (7,13,1643.00000),
 (7,13,1538.00000),
 (7,13,1376.00000),
 (7,13,1190.00000),
 (7,13,830.00000),
 (7,13,697.00000),
 (7,13,260.00000),
 (7,2,2161.00000),
 (7,2,1659.00000),
 (7,2,1568.00000),
 (7,2,1434.00000),
 (7,10,2463.00000),
 (7,10,2382.00000),
 (7,10,2274.00000),
 (3,11,1776.00000),
 (3,11,1518.00000),
 (3,12,854.00000),
 (3,9,704.00000),
 (3,12,1772.00000),
 (14,11,1701.00000),
 (11,11,1646.00000),
 (11,11,1230.00000),
 (11,12,2188.00000),
 (6,11,2205.00000),
 (6,11,1528.00000),
 (6,12,870.00000),
 (6,12,530.00000);
 
 describe grupos;
 describe productos;
 describe vendedores;
 describe ventas;
 
-- 1.Obtener la lista de las ventas, pero con el nombre de la persona que lo vende en lugar de su identificador.
select Producto, Kilos,NombreVendedor,NIF,Direccion,Poblacion,CodPostal,EstalCivil,Telefon,Guap
from ventas v1 inner join vendedores v2 on v1.Vendedor = v2.IdVendedor;

-- 2.Obtener la lista de las ventas pero con el nombre del producto en lugar del código.
select Vendedor,NomProducto,Kilos,IdGrupo,Precio
from ventas v1 inner join productos p1 on p1.IdProducto = v1.Producto;

-- 3.Obtener la lista de las ventas pero con el nombre del producto y quién lo vendió.
select Distinct Producto,NombreVendedor
from ventas v1 inner join vendedores v2 on v1.Vendedor = v2.IdVendedor;

-- 4.Obtener el nombre de quien más kilos vendió.
select NombreVendedor from vendedores where IdVendedor = (
	select Vendedor from ventas v1 where v1.Kilos = (
		select MAX(v2.Kilos) from ventas v2
	)
);

-- 5.Cuántos Kilos de Tomates se han vendido.
select  SUM(Kilos) as Total_Kilos_Vendidos from ventas;

-- 6.Obtener todos los datos de cada venta, que haya superado el promedio de kilos vendidos en total.
select *
from ventas v2
where v2.Kilos >= (
	select avg(v1.Kilos)
	from ventas v1);
    
-- 7.Obtener cuál fue el producto más vendido del grupo de "Hortalizas"
select idProducto
from productos p1 inner join ventas v on v.producto = p1.IdProducto 
where p1.IdGrupo = (
	select g1.IdGrupo
    from grupos g1
    where NombreGrupo = "Hortalizas"
	)
group by (idProducto)
having count(idProducto) = (
	select max(t.Cantidad)
	from 
		(select count(p2.IdProducto) as Cantidad
		from productos p2 inner join ventas v2 on v2.producto = p2.IdProducto
		group by (p2.IdProducto)
		)as t
);        

-- 8.Obtener los datos de la persona que menos kilos vendió, e informar el nombre del producto y del grupo al que corresponde esa venta.
select  * 
from vendedores
where IdVendedor IN(
	select Vendedor
    from ventas
    where Kilos = (
		select min(Kilos)
		from ventas)
	);

-- 9.Obtener los totales de ventas por producto.
select p1.IdProducto,count(*) as Totales
from ventas v1 inner join productos p1 on p1.IdProducto = v1.producto
group by (p1.IdProducto)
;

-- 10.Idear una consulta que te parece interesante para informar a quien administra la Verdulería online.
-- Listar el top 3 de productos mas vendidos con los datos de los productos
select v1.Producto,count(*) as Cantidad
from ventas v1 inner join productos p1 on p1.IdProducto = v1.Producto
group by (v1.Producto)
order by (count(*)) desc
limit 3;