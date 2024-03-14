SELECT COUNT (*) as total_usuarios
FROM usuarios u
INNER JOIN reservas r ON r.id_usuario = u.id;

SELECT MAX(DATE_PART('year', AGE(current_timestamp, data_nascimento)))
FROM usuarios;

SELECT id_destino, COUNT(*) FROM reservas r
GROUP BY r.id_destino;
	
SELECT d.nome, s.total_reservas
FROM destinos d
INNER JOIN (
	SELECT id_destino, COUNT(*) as total_reservas
	FROM reservas r
	GROUP BY r.id_destino) s
ON s.id_destino = d.id;

EXPLAIN SELECT d.nome, s.total_reservas
FROM destinos d
INNER JOIN (
	SELECT id_destino, COUNT(*) as total_reservas
	FROM reservas r
	GROUP BY r.id_destino) s
ON s.id_destino = d.id;