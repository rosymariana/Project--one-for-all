SELECT 
	u.nome AS usuario,
    IF(YEAR(MAX(DATE(h.data_reproducao))) = 2021, 'Usuário ativo', 'Usuário inativo')
	AS condicao_usuario
FROM SpotifyClone.usuario AS u
INNER JOIN SpotifyClone.historico AS h ON h.usuario_id = u.usuario_id
GROUP BY u.usuario_id
ORDER BY u.nome;