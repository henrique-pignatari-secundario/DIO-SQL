CREATE TABLE usuarios (
	id INT,
	nome VARCHAR(255) NOT NULL,
	email VARCHAR(100) NOT NULL,
	endereco VARCHAR(50) NOT NULL,
	data_nascimento DATE NOT NULL 
);

COMMENT ON COLUMN usuarios.nome IS'NOME DO USUARIO';
COMMENT ON COLUMN usuarios.email IS 'EMAIL DO USARIO';
COMMENT ON COLUMN usuarios.endereco IS 'ENDERECO DO USUARIO';
COMMENT ON COLUMN usuarios.data_nascimento IS 'DATA DE NASCIMENTO DO USUARIO';

CREATE TABLE destinos (
	id INT,
	nome VARCHAR(255) NOT NULL UNIQUE,
	descricao VARCHAR(255) NOT NULL
);

COMMENT ON COLUMN destinos.nome IS 'NOME DO DESTINO';
COMMENT ON COLUMN destinos.descricao IS 'DESCRIÇÃO DO DESTINO';


CREATE TABLE reservas(
	id INT,
	id_usuario INT,
	id_destino INT,
	data DATE,
	status VARCHAR(255) DEFAULT 'pendente'
);

COMMENT ON COLUMN reservas.id IS 'IDENTIFICADOR ÚNICO DA RESERVA';
COMMENT ON COLUMN reservas.id_usuario IS 'REFEEREÊNCIA AO ID DO USUARIO QUE FEZ A RESERVA';
COMMENT ON COLUMN reservas.id_destino IS 'REFEEREÊNCIA AO ID DO DESTINO DA RESERVA';
COMMENT ON COLUMN reservas.data IS 'DATA DA RESERVA';
COMMENT ON COLUMN reservas.status IS 'Status da reserva (confirmada, pendente, cancelada, etc.)';