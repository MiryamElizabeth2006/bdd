
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

--mas insertados
insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(07563, 'Call of Duty', 'juego de terror', 9);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(85421, 'Free Fire', 'juego de accion', 7);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(93475, 'Call of Clans', 'juego de terror', 10);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(15983, 'Fornite', 'juego de suspenso', 10);

insert into videojuegos(codigo, nombre, valoracion)
values(35784, 'Minecraft', 3);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(54682, 'Tom and Jerry', 'juego de comedia', 8);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(01456, 'Ajedres', 'juego de psicoligia', 6);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(70215, 'God of Ward', 'juego de aprendisaje', 7);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(63240, 'Crash', 'juego de deprote', 9);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(63549, 'Dragon Ball', 'juego de baile', 8);



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

--eliminar los videojuegos cuya valoracion sea menor a 7
delete from videojuegos
where valoracion < 7

--mostrar los registros donde un nombre tenga la letra C o tenga una valoracion de 7
select * from videojuegos
where (nombre like 'C%' or nombre like '%c%' or nombre like '%c') or valoracion = 7 

--selecionar un videojuego con el codigo entre 3 y 7 o una valoracion de 7
select * from videojuegos
where (codigo between 3 and 7) or valoracion = 7

--seleccionar videojuegos de guerra con una valoracion mayor a 7 y que su nombre empeice con C o los videojuegos con una valoracion mayor a 8 y que su nombre empiece por D
select * from videojuegos
where (descripcion = 'juego de guerra' and valoracion > 7 and nombre like 'C%') or valoracion > 8 and nombre like 'D%'