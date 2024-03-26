--Creación tabla 3

create table estudiantes(
	cedula char (10) not null,
	nombre varchar (50) not null,
	apellido varchar (50) not null,
	email varchar (50) not null,
	fecha_nacimiento date,
	codigo_profesor int not null,
	constraint estudiantes_pk primary key(cedula)
)

select * from estudiantes

drop table profesores
drop table estudiantes
select * from estudiantes
select * from profesores

create table profesores(
codigo int not null,
	nombre varchar(50) not null,
	constraint profesores_pk primary key(codigo)
)

alter table estudiantes
add column profesores int not null

alter table estudiantes
add constraint estudiantes_profesores_fk
foreign key(profesores)
references profesores(codigo)

--insertar registros
insert into profesores(codigo,nombre)
values(1,'Luis Narvaéz');

insert into profesores(codigo,nombre)
values(2,'Juan Cobos');

insert into profesores(codigo,nombre)
values(3,'Francisco Fernandez');

--Insertar datos en l tabla original
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento,codigo_profesor,profesores)
values ('1755646764','Juana','Sanchez','juan354@gmail.com','02/04/1987',1,1);

insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento,codigo_profesor,profesores)
values ('0605646765','Mario','Vasquez','mariovas123@gmail.com','28/10/1985',2,2);

insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento,codigo_profesor,profesores)
values ('0603632423','Yolanda','Niburo','yolilinda@gmail.com','13/08/1995',3,2);

insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento,codigo_profesor,profesores)
values ('1245789623','Mirella','Ninasunta','mire2000@gmail.com','04/11/2000',1,1);

insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento,codigo_profesor,profesores)
values ('1645646768','Luna','Nono','luna15@gmail.com','16/07/1900',2,2);

insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento,codigo_profesor,profesores)
values ('0603245789','Marcos','Nita','marc778@gmail.com','12/05/2005',3,2);

insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento,codigo_profesor,profesores)
values ('1745896512','Pablo','Bustamante','bustamante12@gmail.com','11/04/1968',1,3);

insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento,codigo_profesor,profesores)
values ('0987451263','Manuel','Aguirre','manu45@gmail.com','14/12/1995',2,1);

insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento,codigo_profesor,profesores)
values ('0987451258','Ariana','Sanchez','ari22@gmail.com','14/12/1995',3,3);

insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento,codigo_profesor,profesores)
values ('0988741263','Alex','Nasimba','pastita@gmail.com','15/02/2006',1,3);

--Consulta
select pr.codigo,es.nombre,es.apellido from
estudiantes es,profesores pr
where 
es.codigo_profesor = pr.codigo
and (apellido like 'N%' or apellido like '%n' or apellido like '%n%')

--Subconsulta
select es.cedula,es.nombre, es.apellido, es.email,es.fecha_nacimiento, es.codigo_profesor from
estudiantes es,profesores pr
where 
es.codigo_profesor = pr.codigo
and es.codigo_profesor = 3 --EL 3 porque es el codigo de Francisco

--AGREGACIONES RETO 25
select codigo_profesor, count(estudiantes) from estudiantes
group by codigo_profesor

--AGREGACIONES 2
SELECT ROUND (AVG (EXTRACT (YEAR FROM CURRENT_DATE) - EXTRACT(YEAR FROM fecha_nacimiento))) AS edad_promedio FROM estudiantes