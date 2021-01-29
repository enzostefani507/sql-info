SET SQL_SAFE_UPDATES = 0;

select * from empleado;

delete from empleado where nombre = "silvia";

update  empleado set nombre = "Enzo" where id_empleado = 2;

update  empleado set nombre = "Ricardo", apellido = "Benites" where id_empleado = 2;