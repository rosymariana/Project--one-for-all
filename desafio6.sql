SELECT 
CAST(MIN(valor_plano) AS DECIMAL(5,2)) AS faturamento_minimo,
CAST(MAX(valor_plano) AS DECIMAL(5,2)) AS faturamento_maximo,
CAST(AVG(p.valor_plano) AS DECIMAL(5,2)) AS faturamento_medio,
CAST(SUM(p.valor_plano) AS DECIMAL(5,2)) AS faturamento_total
from SpotifyClone.plano AS p
INNER JOIN SpotifyClone.usuario AS u ON u.id_plano = p.id_plano;