--creaacion tabla 2

create table cuentas(
	numero_cuenta char (5) not null,
	cedula_propietario char (5) not null,
	fecha_creacion date not null,
	saldo money not null,
	 constraint cuentas_pk primary key(numero_cuenta)
)
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('00001','17556','11/11/2016',200.50)

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('00002','17551','02/08/2011',800.40)

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('00003','15552','17/12/2020',450)

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('00004','18553','20/01/2015',350.50)

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('00005','17554','03/07/2016',200)

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('00006','17254','07/04/2022',52)

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('00007','06055','11/02/2017',200000)

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('00008','17557','03/12/2016',25.000)

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('00009','06035','31/12/1955',1000000000)

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('00010','17854','08/03/2024',12)

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('00011','17556','23/02/2024',200.80)

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('00012','17545','12/01/2024',35000)

select * from cuentas

--número de cuenta y saldo
select numero_cuenta,saldo from cuentas

--registros entre el día de hoy y dos meses antes
select * from cuentas
where fecha_creacion between '10/01/2024' and '10/03/2024'

--numero de cuenta y saldo entre los registros de dos meses antes y el día de hoy
select numero_cuenta,saldo,fecha_creacion from cuentas
where fecha_creacion between '10/01/2024' and '10/03/2024' 

--numero de cuenta y saldo entre los registros de dos meses antes y el día de hoy sin que se muestre fecha de creacion
select numero_cuenta,saldo from cuentas
where fecha_creacion between '10/01/2024' and '10/03/2024'

--modificar el saldo a 10 cuya cedula empieze en 17
update cuentas set saldo = 10
where cedula_propietario like '17%'