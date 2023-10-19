-- SQL SERVER = IIF 
/*Funcion permite validar datos.
La validación de datos consiste en
la comparación de dos datos y
retornar true si dicha comparación
es verdad y false si es es falsa.
--operadores
	-- <> diferente
	-- = igual
	-- > mayor
	-- < menor
*/
--otorgar un descuento del 20% a los
--articulos cuyo stock >50
select *,iIF(stock > 50,prearticulo * 0.20,0)
from  articulos
--otorgar un descuento del 50%
-- a aquellos productos vendidos que sean
-- mayores a 40        -- 4 puntos
--otorgar un descuento del 50%
-- a aquellos productos vendidos que sean
-- mayores a 20 y menores a 40        -- 6 puntos
select * from detalles


SELECT *, IIF((Cantidad >20 AND Cantidad <40) ,
PreVenta * 0.5, 0)
FROM Detalles

---------------





-- POWER BI = IF
-- EXCEL = SI
