use pcventas
-- CONSULTAS DE TOTALES
-- (CONSULTA CON FUNCIONES DE AGREGADO)
/* Devolver un valor general de un
grupo de datos (campo))
*/
--select * from Categorias
--la cantidad de registro de la tabla categorias
select COUNT(nombre) as Cantidad from CATEGORIAs
--suma de stock de la tabla articulos
select SUM(stock) as Suma_stock from Articulos
--devolver el ultimo codigo de facturas
select MAX(idfactura) from Facturas
--devolver el primer codigo de facturas
select min(idfactura) from Facturas
--promedio de preventa de detalles 
select AVG(preventa) from Detalles
--
--GROUP BY
/* agrupar una serie de datos con el fin
de mostrase a lado de una consulta con
funcion de agregado
*/
select COUNT(*), c.Nombre,a.NomArticulo
from Categorias c,
Articulos a
where c.cod_categoria = a.Categ
group by c.nombre, a.NomArticulo
--LISTAR LA CANTIDAD DE FACTURAS POR CADA
--CLIENTE (CANTIDAD, NOMCLIENTE)
SELECT COUNT(C.Idcliente),C.NomCliente FROM
Clientes C,
Facturas F
WHERE C.Idcliente = F.IdCliente
GROUP BY C.NomCliente
