SELECT 
	ar.nome_artista AS artista,
	al.nome_album AS album,
    COUNT(s.id_artista) AS seguidores
from SpotifyClone.album AS al
INNER JOIN SpotifyClone.artista AS ar ON al.id_artista = ar.id_artista
INNER JOIN SpotifyClone.seguindo AS s ON al.id_artista = s.id_artista 
GROUP BY al.nome_album, ar.nome_artista
ORDER BY seguidores DESC, artista, album;