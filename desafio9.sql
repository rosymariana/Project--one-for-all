SELECT 
	count(h.id_cancao) AS quantidade_musicas_no_historico
    from SpotifyClone.historico AS h
INNER JOIN SpotifyClone.usuario AS u ON h.usuario_id = u.usuario_id
WHERE u.nome = 'Bill';