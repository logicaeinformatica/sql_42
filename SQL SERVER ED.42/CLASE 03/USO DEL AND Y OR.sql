--USO DEL AND Y EL OR
--AND

--LISTAR ARTICULOS CUYO CATEG SEA
-- 3 Y 2
---------
--LISTAR ARTICULOS CUYO CATEG SEA
-- 3 O 2
SELECT * FROM Articulos
WHERE Categ = 3 OR Categ= 2
-------------------------
--LISTAR ARTICULOS CUYO CATEG SEA
-- 3 O 2 Y CUYO STOCK > 50
SELECT * FROM Articulos
WHERE Stock > 50 AND
(Categ = 3 OR Categ = 2 )
ORDER BY Stock DESC

SELECT * FROM Articulos
ORDER BY Stock DESC



