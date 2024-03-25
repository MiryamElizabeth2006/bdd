-- creacion tabla 1

create table productos(
	codigo int not null,
	nombre varchar (50) not null,
	descripcion varchar (200),
	precio money not null,
	stock int not null,
	constraint productos_pk primary key (codigo)
)

--Reto 23
drop table productos
drop table ventas
select * from productos
select * from ventas

create table ventas(
id_venta int not null,
	codigo_producto int not null,
	fecha_venta date not null,
	cantidad int,
	constraint ventas_pk primary key(id_venta)
	)
	
	alter table productos
	add column ventas int not null
	
	alter table productos
	add constraint productos_ventas_fk
	foreign key (ventas)
	references ventas(id_venta)
	
	--Añadir insert a table ventas
	insert into ventas(id_venta,codigo_producto,fecha_venta,cantidad)
	values(001,0001,'22/06/2023',10);
	
	insert into ventas(id_venta,codigo_producto,fecha_venta,cantidad)
	values(002,0002,'12/07/2023',20);
	
	insert into ventas(id_venta,codigo_producto,fecha_venta,cantidad)
	values(003,0003,'04/07/2023',50);
	
	insert into ventas(id_venta,codigo_producto,fecha_venta,cantidad)
	values(004,0004,'08/10/2022',30);
	
	insert into ventas(id_venta,codigo_producto,fecha_venta,cantidad)
	values(005,0005,'12/12/2023',25);
	
	insert into ventas(id_venta,codigo_producto,fecha_venta,cantidad)
	values(006,0006,'30/03/2023',5);
	
	insert into ventas(id_venta,codigo_producto,fecha_venta,cantidad)
	values(007,0007,'22/11/2023',5);
	
	insert into ventas(id_venta,codigo_producto,fecha_venta,cantidad)
	values(008,0008,'12/01/2024',10);
	
	insert into ventas(id_venta,codigo_producto,fecha_venta,cantidad)
	values(009,0009,'15/02/2024',12);
	
	insert into ventas(id_venta,codigo_producto,fecha_venta,cantidad)
	values(010,0010,'22/03/2024',5);
	
	
	--Insertar datos la la tabla productos
insert into productos (codigo,nombre,descripcion,precio,stock,ventas)
values (1,'Mortadela','producto de sanduche',0.25,50,10);

insert into productos (codigo,nombre,descripcion,precio,stock,ventas)
values (2,'Mus_Durazno','producto de pasteleria',0.10,100,10);

insert into productos (codigo,nombre,descripcion,precio,stock,ventas)
values (3,'Café','Negro Buendía',1.50,300,10);

insert into productos (codigo,nombre,descripcion,precio,stock,ventas)
values (4,'Helados','pingüino grande pastel',3.50,150,10);

insert into productos (codigo,nombre,descripcion,precio,stock,ventas)
values (5,'Limonada','Refrescante 2Lt',1.00,200,10);

insert into productos (codigo,nombre,precio,stock,ventas)
values (6,'Jamón',0.90,150,5);

insert into productos (codigo,nombre,precio,stock,ventas)
values (7,'Queso',2.00,120,5);

insert into productos (codigo,nombre,precio,stock,ventas)
values (8,'Milanesa',3.50,170,10);

insert into productos (codigo,nombre,descripcion,precio,stock,ventas)
values (9,'Helados','pingüino grande pastel',3.50,150,10);

insert into productos (codigo,nombre,descripcion,precio,stock,ventas)
values (10,'Limonada','Refrescante 2Lt',1.00,200,5);

--Consulta
select pr.nombre, pr.stock,ve.cantidad from
productos pr,ventas ve
where
pr.codigo = ve.codigo_producto
and (pr.nombre like 'M%' or pr.nombre like '%m' or pr.nombre like '%m%')

--Subconsulta
select pr.nombre,pr.stock from
productos pr,ventas ve
where 
pr.codigo = ve.codigo_producto
and ve.cantidad = 5



	