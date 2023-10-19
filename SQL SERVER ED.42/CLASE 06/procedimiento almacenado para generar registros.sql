use institute

select * from student
select * from registry
select * from registry_detail
go

create procedure sp_registry_detail_insert(
@id_student int,
@id_registry int
)
as
	begin
insert into registry_detail(id_registry,id_student,create_at,update_at)
values
(@id_registry,@id_student,GETDATE(),GETDATE())
--
declare @codigo int =@@identity 
--calificacion
insert into qualification(id_registry_detail,create_at,update_at)
values (@codigo,GETDATE(),GETDATE())
--asistencia
declare @fecha_inicio date
set @fecha_inicio=(select create_at from registry where id_registry =@id_registry)
--
declare @fecha_fin date = dateadd(week,12,@fecha_inicio)
--
	while @fecha_inicio < @fecha_fin
		begin
			insert into assistance(id_registry_detail,[date],[state],update_at)
		values(@codigo,@fecha_inicio,'F',GETDATE())
		--
		set @fecha_inicio = DATEADD(week,1,@fecha_inicio)
		end
	end

--invocar al procedimiento almacenado
execute sp_registry_detail_insert 1,1
--eliminar el procedimiento almacenado
drop proc sp_registry_detail_insert

--
-- delete from qualification where id_qualification 
select * from qualification
select * from assistance

