-- JOINS
/*
FORMAS DE REALIZAR CONSULTAS EN BASE
A UNA IGUALDAD ENTRE CAMPOS (PK =FK)
*/
use pcventas 
--2 tablas
SELECT * FROM Articulos a
inner join Categorias c
on a.Categ = c.cod_categoria
--3 tablas
SELECT * FROM Articulos a
inner join Categorias c
on a.Categ = c.cod_categoria
inner join Detalles d
on d.IdArticulo = a.IdArticulo
-- LEFT JOIN
--obtiene los registros relacionados y no relacionados
-- desde el lado izquierdo
SELECT * FROM Categorias c
left join  Articulos a
on a.Categ = c.cod_categoria
--3 tablas
SELECT * FROM Categorias c
left join  Articulos a
on a.Categ = c.cod_categoria
left join Detalles d
on d.idarticulo = a.IdArticulo
--rigth join
--obtiene los registros relacionados y no relacionados
-- desde el lado derecho
SELECT * FROM Articulos a
right join  Categorias c
on a.Categ = c.cod_categoria
--3 tablas
SELECT * FROM 
 Detalles d
 right join articulos a
 on d.IdArticulo = a.IdArticulo
right join  Categorias c
on a.Categ = c.cod_categoria
--outer join
/* devuelve registro relacionados y no relacionados
del lado a y lado b*/
SELECT * FROM Articulos a
full outer  join  Categorias c
on a.Categ = c.cod_categoria
-- left excluding  join
--devuelve registros no relacionados de lado 
-- izquierdo
-- 2 tablas
select * from Categorias c 
left join Articulos a
on a.Categ = c.cod_categoria
where a.NomArticulo is null
-- 3 tablas
select * from Categorias c 
left join Articulos a
on a.Categ = c.cod_categoria
left join Detalles d
on d.IdArticulo = a.IdArticulo
where a.IdArticulo is null
and d.IdFactura is null
-----------------------------------
/*
insert into Articulos  values('a102','pantalones',
20,20,null)
*/
select * from articulos a
left join Categorias c
on a.Categ = c.cod_categoria
where c.cod_categoria is null
--righ excluding join
/* devuelve registros no relacionados del lado
derecho
*/
select * from Categorias c
right join Articulos a
on c.cod_categoria = a.Categ
where c.cod_categoria is null
-- 3 tablas
select * from Detalles d    
right join Articulos a
on d.IdArticulo = a.IdArticulo
right join  categorias c
on c.cod_categoria = a.Categ
where d.IdFactura is null
and a.IdArticulo is null
-- outer excluding join
select * from Categorias c
full outer join Articulos a
on c.cod_categoria = a.categ
where c.cod_categoria is null
or a.IdArticulo is null


