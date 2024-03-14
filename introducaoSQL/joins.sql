SELECT u.email, d.nome FROM usuarios u
INNER JOIN reservas r ON u.id = r.id_usuario
INNER JOIN destinos d ON r.id_destino = d.id

SELECT * FROM destinos d
LEFT JOIN reservas r ON d.id = r.id_destino
LEFT JOIN usuarios u ON u.id = r.id_usuario

SELECT * FROM destinos d
RIGHT JOIN reservas r ON d.id = r.id_destino
RIGHT JOIN usuarios u ON u.id = r.id_usuario