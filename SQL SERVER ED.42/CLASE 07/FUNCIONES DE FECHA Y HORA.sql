--FUNCIONES DE FECHA Y HORA
SELECT  *,
YEAR(GETDATE())- YEAR(FECHA) 
FROM Facturas
-- OTENER NUESTRA EDAD
DECLARE @F_NAC DATE = '1992-11-16'
SELECT  datediff(DAY,@F_NAC,GETDATE())/365,
YEAR(GETDATE())- YEAR(@F_NAC) 

select DATENAME(ss,getdate());

-- SET DATEFORMAT
 set dateformat DMY;

 set dateformat YMD;
 set dateformat DYM;
 set dateformat MDY;
 --
 -- CHOOSE
select CHOOSE(MONTH(GETDATE()),
'ENERO','FEBRERO','MARZO','ABRIL',
'MAYO','JUNIO','JULIO','AGOSTO','SEPTIEMBRE',
'OCTUBRE','NOVIEMBRE','DICIEMBRE');



