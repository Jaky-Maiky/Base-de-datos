create view reporte_ingreso_usuarios_view as 
select fechaRegistro, nombreUsuario, cantRegistros
from Registro, Usuario
where Registro.idRegistro = Usuario.idUsuario
order by cantRegistros desc;