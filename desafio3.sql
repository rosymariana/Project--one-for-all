SELECT 
	u.nome AS usuario, 
	count(h.usuario_id) AS qtde_musicas_ouvidas,
	CAST(SUM(c.duracao_segundos)/60 AS DECIMAL(5,2)) AS total_minutos
FROM SpotifyClone.usuario AS u
INNER JOIN SpotifyClone.historico AS h ON h.usuario_id = u.usuario_id
INNER JOIN SpotifyClone.cancao AS c ON h.id_cancao = c.id_cancao
GROUP BY h.usuario_id
ORDER BY u.nome;