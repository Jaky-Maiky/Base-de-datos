
  


/*create view reporte_usuarios as 
select fechaingreso, Nombre, Cantidad_registro
from Registro, Usuario
where Registro.Id = Usuario.Id
order by Cantidad_registro DESC;*/

/*INSERT INTO Registro 
VALUES (005,'2020-04-08', 5);*/


/*SELECT * from reporte_usuarios;*/


   
   
/*create view canciones_escuchadas as
select Nombre_cancion, Titulo, Nombre_Artista, Cantidad_Reproducidas
from Canciones, Album, Artista, Plays_List
where Canciones.Id=Album.Id and Canciones.Id = Artista.Id and Album.Id= Plays_List.Id
order by Cantidad_Reproducidas DESC;*/

/*SELECT * from canciones_escuchadas;*/


/*create view Discografia as
select Nombre_Disco, Tipo_Genero, Nombre_Artista
from Disco, Genero, Artista
where Disco.Id=Genero.Id and Disco.Id = Artista.Id /*and Genero.Id= Plays_List.Id
order by Nombre_Artista DESC;*/

SELECT * from Discografia;

