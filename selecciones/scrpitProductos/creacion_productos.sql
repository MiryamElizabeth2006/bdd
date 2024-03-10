-- creacion tabla 1

create table productos(
	codigo int not null,
	nombre varchar (50) not null,
	descripcion varchar (200),
	precio money not null,
	stock int not null,
	constraint productos_pk primary key (codigo)
)
insert into productos (codigo,nombre,descripcion,precio,stock)
values (0001,'pan','producto de panaderia',0.25,50)

insert into productos (codigo,nombre,descripcion,precio,stock)
values (0002,'yogurt','producto de lacteos',0.10,100)

insert into productos (codigo,nombre,descripcion,precio,stock)
values (0003,'Café','Negro Buendía',1.50,300)

insert into productos (codigo,nombre,descripcion,precio,stock)
values (0004,'Helados','pingüino grande pastel',3.50,150)

insert into productos (codigo,nombre,descripcion,precio,stock)
values (0005,'Limonada','Refrescante 2Lt',1.00,200)

insert into productos (codigo,nombre,precio,stock)
values (0006,'Jamón',0.90,150)

insert into productos (codigo,nombre,precio,stock)
values (0007,'Queso',2.00,120)

insert into productos (codigo,nombre,precio,stock)
values (0008,'Milanesa',3.50,170)

select * from productos


