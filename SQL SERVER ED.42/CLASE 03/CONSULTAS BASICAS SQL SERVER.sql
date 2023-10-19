USE PCVENTAS
--
--CONSULTAR TABLAS
-- 1 FORMA
SELECT * FROM Categorias
-- 2
SELECT Categoria, NOMBRE FROM Categorias
-- 3
SELECT C.Categoria, C.NOMBRE FROM Categorias C
-- CONSULTA DE 2 TABLAS O MÁS - REGISTROS RELACIONADOS
--1 
SELECT * FROM Categorias, Articulos
WHERE Categorias.Categoria = Articulos.Categ
--2
SELECT * FROM Categorias C, Articulos A
WHERE C.Categoria = A.Categ  
-- CONSULTA DE 3 TABLAS O MÁS
SELECT * FROM Categorias C, Articulos A, Detalles D
WHERE C.Categoria = A.Categ AND  A.IdArticulo =D.IdArticulo
--REALIZAR UNA CONSULTA ENTRE FACTURAS,CLIENTES,DETALLES

