--creación tabla 5

create table videojuegos(
	codigo int not null,
	nombre varchar (100) not null,
	descripcion varchar (300),
	valoracion int,
	
	constraint videojuegos_pk primary key(codigo)
)
insert into videojuegos (codigo,nombre,descripcion,valoracion)
values (0101,'Crépsculo','Vampiros,Lobos y Humanos',0)

insert into videojuegos (codigo,nombre,descripcion,valoracion)
values (0102,'Barbie','BARBIE en la vida real una extraordinaria aventura',0)

insert into videojuegos (codigo,nombre,descripcion,valoracion)
values (0103,'La luz del diablo','LO más terrorifico del 2022',0)

insert into videojuegos (codigo,nombre,descripcion,valoracion)
values (0104,'Eterno Resplandor','Rencuentro entre transportes de ex',1)

insert into videojuegos (codigo,nombre,descripcion,valoracion)
values (0105,'Erreway 4 Caminos','Siguiente de la serie Rebelde Way',0)

insert into videojuegos (codigo,nombre)
values (0106,'Titanic')

insert into videojuegos (codigo,nombre)
values (0107,'Kun Fu Panda')

insert into videojuegos (codigo,nombre)
values (0108,'Casper')

select *from videojuegos
