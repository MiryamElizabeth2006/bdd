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
