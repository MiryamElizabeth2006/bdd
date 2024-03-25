  -- creación tabla 4
 
 create table registros_entrada(
 	codigo_registro int not null,
	 cedula_empleado char (10) not null,
	 fecha date not null,
	 hora time not null,
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
foreign key (empleado)
references empleado(codigo_empleado)

--Insertar en empleado
insert into empleado(codigo_empleado,nombre,fecha,hora)
values(2201,'Juan','02/02/2024','12:12');

insert into empleado(codigo_empleado,nombre,fecha,hora)
values(2202,'Luisa','7/03/2024','14:20');

insert into empleado(codigo_empleado,nombre,fecha,hora)
values(2203,'Mario','06/02/2024','06:12');

insert into empleado(codigo_empleado,nombre,fecha,hora)
values(2204,'Juana','12/02/2024','8:20');

insert into empleado(codigo_empleado,nombre,fecha,hora)
values(2205,'Lucia','2/03/2024','9:30');

insert into empleado(codigo_empleado,nombre,fecha,hora)
values(2206,'Roy','18/02/2024','11:15');

insert into empleado(codigo_empleado,nombre,fecha,hora)
values(2207,'Rufino','02/03/2024','10:22');

insert into empleado(codigo_empleado,nombre,fecha,hora)
values(2208,'Torivio','08/11/2023','11:12');

insert into empleado(codigo_empleado,nombre,fecha,hora)
values(2209,'Heidy','25/12/2023','16:30');

insert into empleado(codigo_empleado,nombre,fecha,hora)
values(2210,'Mateo','07/11/2023','13:00');

--Insertar en registros_entrada
 insert into registros_entrada (codigo_registro,cedula_empleado,fecha,hora,empleado)
 values (00010,'1748756912','02/02/2024','12:12',2201);
 
 insert into registros_entrada (codigo_registro,cedula_empleado,fecha,hora,empleado)
 values (00011,'0603215478','7/03/2024','14:20',2202);
 
 insert into registros_entrada (codigo_registro,cedula_empleado,fecha,hora,empleado)
 values (00012,'1478945212','06/02/2024','06:12',2203);
 
 insert into registros_entrada (codigo_registro,cedula_empleado,fecha,hora,empleado)
 values (00013,'1478945212','12/02/2024','8:20',2204);
 
 insert into registros_entrada (codigo_registro,cedula_empleado,fecha,hora,empleado)
 values (00014,'1524789632','2/03/2024','9:30',2205);
 
 insert into registros_entrada (codigo_registro,cedula_empleado,fecha,hora,empleado)
 values (00015,'0745841278','18/02/2024','11:15',2206);  
 
 insert into registros_entrada (codigo_registro,cedula_empleado,fecha,hora,empleado)
 values (00016,'1714527836','02/03/2024','10:22',2207); 
 
 insert into registros_entrada (codigo_registro,cedula_empleado,fecha,hora,empleado)
 values (00017,'0623547822','08/11/2023','11:12',2208); 
 
 insert into registros_entrada (codigo_registro,cedula_empleado,fecha,hora,empleado)
 values (00018,'4578961234','25/12/2023','16:30',2209);
 
 insert into registros_entrada (codigo_registro,cedula_empleado,fecha,hora,empleado)
 values (00019,'1748756924','07/11/2023','13:00',2210); 


