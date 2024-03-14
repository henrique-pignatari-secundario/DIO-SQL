SELECT *
FROM destinos
WHERE id NOT IN (SELECT id_destino from reservas)

SELECT nome, (
	SELECT COUNT(*) 
		FROM reservas
		WHERE id_usuario = usuarios.id
	) AS total_reservas 
FROM usuarios