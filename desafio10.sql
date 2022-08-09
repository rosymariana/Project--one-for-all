SELECT 
	c.cancao AS nome,
	count(h.id_cancao) AS reproducoes
from SpotifyClone.cancao AS c
INNER JOIN SpotifyClone.historico AS h ON h.id_cancao= c.id_cancao
INNER JOIN SpotifyClone.usuario AS u ON u.usuario_id = h.usuario_id
WHERE u.id_plano= 1 OR u.id_plano= 4
group by c.id_cancao
ORDER BY reproducoes DESC, c.cancao asc;