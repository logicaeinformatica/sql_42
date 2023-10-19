-- estructura condicional simple - if
declare @var int = 11

if @var = 10
	begin
		print ' el valor es 10'
	end
else
	begin
		print 'el valor no es 10'
	end
--
use pcventas 
-- si la cantidad de clientes es mayor a 100
--que muestre un mensaje sino que indique registrar más clientes
declare @cant_clientes int 
set @cant_clientes =(select COUNT(*) from Clientes)

--select @cant_clientes
	if (@cant_clientes  > 100) 
		begin
			print 'La cantidad de clientes es mayor a 100'
		end
	else
		begin 
			print 'debe de registrar más clientes'
		end
----------
--validacion de login - inicio de sesión
declare @usuario nvarchar(50),@clave nvarchar(50)
set @usuario = 'juan'
set @clave = '1234'
--
	if @usuario ='juan' and @clave='1234' 
		begin
			print 'bienvenido'
		end
	else
		begin
			print 'usuario o clave incorrecta'
		end
		


