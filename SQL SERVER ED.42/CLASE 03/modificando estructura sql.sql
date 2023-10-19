--agregar  una columna con identity
ALTER TABLE categorias
ADD  cod_categoria  tinyint identity
--eliminar restriccion de fk(articulos)
ALTER TABLE articulos
DROP CONSTRAINT [FK__Articulos__Categ__267ABA7A]
--eliminar llave primarya
ALTER TABLE categorias
DROP CONSTRAINT [PK__Categori__08015F8A17E4F6C2]
-- establecer la lalve primaria en categorias
alter table categorias
add constraint pk_categorias 
primary key(cod_categoria)

--crear relacion con articulos
alter table articulos
add constraint fk_categ 
foreign key(categ) 
references categorias(cod_categoria)

/*
ALTER TABLE categorias
DROP COLUMN categoria
*/


select * from Categorias
select * from Articulos
--modificar el codigo de referencia para establecer
-- luego la relacion
update Articulos set Categ =5 
where IdArticulo = 'a101'
