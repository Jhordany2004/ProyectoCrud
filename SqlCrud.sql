create database Crud

use Crud

create table usuarios(
IdUsuario int identity (1,1),
Nombre varchar (15),
Edad int,
Correo varchar (max),
FechaNacimiento date
)
--Cargar datos a la tabla--
Create procedure sp_cargar
as begin
select* from usuarios
end
--Crear registro--
Create procedure sp_crear
@Nombre varchar(15),
@Edad int,
@Correo varchar(max),
@Fecha date
as begin 
insert into usuarios values(@Nombre,@Edad, @Correo,@Fecha)
end
--Leer registro--
create procedure sp_Leer
@Id int 
as begin
select * from usuarios where IdUsuario=@Id
end
--Editar registro--
Create procedure sp_Editar
@Id int,
@Nombre varchar(15),
@Edad int,
@Correo varchar(max),
@Fecha date
as begin 
update usuarios set Nombre=@Nombre, Edad= @Edad, Correo=@Correo, FechaNacimiento=@Fecha
where IdUsuario=@Id
end
--Eliminar registro--
Create procedure sp_Eliminar 
@Id int
as begin
delete from usuarios where IdUsuario=@Id
end

select * from usuarios