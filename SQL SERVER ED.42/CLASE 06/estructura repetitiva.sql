--estructura repetitiva
use pcventas
-- for - while
-- en sql existe el while
--
declare @variable int = 5
while  @variable < 10

begin
	print 'hola';
	 set @variable = @variable  +1
end
---
select GETDATE()
declare @fecha_inicio date = getdate()
declare @fecha_fin date = dateadd(week,12,@fecha_inicio)
--select @fecha_fin
--
while @fecha_inicio <  @fecha_fin
	begin
	print @fecha_inicio
	set  @fecha_inicio= dateadd(week,1,@fecha_inicio)
	end

	--
	declare @numero int = 1
	while @numero <= 5 
		begin 
			print @numero
			set @numero = @numero +1
		end
