--creacion tabla 2

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

--mas datos
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25569,17504,'15/01/2030',500);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25570,17500,'01/11/2028',600);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25571,17501,'22/01/2023',700);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25572,17508,'30/05/2022',800);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25573,17509,'15/03/2023',900);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25574,17510,'15/05/2023',1000);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25575,17507,'15/09/2023',1500);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25576,17515,'15/10/2024',2500);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25577,17512,'15/08/2025',3500);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25578,17503,'15/06/2017',4500);


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

--Eliminar todas las cuentas cuyas cedulas empeize por 10
delete from cuentas
where cedula_propietario like '10%'

--selecciona el numero de cuenta y saldo de todas las cuentas con saldo mayor a 100 y menor a 1000
select numero_cuenta,saldo from cuentas
where saldo > money(100) and saldo < money(1000)

--seleccionar las cuentas entre el día de hoy y hace un año
select * from cuentas
where fecha_creacion between '10/03/2023' and '10/03/2024'

--seleciones las cuetnas que tenga el saldo en cero o su numero de cuenta termine en 2
select * from cuentas
where saldo = money(0) or cedula_propietario like '%2'