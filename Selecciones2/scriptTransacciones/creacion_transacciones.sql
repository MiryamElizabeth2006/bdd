--creación tabla 6

create table transacciones(
	codigo int not null,
	numero_cuenta char(5) not null,
	monto money not null,
	tipo char (1) not null,
	fecha date not null,
	hora time not null,
	constraint transacciones_pk primary key(codigo)
)
insert into transacciones (codigo,numero_cuenta,monto,tipo,fecha,hora)
values (1001,'17845',100.12,'C','12/02/2022','12:45')

insert into transacciones (codigo,numero_cuenta,monto,tipo,fecha,hora)
values (1002,'17856',1000,'D','11/08/2020','15:35')

insert into transacciones (codigo,numero_cuenta,monto,tipo,fecha,hora)
values (1220,'25417',1500000,'D','26/11/2016','12:12')

insert into transacciones (codigo,numero_cuenta,monto,tipo,fecha,hora)
values (8129,'45789',450000,'C','29/02/2024','17:00')

insert into transacciones (codigo,numero_cuenta,monto,tipo,fecha,hora)
values (1005,'17222',100000000000,'D','19/05/2015','9:18')

insert into transacciones (codigo,numero_cuenta,monto,tipo,fecha,hora)
values (1017,'22222',200,'D','23/12/2022','13:15')

insert into transacciones (codigo,numero_cuenta,monto,tipo,fecha,hora)
values (1500,'14587',800000,'D','05/08/2020','18::41')

insert into transacciones (codigo,numero_cuenta,monto,tipo,fecha,hora)
values (1018,'17848',50000,'C','12/07/2022','12:12')

insert into transacciones (codigo,numero_cuenta,monto,tipo,fecha,hora)
values (1020,'14785',14700000,'C','22/02/2019','17:59')

insert into transacciones (codigo,numero_cuenta,monto,tipo,fecha,hora)
values (1025,'14785',600000,'D','13/12/2023','10:18')

insert into transacciones (codigo,numero_cuenta,monto,tipo,fecha,hora)
values (1026,'17858',800,'C','12/02/2022','12:30')

insert into transacciones (codigo,numero_cuenta,monto,tipo,fecha,hora)
values (1027,'17789',650,'C','23/05/2023','14:30')

--mas insertados
insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(78945, '75369', 200, 'C', '20/09/2023', '23:30');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(53147, '32102', 500.65, 'D', '15/06/2022', '17:55');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(32548, '21001', 1600, 'C', '17/05/2021', '16:37');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(32165, '51437', 1050, 'D', '25/04/2020', '15:48');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(78542, '02147', 300, 'D', '20/03/2019', '22:19');

insert into transacciones(codigo, numero_cuenta, monto, tipo,fecha, hora)
values(23210, '32015', 400, 'C', '20/05/2022','13:55');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(35412, '85214', 600, 'D', '07/12/2015', '20:14');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(54193, '96325', 800, 'D', '06/11/2012', '11:00');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(95124, '74125', 900, 'D', '23/10/2002', '9:00');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(54143, '85213', 2000, 'C', '11/09/1999', '7:30');


select *from transacciones

--seleccion de las transacciones solo tipo D
select *from transacciones
where tipo like 'D%'

--seleccion de las transacciones con montos entre 200 y 2000
select *from transacciones
where monto between '200' and '2000'

--seleccion de codigo, monto, tipo y fecha de las transacciones con fecha diferente de null
select codigo,monto,tipo,fecha from transacciones
where fecha is not null

--Actualiza tipo de todos los registro que tengan una transaccion mayor a 100 y menor a 500 que se haya llevado a cabo el mes de septiebre con horas entre 14:00 y 20:00 por T
update transacciones set tipo = 'T'
where codigo = 1005 

--eliminar las trasferencias que se hayan hecho entre las 14:00 y 18:00 del mes de agosto del año actual
delete from transacciones
where fecha = '1/08/2024'

--Seleccionar las transacciones de tipo C realizadas por los clientes con numeros de cuentas entre 222001 y 22004
select * from transacciones
where tipo = 'C' and numero_cuenta between '22004' and  '222001'

--seleccionar las transaccionesde tipo D que fueron realizadas el 25 de mayo y con el rango de cuenta entre 22007 y 22010
select * from transacciones
where tipo = 'D' and fecha = '25/05/2022' and numero_cuenta between '22007' and '22010'

--seleciones als transacciones donde el codigo sea entre 1 y 5 numero de cuenta entre 22002 o 22004 que se haya realizado los día 26 y 29 de mayo
select * from transacciones
where (codigo between 1 and 5) and (numero_cuenta between '22002' and '22004') and (fecha between '26/05/2021' and '29/05/2021')and(fecha between '23/05/2022' and '29/05/2022')