-- CONSULTA DE PARÁMETROS
-- CONSULTA DINÁMICA (trasact sql)
/*crear una consulta dinamica que permita
buscar de acuerdo al nomcliente de la
tabla cliente */
declare @nombre nvarchar(100) 
set @nombre = 'ister' --esta linea es para probar
SELECT * FROM Clientes
WHERE NomCliente like  '%'+ @nombre + '%'
go
-- para guardar esta consulta
-- podemos hacerlo en una funcion o en
-- un procedimiento almacenado
-- mediante un procedimiento almacenado
create procedure sp_clientes_buscar(
@nombre nvarchar(100) -- creando parametro
)
	as
	select * from Clientes where 
	NomCliente like '%' +@nombre +'%'
--
--incovar al sp
execute sp_clientes_buscar 'c'
 /*CREAR UNA CONSULTA DINAMICA PARA
LISTAR ARTICULOS CUYO STOCK ESTE ENTRE 20 Y 30
*/
--CREAR UN SP DE LA CONSULTA DINAMICA
DECLARE @STOCK_INF SMALLINT ,@STOCK_SUP SMALLINT	
SET @STOCK_INF = 20
SET	@STOCK_SUP = 30
SELECT * 
FROM Articulos
WHERE Stock >= @STOCK_INF AND Stock <= @STOCK_SUP ;
go
--sp
create procedure sp_articulos_stock(
@STOCK_INF SMALLINT ,
@STOCK_SUP SMALLINT
)
as
SELECT * 
FROM Articulos
WHERE Stock >= @STOCK_INF AND Stock <= @STOCK_SUP ;
--
execute sp_articulos_stock 20, 30

