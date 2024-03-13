INSERT INTO usuarios (id, nome, email, data_nascimento, endereco) VALUES (1, 'Henrique', 'teste@email.com', '1890-10-05', 'Rua dos bobos, numero zero');

INSERT INTO destinos (id, nome, descricao) VALUES (1, 'KONOHA', 'Um lugar cheio de ninjas');

INSERT INTO reservas (id, id_usuario, id_destino, data) VALUES (1, 1, 1, '2023-11-11');

CREATE TABLE usuarios_temp (
	id INT,
	nome VARCHAR(255) NOT NULL,
	email VARCHAR(100) NOT NULL,
	endereco VARCHAR(50) NOT NULL,
	data_nascimento DATE NOT NULL 
);

INSERT INTO usuarios_temp (id, nome, email, endereco, data_nascimento)
SELECT id, nome, email, endereco, data_nascimento
FROM usuarios

DROP TABLE usuarios_temp