create view canciones_mas_escuchadas as
select nombreCancion, nombreAlbum, nombreArtista, cantReproducciones
from Cancion, Album, Artista, escuchadoRecientemente
where Cancion.idAlbum=Album.idAlbum and Cancion.idArtista = Artista.idArtista and Album.idAlbum= escuchadoRecientemente.idAlbum
order by cantReproducciones desc;