--Creación tabla 3

create table estudiantes(
	cedula char (10) not null,
	nombre varchar (50) not null,
	apellido varchar (50) not null,
	email varchar (50) not null,
	fecha_nacimiento date not null,
	constraint estudiantes_pk primary key(cedula)
)
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values ('1755646764','Juana','Sanchez','juan354@gmail.com','02/04/1987')

insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values ('0605646765','Mario','Vasquez','mariovas123@gmail.com','28/10/1985')

insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values ('0603632423','Yolanda','Mijan','yolilinda@gmail.com','13/08/1995')

insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values ('1245789623','Mirella','Castro','mire2000@gmail.com','04/11/2000')

insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values ('1645646768','Luna','Fernandez','luna15@gmail.com','16/07/1900')

insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values ('0603245789','Marcos','Aguilar','marc778@gmail.com','12/05/2005')

insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values ('1745896512','Pablo','Bustamante','bustamante12@gmail.com','11/04/1968')

insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values ('0987451263','Manuel','Aguirre','manu45@gmail.com','14/12/1995')

insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values ('0987451258','Ariana','Sanchez','ari22@gmail.com','14/12/1995')

insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values ('0988741263','Alex','Palma','pastita@gmail.com','15/02/2006')

select * from estudiantes

--nombre y cedula de los estudiantes
select nombre,cedula from estudiantes

--nombre de los estudiantes que su cedula empieze  con 17
select nombre,cedula from estudiantes
where cedula like '17%'

--nombre de los estudiantes que su cedula empieze  con 17 sin que se muestre la cedula
select nombre from estudiantes
where cedula like '17%'

--nombres completos de todos los estudiantes que empiecen con A
select * from estudiantes
where nombre like 'A%'

--Actualizar el apellido a Hernández donde la cedula empiece por 17
update estudiantes set apellido = 'Hernández'
where cedula like '17%'

--Eliminar estudiantes que su cedula termine en 05
delete from estudiantes
where cedula like '%05'