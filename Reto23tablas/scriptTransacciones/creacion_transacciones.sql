--creación tabla 6

create table transacciones(
	codigo int not null,
	numero_cuenta char(5) not null,
	monto money not null,
	tipo char (1) not null,
	fecha date,
	hora time,
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

drop table transacciones

create table banco(
codigo_banco int not null,
	codigo_transaccion int not null,
	detalle varchar(100) not null,
	constraint banco_pk primary key(codigo_banco)
)

alter table transacciones
add column banco int not null

alter table transacciones 
add constraint transacciones_banco_fk
foreign key (banco)
references banco(codigo_banco)

--Insertar en banco
insert into banco(codigo_banco,codigo_transaccion,detalle)
values(001,11001,'Negocio');

insert into banco(codigo_banco,codigo_transaccion,detalle)
values(002,11002,'Uso personal');

insert into banco(codigo_banco,codigo_transaccion,detalle)
values(003,11003,'Pago de prestamos');


--Insertar en transacciones
insert into transacciones (codigo,numero_cuenta,monto,tipo,fecha,hora,banco)
values (1001,'22002',100.12,'C','12/02/2022','12:45',001);

insert into transacciones (codigo,numero_cuenta,monto,tipo,fecha,hora,banco)
values (1002,'22003',1000,'D','11/08/2020','15:35',002);

insert into transacciones (codigo,numero_cuenta,monto,tipo,fecha,hora,banco)
values (1220,'22004',1500000,'D','26/11/2016','12:12',003);

insert into transacciones (codigo,numero_cuenta,monto,tipo,fecha,hora,banco)
values (8129,'22001',450000,'C','29/02/2024','17:00',002);

insert into transacciones (codigo,numero_cuenta,monto,tipo,fecha,hora,banco)
values (1005,'22001',100000000000,'D','19/05/2015','9:18',001);

insert into transacciones (codigo,numero_cuenta,monto,tipo,fecha,hora,banco)
values (1017,'22003',200,'D','23/12/2022','13:15',001);

insert into transacciones (codigo,numero_cuenta,monto,tipo,fecha,hora,banco)
values (1500,'22004',800000,'D','05/08/2020','18::41',002);

insert into transacciones (codigo,numero_cuenta,monto,tipo,fecha,hora,banco)
values (1018,'22003',50000,'C','12/07/2022','12:12',003);

insert into transacciones (codigo,numero_cuenta,monto,tipo,fecha,hora,banco)
values (1020,'22002',14700000,'C','22/02/2019','17:59',001);

insert into transacciones (codigo,numero_cuenta,monto,tipo,fecha,hora,banco)
values (1,'22003',600000,'D','13/12/2023','10:18',002);