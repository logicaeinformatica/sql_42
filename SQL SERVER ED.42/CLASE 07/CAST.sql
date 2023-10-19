--FUNCIONES DE CONVERSION

 SELECT CAST((SELECT SUBSTRING(IDCLIENTE,2,20) FROM Clientes WHERE Idcliente='C0184') AS int)
  SELECT CONVERT(INT,(SELECT SUBSTRING(IDCLIENTE,2,20) FROM Clientes WHERE Idcliente='C0184'))

  --
  DECLARE @FECHA DATE = GETDATE()
  DECLARE @DIA INT = (SUBSTRING(CAST(@FECHA AS varchar(20)),9,2))
  SELECT  @DIA +1
  -------------
  -- ISS NULL

SELECT ISNULL(A.IdArticulo,'') AS COD_ARTICULO,* FROM Categorias c
left join  Articulos a

on c.Categoria = a.CATEG

