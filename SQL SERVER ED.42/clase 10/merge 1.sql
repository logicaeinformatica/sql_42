use pcventas
--MERGE EN SQL SERVER (UPDATE + INSERT)(UPSERT)

--PARA APLICAR UN MERGE ES NECESARIO TENER
--TABLAS SIMILARES (COLUMNAS)
CREATE TABLE [dbo].[Categorias_2](
	[Categoria] [tinyint] NOT NULL,
	[Nombre] [nvarchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[Categoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

select * from categorias
select * from categorias_2
--LLENAMOS ED REGISTRO LA TABLA CATEGORIAS_2
insert categorias_2(Categoria,Nombre) values(1,'Multimedias')
insert categorias_2(Categoria,Nombre) values(47,'Zapatos')
--
merge Categorias as tgt 
using
	(select categoria, nombre from categorias_2) as src
	on (
		tgt.categoria = src.categoria
	)
	when   matched then
	update set 
		tgt.nombre = src.nombre
	when  not matched then
	insert(categoria,nombre)
	values(src.categoria,src.nombre);	
--------------------------------------------------------------------------
	--sincronizar los registros de la tabla clientes y clientes_2
	CREATE TABLE [dbo].[Clientes_2](
	[Idcliente] [nvarchar](5) NOT NULL,
	[NomCliente] [nvarchar](100) NULL,
	[DirCliente] [nvarchar](50) NULL,
	[TelCliente] [nvarchar](10) NULL,
	[Email] [nvarchar](20) NULL,
	pais nvarchar(50) not null
PRIMARY KEY CLUSTERED 
(
	[Idcliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
-----------------------------------------------------------------------
insert into Clientes_2(idcliente,NomCliente,DirCliente,TelCliente,Email,pais)
values('C0001','MARCOS VALER','','','mvaler@buenaventura.','perú')
insert into Clientes_2(idcliente,NomCliente,DirCliente,TelCliente,Email,pais)
values('C0257','juan','','','juan01@buenaventura.','Mexico')

select * from clientes
select * from clientes_2
--------------------------------------------------------------------------
MERGE CLIENTES_2 AS TGT
	USING(SELECT idcliente,NomCliente,DirCliente,TelCliente,Email FROM CLIENTES) AS SRC
	ON (TGT.IDCLIENTE = SRC.IDCLIENTE)
WHEN MATCHED THEN
	UPDATE  SET 
		TGT.NOMCLIENTE  =  SRC.NOMCLIENTE,
		TGT.DIRCLIENTE = SRC.DIRCLIENTE,
		TGT.TELCLIENTE =SRC.TELCLIENTE,
		TGT.EMAIL = SRC.EMAIL,
		TGT.PAIS = ''
WHEN NOT MATCHED THEN
	INSERT (idcliente,NomCliente,DirCliente,TelCliente,Email,PAIS)
	VALUES (SRC.idcliente,SRC.NomCliente,SRC.DirCliente,SRC.TelCliente,SRC.Email,'');
	
	SELECT * FROM CLIENTES
	SELECT * FROM Clientes_2








select * from clientes



