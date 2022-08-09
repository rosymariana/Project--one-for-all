SELECT 
	c.cancao AS cancao,
    COUNT(h.id_cancao) AS reproducoes
FROM SpotifyClone.cancao AS c
INNER JOIN SpotifyClone.historico AS h ON h.id_cancao = c.id_cancao
GROUP BY c.id_cancao
ORDER BY COUNT(id_cancao) desc, c.cancao
LIMIT 2;