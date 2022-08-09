SELECT 
ar.nome_artista AS artista,
al.nome_album AS album
from SpotifyClone.album AS al
INNER JOIN SpotifyClone.artista AS ar ON al.id_artista = ar.id_artista
WHERE ar.nome_artista = 'Walter Phoenix';