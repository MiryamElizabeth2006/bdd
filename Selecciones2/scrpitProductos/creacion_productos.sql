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

insert into productos(codigo,nombre,descripcion,precio,stock) 
values (6,'Jabón','Lava todo',3.50,10);
insert into productos(codigo,nombre,descripcion,precio,stock) 
values (7,'Shampoo','Savital',2.50,20);
insert into productos(codigo,nombre,descripcion,precio,stock) 
values (8,'Deja','Deja',1.50,30);
insert into productos(codigo,nombre,descripcion,precio,stock) 
values (9,'Pasta dental','Fortident',3.0,40);
insert into productos(codigo,nombre,descripcion,precio,stock) 
values (10,'Cera','Cera de piso',2.50,50);
insert into productos(codigo,nombre,precio,stock) 
values (11,'Pan',1.50,50);
insert into productos(codigo,nombre,precio,stock) 
values (12,'Queso',5.50,60);
insert into productos(codigo,nombre,precio,stock)
values (13,'Leche',2.50,70);
insert into productos(codigo,nombre,precio,stock)
values (14,'Jamon',1.00,120);
insert into productos(codigo,nombre,precio,stock)
values (15,'Coca Cola',3.50,300);


insert into productos (codigo,nombre,precio,stock)
values (0006,'Jamón',0.90,150)

insert into productos (codigo,nombre,precio,stock)
values (0007,'Queso',2.00,120)

insert into productos (codigo,nombre,precio,stock)
values (0008,'Milanesa',3.50,170)



select * from productos

-- Productos que empeizan con Q
select * from productos
where nombre like 'Q%'

--Lo que tenga deascripción nula
select *from productos
where descripcion is null

--Precios entre dos y tres
select * from productos
where precio between '2' and '3'

--Actualizar stock donde el valor de la descripcion se encuentre en null
update productos set stock = 0
where descripcion is null

--Eliminar los productos con descripcion null
delete from productos
where descripcion is null

--Seleccion de los productos con stock igual a 10 y precio menor a 10
select * from productos
where stock = 10 and precio < money(10)

--seleccionar los nombres y stocks de todos los productos que tenga una m en su nombre o un espacio en blanco en la descripcion
select nombre,stock from productos
where nombre like '%m%' or  descripcion like '% %'

--seleccionar los nombres y stocks de todos los productos que tenga una m en su nombre o un espacio en blanco en la descripcion mostrando la descripcion
select nombre,stock,descripcion from productos
where nombre like '%m%' or descripcion like '% %'

--seleccionar el nombre de todos los productos que tenga la descripcion en null o el stock en 0
select nombre from productos
where descripcion is null or stock = 0

--seleccionar el nombre de todos los productos que tenga la descripcion en null o el stock en 0 que se vea stock y descripcion
select nombre,stock,descripcion from productos
where descripcion is null or stock = 0