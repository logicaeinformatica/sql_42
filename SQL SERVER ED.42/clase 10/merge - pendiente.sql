use pcventas
delete from categorias where Categoria =47
select * from Categorias
select * from Categorias_2
GO
--ELIMINA CUANDO REALICE UN MATCH ENTRE TABLAS
merge categorias_2 as tgt
	using(select categoria,nombre from categorias) as src
on (tgt.categoria = src.categoria)
	
	WHEN  MATCHED  THEN
	DELETE;
	-----------------------------------------------------
MERGE Categorias_2 AS tgt 
USING (SELECT categoria, nombre FROM Categorias) AS SOURCE
ON (tgt.categoria = SOURCE.categoria)
WHEN NOT MATCHED BY SOURCE 
THEN DELETE ;



	SELECT * FROM Categorias
	SELECT * FROM Categorias_2
