
-- INTERVALOS (DISTANCIA ENTRE UN PUNTO Y OTRO)
--LISTAR ARTICULOS CUYO STOCK ESTE ENTRE 5 Y 15
SELECT NomArticulo,STOCK FROM Articulos
WHERE Stock >= 5 AND Stock <=15
-- BETWEEN
SELECT NomArticulo,STOCK FROM Articulos
WHERE Stock BETWEEN 5 AND 15
--LISTAR FACTURAS DEL A�O 2000
SELECT * FROM Facturas
WHERE Fecha BETWEEN '01-01-2000'
AND '12-31-2000'
--SIN EL MANEJO DE INTERVALO
SELECT * FROM Facturas
WHERE YEAR(Fecha) ='2000' 
