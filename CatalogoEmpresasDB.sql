create database CatalogoEmpresasDB;
go

use CatalogoEmpresasDB;

create table Contacto(
Id int not null identity(1,1),
Nombre nvarchar(50) not null,
Email nvarchar(100) not null,
Telefono nvarchar(15) not null,
Celular nvarchar(15) not null,
primary key(Id)
);
go

create table Empresa(
Id int not null identity(1,1),
IdContacto int not null,
Nombre nvarchar(100) not null,
Rubro nvarchar(50) not null,
Categoria nvarchar(25) not null,
Departamento nvarchar(25) not null,
primary key(Id),
foreign key(IdContacto) references Contacto(Id)
);
go

create table Rol(
Id int not null identity(1,1),
Nombre nvarchar(30) not null,
primary key(Id)
);
go

create table Usuario(
Id int not null identity(1,1),
IdRol int not null,
Nombre nvarchar(30) not null,
Apellido nvarchar(30) not null,
[Login] nvarchar(25) not null,
[Password] nchar(50) not null,
Estatus tinyint not null,
FechaRegistro datetime not null,
primary key(Id),
foreign key(IdRol) references Rol(Id)
);
go


insert into Contacto(Nombre, Email, Telefono, Celular) values
('Juan José Campos', 'jjcampos@gmail.com', '23459877', '78995474'),
('María Concepción Agreda', 'maria@outlook.com', '24556756', '76642464');

insert into Empresa( IdContacto, Nombre, Rubro, Categoria, Departamento) values
(1, 'Cooperativa ganadera de Sonsonate', 'Agroindustria', 'Gran empresa', 'Sonsonate');

insert into Rol(Nombre) values('Administrador');

--password: admin2023 
insert into Usuario(IdRol, Nombre, Apellido, [Login], [Password], Estatus, FechaRegistro) 
values(1, 'Juan', 'Pérez', 'jp', '81ce825ec1ace3ee7cf7e92df2cc9905', 1, SYSDATETIME());

--------------------------------------------------------------------------------------------
--CREACIÓN DEL INICIO DE SESIÓN Y EL USUARIO PARA CONECTAR CON LA BD DESDE JAVA---
--------------------------------------------------------------------------------------------
-- CREACION DEL LOGIN
CREATE LOGIN Ejemplo1
WITH PASSWORD = 'Modulo16',
DEFAULT_DATABASE = CatalogoEmpresasDB,
CHECK_POLICY = OFF,
CHECK_EXPIRATION = OFF;

-- ASIGNACIÓN DE PERMISOS
USE CatalogoEmpresasDB;
CREATE USER Ejemplo1 FOR LOGIN Ejemplo1 WITH DEFAULT_SCHEMA = dbo;
ALTER ROLE db_owner ADD MEMBER Ejemplo1;