/*
Un Equipo tiene varios jugadores, Un jugador pertenece a un equipo.
El equipo pertenece a una sola localidad, en una localidad pueden haber varios equipos.
*/

create database deporte;

use deporte;

create table Localidades(
	nombre varchar(50) primary key
);

create table Equipos(
	nombre varchar(50) primary key,
    reside_en varchar(50) not null,
    foreign key (reside_en) references Localidades(nombre)
);

create table Jugadores(
	id int primary key,
    nombre varchar(50) not null,
    juega_en varchar(50) not null,
    foreign key (juega_en) references Equipos(nombre)
);

describe Localidades;
describe Equipos;
describe Jugadores;