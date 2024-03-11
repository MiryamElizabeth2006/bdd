
drop table videojuegos
--creación tabla 5
create table videojuegos(
	codigo int not null,
	nombre varchar (100) not null,
	descripcion varchar (300),
	valoracion int,
	
	constraint videojuegos_pk primary key(codigo)
)
insert into videojuegos (codigo,nombre,descripcion,valoracion)
values (0101,'Crépsculo','Vampiros,Lobos y Humanos',7)

insert into videojuegos (codigo,nombre,descripcion,valoracion)
values (0102,'Barbie','BARBIE en la vida real una extraordinaria aventura',6)

insert into videojuegos (codigo,nombre,descripcion,valoracion)
values (0103,'La luz del diablo','LO más terrorifico del 2022',4)

insert into videojuegos (codigo,nombre,descripcion,valoracion)
values (0104,'Eterno Resplandor','Rencuentro entre transportes de ex',10)

insert into videojuegos (codigo,nombre,descripcion,valoracion)
values (0105,'Erreway 4 Caminos','Siguiente de la serie Rebelde Way',9)

insert into videojuegos (codigo,nombre)
values (0106,'Titanic')

insert into videojuegos (codigo,nombre)
values (0107,'Kun Fu Panda')

insert into videojuegos (codigo,nombre)
values (0108,'Casper')

select *from videojuegos

--seleccion donde un nombre del videojuego empiece con C
select *from videojuegos
where nombre like 'C%'

--seleccion de videojuegos con la valoración entre 9 y 10
select *from videojuegos
where valoracion between '9' and '10'

--seleccionar a los videojuegos con la descripcion 
select *from videojuegos
where descripcion is null

--cambiar la descripcion donde la valoraion sea mayor que nueve y dija mejor puntuado
update videojuegos set descripcion = 'Mejor Puntuado'
where valoracion > 9
