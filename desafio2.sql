SELECT 
(SELECT count(cancao) from SpotifyClone.cancao) AS cancoes, 
(SELECT count(nome_artista) from SpotifyClone.artista) AS artistas,
(SELECT count(nome_album) from SpotifyClone.album) AS albuns;