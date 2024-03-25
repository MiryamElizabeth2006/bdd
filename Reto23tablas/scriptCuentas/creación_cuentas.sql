--creacion tabla 2

create table cuentas(
	numero_cuenta char (5) not null,
	cedula_propietario char (5) not null,
	fecha_creacion date not null,
	saldo money not null,
	 constraint cuentas_pk primary key(numero_cuenta)
)

select * from cuentas

--Creción de relaciones
alter table cuentas
add column usuario char (5) not null

alter table cuentas
add constraint cuentas_usuario_fk
foreign key (usuario)
references usuario(cedula)

--Crear tabla usuario
create table usuario(
	cedula char(5) not null,
	nombre varchar(25) not null,
	apellido varchar (25) not null,
	tipo_cuenta varchar(20),
	limite_credito DECIMAL(10,2),
	constraint usuario_pk primary key(cedula)
)

drop table usuario
drop table cuentas

select * from cuentas
select * from usuario

--Ingresar info en la tabla de relación usuario
insert into usuario(cedula,nombre,apellido,tipo_cuenta,limite_credito)
values ('17458','Fernanda','Suarez','Ahorro',4000);

insert into usuario(cedula,nombre,apellido,tipo_cuenta,limite_credito)
values ('18254','Manuel','Aguirre','Emprendedora',3000);

insert into usuario(cedula,nombre,apellido,tipo_cuenta,limite_credito)
values ('06023','Mía','Colucci','Ahorro',14000);

insert into usuario(cedula,nombre,apellido,tipo_cuenta,limite_credito)
values ('45545','Guido','Lacen','Gastos',2000);

insert into usuario(cedula,nombre,apellido,tipo_cuenta,limite_credito)
values ('45465','Maritza','Spirito','Ahorro',45000);

insert into usuario(cedula,nombre,apellido,tipo_cuenta,limite_credito)
values ('45626','Pablo','Bustamante','Gastos',12000);

insert into usuario(cedula,nombre,apellido,tipo_cuenta,limite_credito)
values ('45646','Felicitas','Mitre','Emprendedora',4500);

insert into usuario(cedula,nombre,apellido,tipo_cuenta,limite_credito)
values ('55645','Lujan','Linares','Crédto',4500);

insert into usuario(cedula,nombre,apellido,tipo_cuenta,limite_credito)
values ('17564','Matias','Sina','Ahorro',5566);

insert into usuario(cedula,nombre,apellido,tipo_cuenta,limite_credito)
values ('13251','Sol','Rivarola','Crédito',1400)


--Insertar registros tabla
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo,usuario)
values ('00001','17458','11/11/2022',200.50,'17458');

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo,usuario)
values ('00002','18254','02/08/2023',800.40,'18254');

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo,usuario)
values ('00003','06023','17/12/2022',450,'06023');

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo,usuario)
values ('00004','45545','20/01/2023',350.50,'45545');

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo,usuario)
values ('00005','45465','03/07/2023',200,'45465');

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo,usuario)
values ('00006','45626','07/04/2023',52,'45626');

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo,usuario)
values ('00007','45646','11/02/2023',200000,'45646');

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo,usuario)
values ('00008','55645','03/12/2023',25.000,'55645');

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo,usuario)
values ('00009','17564','31/12/2022',1000000000,'17564');