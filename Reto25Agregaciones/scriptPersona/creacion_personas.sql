--crear la tabla personas
create table personas(
	cedula char(10) not null,
	nombre varchar(50) not null,
	apellido varchar(50) not null,
	estatura decimal,
	fecha_nacimiento date not null,
	hora_nacimiento time,
	cantidad_ahorrada money,
	numero_hijos int,
	constraint personas_pk primary key(cedula)
)


select cedula,nombre,apellido from personas

--buscar datos entre algunos designados
select * from personas
where fecha_nacimiento 
between '12/05/2000' and '23/12/2005'

--buscar dato por letras
select * from personas
where nombre like 'P%' 

--buscar las casillas en null
select *from personas where hora_nacimiento is not null

select *from personas where estatura <> 1.60

--actualizar datos en la misma fila
update personas set estatura = 1.70
where cedula = '1755646735'

--actualizar datos en donde se requiera
update personas set cantidad_ahorrada = 0.0
where cantidad_ahorrada is null

update personas set numero_hijos = 0
where numero_hijos is null

--actualizar en algunas columnas
update personas set estatura = 1.50, fecha_nacimiento = '28/11/2006', hora_nacimiento = '14:00'
where cedula = '1755646732'

--Eliminar dato de la fila
delete from personas
where cedula = '1755646735'

delete from personas
where fecha_nacimiento is null

--Operador and y or para la consulta
select * from personas
where nombre = 'Jhon' and apellido = 'León' and estatura = '1.60'

select * from personas
where nombre = 'Jhon' or nombre = 'Luisa' 

--personas que se llamen jhon o luisa y estatura null
select * from personas 
where (nombre = 'Jhon' or nombre = 'Luisa')
and (estatura = 1.60 or estatura < 1.70)



alter table personas
add column estado_civil char (1) not null

create table estado_civil(
	codigo char(1) not null,
	descripcion varchar(20) not null,
	constraint registro_civil_pk primary key(codigo)
)

alter table personas 
add constraint personas_estado_civil_fk
foreign key (estado_civil)
references estado_civil(codigo)

insert into personas (cedula,nombre,apellido,estado_civil)
values ('1745127874','Elizabeth2','Nono2','U')

select * from estado_civil

insert into estado_civil(codigo,descripcion)
values('U','UNION LIBRE');
insert into estado_civil(codigo,descripcion)
values('C','CASADO');
insert into estado_civil(codigo,descripcion)
values('S','SOLTERO');

select * from personas

--Reto 23
drop table personas
drop table prestamo

create table prestamo(
cedula char(10) not null,
	monto money,
	fecha_prestamo date,
	hora_prestamo time,
	garante varchar(40),
	constraint prestamo_pk primary key(cedula)
)

alter table personas
add column prestamo char(10) not null

alter table personas 
add constraint personas_prestamo_fk
foreign key (prestamo)
references prestamo(cedula)

--insertar em prestamo
insert into prestamo(cedula,monto,fecha_prestamo,hora_prestamo,garante)
values('1784526914',800,'23/01/2023','12:30','Elizabeth');

insert into prestamo(cedula,monto,fecha_prestamo,hora_prestamo,garante)
values('0603528742',300,'14/06/2023','14:30','Mayorit');

insert into prestamo(cedula,monto,fecha_prestamo,hora_prestamo,garante)
values('1345789623',400,'12/11/2023','11:30','Jhon');

insert into prestamo(cedula,monto,fecha_prestamo,hora_prestamo,garante)
values('6526263233',800,'12/01/2022','12:30','Lana');

insert into prestamo(cedula,monto,fecha_prestamo,hora_prestamo,garante)
values('6599564656',450,'02/06/2022','13:30','Juan');

insert into prestamo(cedula,monto,fecha_prestamo,hora_prestamo,garante)
values('8485487454',120,'13/08/2024','11:00','Luna');

insert into prestamo(cedula,monto,fecha_prestamo,hora_prestamo,garante)
values('6521656256',655,'15/02/2023','7:30','Edwin');

insert into prestamo(cedula,monto,fecha_prestamo,hora_prestamo,garante)
values('6565662622',655,'05/12/2022','9:00','Mateo');

insert into prestamo(cedula,monto,fecha_prestamo,hora_prestamo,garante)
values('9989556566',840,'12/05/2022','11:30','Julia');

insert into prestamo(cedula,monto,fecha_prestamo,hora_prestamo,garante)
values('5646545645',120,'13/05/2022','15:00','Jhony');



--Insertar en tabla personas
insert into personas (cedula,nombre,apellido,fecha_nacimiento,cantidad_ahorrada,prestamo)
values ('1755646732','Elizabeth','Nono','05/06/2000',1000,'1784526914');

insert into personas (cedula,nombre,apellido,fecha_nacimiento,cantidad_ahorrada,prestamo)
values ('1755646734','Pamela','León','15/07/2001',500,'0603528742');

insert into personas (cedula,nombre,apellido,numero_hijos,fecha_nacimiento,cantidad_ahorrada,prestamo)
values ('1755646735','Luisa','Lian',2,'12/02/1995',300,'1345789623');

insert into personas (cedula,nombre,apellido,numero_hijos,estatura,fecha_nacimiento,hora_nacimiento,cantidad_ahorrada,prestamo)
values ('1755646756','Estefania','Rosales',1,1.58,'22/05/2000','22:54',200.34,'6526263233');

insert into personas (cedula,nombre,apellido,numero_hijos,estatura,fecha_nacimiento,hora_nacimiento,cantidad_ahorrada,prestamo)
values ('1755646487','Jhon','Rosales',2,1.80,'22/05/2000','10:54',500,'6526263233');

insert into personas (cedula,nombre,apellido,numero_hijos,estatura,fecha_nacimiento,hora_nacimiento,cantidad_ahorrada,prestamo)
values ('1755646736','Estefano','Linares',1,1.58,'22/05/2000','22:54',200.34,'8485487454');

insert into personas (cedula,nombre,apellido,numero_hijos,estatura,fecha_nacimiento,hora_nacimiento,cantidad_ahorrada,prestamo)
values ('1755154875','Sean','Farinango',2,1.80,'22/05/2000','10:54',500,'6521656256');

insert into personas (cedula,nombre,apellido,fecha_nacimiento,cantidad_ahorrada,prestamo)
values ('1654654515','Elizabeth','Fernandez','14/02/2000',1500,'6565662622');

insert into personas (cedula,nombre,apellido,estatura,fecha_nacimiento,cantidad_ahorrada,prestamo)
values ('4565665656','Rosa','León',1.58,'15/12/2001',2005,'9989556566');

insert into personas (cedula,nombre,apellido,numero_hijos,fecha_nacimiento,cantidad_ahorrada,prestamo)
values ('1755614735','Rosa','Lian',2,'18/05/2002',400,'5646545645');

--Consulta
select pe.cantidad_ahorrada, pr.monto, pr.garante from
personas pe, prestamo pr
where 
pe.prestamo = pr.cedula
and pr.monto between '100' and '1000'

--Subconsulta
select pe.cedula,pe.nombre,pe.apellido,pe.estatura,pe.fecha_nacimiento,pe.cantidad_ahorrada,pe.numero_hijos from
personas pe, prestamo pr
where pe.prestamo = pr.cedula
and pe.prestamo like '65%56'

--AGREGACIONES RETO 25
--AGREGACION 1
select cedula, sum(monto) from prestamo
group by cedula

--AGREGACIONES 2
select count(*) from personas
where numero_hijos >= 1