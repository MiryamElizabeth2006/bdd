
drop table plataformas
--creación tabla 5
create table videojuegos(
	codigo int not null,
	nombre varchar (100) not null,
	descripcion varchar (300),
	valoracion int,
	
	constraint videojuegos_pk primary key(codigo)
)

--Reto 23
drop table videojuegos
drop table plataformas
select *from videojuegos
select * from plataformas

create table plataformas(
id_plataforma int not null,
	nombre_plataforma varchar(50) not null,
	codigo_videojuego int,
constraint plataformas_pk primary key(id_plataforma)
)

alter table videojuegos
add column plataformas int not null

alter table videojuegos
add constraint videojuegos_plataformas_fk
foreign key (plataformas)
references plataformas(id_plataforma)

--Insertar registros a plataforma
insert into plataformas(id_plataforma,nombre_plataforma,codigo_videojuego)
values(11111,'Steam',11);

insert into plataformas(id_plataforma,nombre_plataforma,codigo_videojuego)
values(22222,'EA Play',22);

insert into plataformas(id_plataforma,nombre_plataforma,codigo_videojuego)
values(33333,'Ubisoft Connect',33);


--Insertar datos en la tabla videojuegos
insert into videojuegos (codigo,nombre,descripcion,valoracion,plataformas)
values (11,'God of war','Guerra',8,11111);

insert into videojuegos (codigo,nombre,descripcion,valoracion,plataformas)
values (22202,'Garfield','De terror',9,22222);

insert into videojuegos (codigo,nombre,descripcion,valoracion,plataformas)
values (33303,'Free Fire','Guerra',4,33333);

insert into videojuegos (codigo,nombre,descripcion,valoracion,plataformas)
values (44404,'Valorant','Guerra',8,33333);

insert into videojuegos (codigo,nombre,descripcion,valoracion,plataformas)
values (55505,'Fornite','Guerra',3,33333);

insert into videojuegos (codigo,nombre,plataformas)
values (66606,'Plantas vs Zombies',22222);

insert into videojuegos (codigo,nombre,plataformas)
values (77707,'Stumble Guys',11111);

insert into videojuegos (codigo,nombre,plataformas)
values (88808,'Roblox',22222);

insert into videojuegos (codigo,nombre,descripcion,valoracion,plataformas)
values (99909,'MineCraft','Construccion y Supervivencia',7,22222);

insert into videojuegos (codigo,nombre,descripcion,valoracion,plataformas)
values (00010,'Dragon City','Criar Dragones',10,11111);

--Consulta
select codigo,nombre,descripcion,valoracion,id_plataforma,nombre_plataforma,codigo_videojuego from
videojuegos vj,plataformas pl
where 
vj.plataformas = pl.id_plataforma
and vj.descripcion = 'Guerra' and vj.valoracion >= 7 or vj.nombre like 'C%'
and vj.valoracion >=8 and vj.nombre like '%D'

--Subconsulta
select pl.id_plataforma,pl.nombre_plataforma,pl.codigo_videojuego from
videojuegos vj,plataformas pl
where 
vj.plataformas = pl.id_plataforma
and vj.codigo = 11

--AGREGACIONES RETO 25 
--AGREGACIONES 1
select codigo_videojuego, count(*) from plataformas 
group by codigo_videojuego

--AGREGACIONES 2
select ROUND(AVG(valoracion),2) as valoracion_promedio from videojuegos