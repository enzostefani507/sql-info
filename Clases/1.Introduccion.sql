-- Creamos la base de datos
create database empresa;

-- Eliminamos base de datos
drop database empresa;

-- Seleccionamos base de datos
use empresa;

-- Visualizamos la base de daos creadas
show databases;

-- Creamos tablas
create table departamento(
	id_departamento int not null auto_increment,
    nombre varchar(20) not null,
    primary key(id_departamento)
);

create table empleado(
	id_empleado int auto_increment not null,
    dni int not null,
    nombre varchar(50) not null,
    apellido varchar(50) not null,
    fecha_nacimiento date not null,
    id_departamento int not null,
    primary key(id_empleado),
    unique(dni),
    foreign key(id_departamento) references departamento(id_departamento)
);

-- Visualizamos las tablas creadas
show tables;

-- Visualizar las caracteristicas de una tabla
describe departamento;

-- Insertar datos
insert into departamento(nombre) values("marketing");
insert into departamento(nombre) values("contabilidad");
insert into departamento(nombre) values("logistica");

insert into empleado(dni,nombre,apellido,fecha_nacimiento,id_departamento) values(40123987,"Sandra","Perez","1998/12/2",1);
insert into empleado(dni,nombre,apellido,fecha_nacimiento,id_departamento) values(40143187,"Lole","Perez","1998/11/2",2);
insert into empleado(dni,nombre,apellido,fecha_nacimiento,id_departamento) values(12343187,"Coque","Perez","1998/11/25",2);

-- Ver contenido
select * from departamento;
select d.nombre from departamento d;
select * from empleado;

-- Ver contenido con condicionales
select * from departamento where id_departamento <> 1;
select * from empleado where apellido = "Perez";