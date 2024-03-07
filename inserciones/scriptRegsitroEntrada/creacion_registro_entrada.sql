  -- creación tabla 4
 
 create table registros_entrada(
 	codigo_registro int not null,
	 cedula_empleado char (10) not null,
	 fecha date not null,
	 hora time not null,
	 constraint registro_entrada_pk primary key(codigo_registro)
 )
 insert into registros_entrada (codigo_registro,cedula_empleado,fecha,hora)
 values (00010,'1748756912','02/02/2024','12:12') 
 
 insert into registros_entrada (codigo_registro,cedula_empleado,fecha,hora)
 values (00011,'0603215478','7/03/2024','14:20')
 
 insert into registros_entrada (codigo_registro,cedula_empleado,fecha,hora)
 values (00012,'1478945212','06/02/2024','06:12')
 
 insert into registros_entrada (codigo_registro,cedula_empleado,fecha,hora)
 values (00013,'1478945212','12/02/2024','8:20') 
 
 insert into registros_entrada (codigo_registro,cedula_empleado,fecha,hora)
 values (00014,'1524789632','2/03/2024','9:30') 
 
 insert into registros_entrada (codigo_registro,cedula_empleado,fecha,hora)
 values (00015,'0745841278','18/02/2024','11:15')  
 
 insert into registros_entrada (codigo_registro,cedula_empleado,fecha,hora)
 values (00016,'1714527836','02/03/2024','10:22') 
 
 insert into registros_entrada (codigo_registro,cedula_empleado,fecha,hora)
 values (00017,'0623547822','08/11/2023','11:12') 
 
 insert into registros_entrada (codigo_registro,cedula_empleado,fecha,hora)
 values (00018,'4578961234','25/12/2023','16:30') 
 
 insert into registros_entrada (codigo_registro,cedula_empleado,fecha,hora)
 values (00019,'1748756924','07/11/2023','13:00') 

insert into registros_entrada (codigo_registro,cedula_empleado,fecha,hora)
 values (00020,'1848756988','09/05/2023','12:40') 
 
 select * from registros_entrada
 
 
 