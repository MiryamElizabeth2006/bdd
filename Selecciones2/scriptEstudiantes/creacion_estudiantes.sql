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

insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1235476801,'Raul','Martínez','raumart01@gmail.com','04/02/2003');
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1735476802,'Mario','Guaman','MarioG25@gmail.com', '08/12/2000');
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1235476803,'Roberto','Quishpe','RobQuishpe64@gmail.com','29/06/2005');
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1735476804,'Paul','Noguera','PaulNog55@gmail.com','22/07/2002');
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1235476805,'Marcelo','Ramos','MarceloR72@gmail.com','15/08/2008');
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1735476806,'Anthony','Agual','KAgual22@gmail.com','25/03/2002');
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1235476807,'Paula','Celi','PauCeli31@gmail.com','30/09/2010' );
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1735476808,'Mónica','Martínez','MoniMar15@gmail.com','22/01/2001');
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1235476809,'Anabel','Perlaza','WPerlaza18@gmail.com','12/04/2000');
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1735476810,'Sofía','Jimenez','SofiJz22@gmail.com','22/01/2001');


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

--selecionar los nombres y apellidos de los estudiantes cuyos nombres empiecen con M o su apellido termine en Z
select nombre,apellido from estudiantes
where nombre like 'M%' or apellido like '%z'

--crear un select donde muestre los nombres de los estudiantes que en su cedula tenga un numero 32 y empiezecon 18 en alguna parte de su cedula
select nombre from estudiantes
where cedula like '%32%' and cedula like '18%'

--crear un select donde muestre los nombres de los estudiantes que en su cedula tenga un numero 32 y empiezecon 18 en alguna parte de su cedula mostrando la cedula
select nombre,cedula from estudiantes
where cedula like '%32%' and cedula like '18%'

--select que haga que traiga los nombres completos de todos los estudiantes cuya cedula termine en 06 o comienze en 17 
select nombre,apellido from estudiantes
where cedula like '%06' or cedula like '17%'

--select que haga que traiga los nombres completos de todos los estudiantes cuya cedula termine en 06 o comienze en 17 mostrando la cedula
select nombre,apellido,cedula from estudiantes
where cedula like '%06' or cedula like '17%'