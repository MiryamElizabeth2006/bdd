  -- creación tabla 4
 
 create table registros_entrada(
 	codigo_registro int not null,
	 cedula_empleado char (10) not null,
	 fecha date not null,
	 hora time not null,
	 codigo_empleado int not null,
	 constraint registro_entrada_pk primary key(codigo_registro)
 )
 
 select * from registros_entrada 
 select * from empleado
 drop table registros_entrada
 drop table empleado

create table empleado(
	codigo_empleado int not null,
	nombre varchar(25) not null,
	fecha date not null,
	hora time not null,
	constraint empleado_pk primary key(codigo_empleado)
)

alter table registros_entrada
add column empleado int not null

alter table registros_entrada
add constraint regitros_entrada_empleado_fk
foreign key (codigo_empleado)
references empleado(codigo_empleado)

--Insertar en empleado
insert into empleado(codigo_empleado,nombre,fecha,hora)
values(2201,'Juan','02/08/2023','12:12');

insert into empleado(codigo_empleado,nombre,fecha,hora)
values(2202,'Luisa','7/08/2023','11:20');

insert into empleado(codigo_empleado,nombre,fecha,hora)
values(2203,'Mario','06/08/2023','09:12');

insert into empleado(codigo_empleado,nombre,fecha,hora)
values(2204,'Juana','12/08/2023','10:20');

insert into empleado(codigo_empleado,nombre,fecha,hora)
values(2205,'Lucia','2/08/2023','9:30');

insert into empleado(codigo_empleado,nombre,fecha,hora)
values(2206,'Roy','18/08/2023','11:15');

insert into empleado(codigo_empleado,nombre,fecha,hora)
values(2207,'Rufino','02/08/2023','10:22');

insert into empleado(codigo_empleado,nombre,fecha,hora)
values(2208,'Torivio','08/08/2023','11:12');

insert into empleado(codigo_empleado,nombre,fecha,hora)
values(2209,'Heidy','25/08/2023','11:30');

insert into empleado(codigo_empleado,nombre,fecha,hora)
values(2210,'Mateo','07/08/2023','12:00');

--Insertar en registros_entrada
 insert into registros_entrada (codigo_registro,cedula_empleado,fecha,hora,codigo_empleado,empleado)
 values (00010,'1748756912','05/08/2023','12:12',2201,2201);
 
 insert into registros_entrada (codigo_registro,cedula_empleado,fecha,hora,codigo_empleado,empleado)
 values (00011,'0603215478','7/08/2023','11:20',2202,2202);
 
 insert into registros_entrada (codigo_registro,cedula_empleado,fecha,hora,codigo_empleado,empleado)
 values (00012,'1478945212','06/08/2023','06:12',2203,2203);
 
 insert into registros_entrada (codigo_registro,cedula_empleado,fecha,hora,codigo_empleado,empleado)
 values (00013,'1478945212','12/08/2023','9:20',2204,2204);
 
 insert into registros_entrada (codigo_registro,cedula_empleado,fecha,hora,codigo_empleado,empleado)
 values (00014,'1524789632','2/08/2023','9:30',2205,2205);
 
 insert into registros_entrada (codigo_registro,cedula_empleado,fecha,hora,codigo_empleado,empleado)
 values (00015,'0745841278','18/08/2023','11:15',2206,2206);  
 
 insert into registros_entrada (codigo_registro,cedula_empleado,fecha,hora,codigo_empleado,empleado)
 values (00016,'1714527836','02/08/2023','10:22',2207,2207); 
 
 insert into registros_entrada (codigo_registro,cedula_empleado,fecha,hora,codigo_empleado,empleado)
 values (00017,'0623547822','23/08/2023','11:12',2208,2208); 
 
 insert into registros_entrada (codigo_registro,cedula_empleado,fecha,hora,codigo_empleado,empleado)
 values (00018,'4578961234','12/08/2023','16:30',2209,2209);
 
 insert into registros_entrada (codigo_registro,cedula_empleado,fecha,hora,codigo_empleado,empleado)
 values (00019,'1748756924','08/08/2023','12:00',2210,2210); 

--Consulta
select re.cedula_empleado,re.fecha,em.nombre from 
registros_entrada re,empleado em
where
re.empleado = em.codigo_empleado
and (re.fecha between '2023/08/01' and '2023/08/31' or cedula_empleado like '17%')
and re.hora between '08:00' and '12:00' or re.fecha between '2023/10/06' and '2023/10/20'
and re.cedula_empleado like '08%' and re.hora between '09:00' and '13:30'

--Subconsulta
select re.codigo_registro,em.nombre from
registros_entrada re,empleado em
where
re.empleado = em.codigo_empleado 
and re.empleado = 2201

--AGREGACIONES RETO 25
--AGREGACIONES 1
select cedula_empleado, count(*) from registros_entrada
group by cedula_empleado

--AGREGACIONES 2
select MIN(fecha), MAX(fecha) from registros_entrada
