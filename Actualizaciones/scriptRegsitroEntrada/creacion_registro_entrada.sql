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
 
 insert into registros_entrada (codigo_registro,cedula_empleado,fecha,hora)
 values (00021,'1748756988','13/06/2023','07:40')
 
 select * from registros_entrada 
 
 --Seleccion de todas las cedulas, fecha y hora
 select cedula_empleado,fecha,hora from registros_entrada
 
 --seleccion de todos los registros que esten entre 7:00 y 14:00
 select * from registros_entrada 
 where hora between '7:00' and '14:00'
 
 --Horas superiores a 8:00
 select * from registros_entrada 
 where hora > '8:00'
 
 --Actulizar con la cedula 082345679 a todos los registros del mes de agosto
 update registros_entrada set cedula_empleado = '082345679'
 where fecha ='09/08/2023'
-- where fecha ='23/08/2022'
-- where fecha ='05/08/2022'