create table clientes (
cedula char(10) not null,
	nombre varchar(20) not null,
	apellido varchar (20) not null,
	constraint cientes_pk primary key(cedula)
)

drop table clientes
drop table compras

select * from clientes
select * from compras

--crear tabla compras
create table compras(
id_compras int not null,
	cedula char(10) not null,
	fecha_compra date not null,
	monto decimal(10,2) not null,
	constraint compras_pk primary key(id_compras)
)

alter table clientes
add column compras int not null

--tabla realacionada
alter table clientes 
add constraint clientes_compras_fk
foreign key (compras)
references compras(id_compras)

--agregar datos a la tabla compras reaciones
insert into compras(id_compras,cedula,fecha_compra,monto)
values(0,'1452789612','25/12/2022',45.60);

insert into compras(id_compras,cedula,fecha_compra,monto)
values(9,'1756745821','25/11/2022',20.30);

insert into compras(id_compras,cedula,fecha_compra,monto)
values(1,'1875429645','25/12/2022',45.60);

insert into compras(id_compras,cedula,fecha_compra,monto)
values(2,'1323413237','12/04/2023',52.16);

insert into compras(id_compras,cedula,fecha_compra,monto)
values(3,'0603578423','14/03/2024',50.00);

insert into compras(id_compras,cedula,fecha_compra,monto)
values(4,'5465623545','6/07/2023',15.20);

insert into compras(id_compras,cedula,fecha_compra,monto)
values(5,'0689412131','25/12/2024',25.63);

insert into compras(id_compras,cedula,fecha_compra,monto)
values(6,'4578963211','14/02/2024',20.30);

insert into compras(id_compras,cedula,fecha_compra,monto)
values(7,'4875961232','13/12/2022',45.80);

insert into compras(id_compras,cedula,fecha_compra,monto)
values(8,'2346546313','10/09/2024',60.23);


--INsertar datos a tabla clientes
insert into clientes(cedula,nombre,apellido,compras)
values('1452789612','Mónica','Linares',0);

insert into clientes(cedula,nombre,apellido,compras)
values('1756745821','Juan','López',9);

insert into clientes(cedula,nombre,apellido,compras)
values('1875429645','Salvador','Galvez',1);

insert into clientes(cedula,nombre,apellido,compras)
values('1323413237','Mario','Alcazar',2);

insert into clientes(cedula,nombre,apellido,compras)
values('0603578423','Arquimides','Mora',3);

insert into clientes(cedula,nombre,apellido,compras)
values('5465623545','Manuel','Alcantara',4);

insert into clientes(cedula,nombre,apellido,compras)
values('0689412131','Mónica','Fernandez',5);

insert into clientes(cedula,nombre,apellido,compras)
values('4578963211','Benito','Elizondo',6);

insert into clientes(cedula,nombre,apellido,compras)
values('4875961232','Leonel','Messi',7);

insert into clientes(cedula,nombre,apellido,compras)
values('2346546313','María','Tulian',8);

--Consulta
select cl.nombre, cl.apellido from
clientes cl, compras co
where 
cl.cedula = co.cedula
and cl.cedula like '%7%'

--Subconsulta
select cl.cedula,cl.nombre,cl.apellido from
clientes cl, compras co
where
cl.cedula = co.cedula
and (cl.cedula like '06%31' or cl.cedula like '14%12')

