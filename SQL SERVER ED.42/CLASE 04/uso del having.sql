--LISTAR LA CANTIDAD DE FACTURAS POR CADA
--CLIENTE (CANTIDAD, NOMCLIENTE)
-- MOSTRAR A LOS  CUYA CANTIDAD
--DE FACTURAS  SEA DE 50 A 200
SELECT COUNT(C.Idcliente) as cantidad
,C.NomCliente FROM
Clientes C,
Facturas F
WHERE C.Idcliente = F.IdCliente
GROUP BY C.NomCliente
having COUNT(C.Idcliente) between
 50 and 200
 /* Listar el total de cantidad de articulos
 despachados(cantidad, nombre del articulo)
 */ -- DE LA CATEGORIA MULTIMEDIAS
 select sum(d.cantidad),a.NomArticulo
 from detalles d, Articulos a,Categorias c
 where d.IdArticulo = a.IdArticulo
 and a.Categ = c.cod_categoria
 group by a.NomArticulo,c.Nombre
 having c.nombre like 'Multimedias'
 

