

CREATE TABLE hospedes(
	id SERIAL PRIMARY KEY,
	nome varchar(100) NOT NULL,
	email varchar(80) NOT NULL,
	telefone varchar(17) NOT NULL	
);

CREATE TABLE enderecos(
	id serial PRIMARY KEY,
	rua varchar(50),
	numero int,
	bairro varchar(30),
	cidade varchar(50) NOT NULL,
	estado char(2) NOT NULL
);

CREATE TABLE propriedades(
	id serial PRIMARY KEY,
	nome_imovel varchar(70) NOT NULL,
	capacidade_hospedes int DEFAULT 1,
	fk_endereco int REFERENCES enderecos(id)
);

ALTER TABLE propriedades
ADD COLUMN preco_noite numeric(10, 2)
NOT NULL CHECK (preco_noite > 0);


CREATE TABLE reservas(
	id_reserva serial PRIMARY KEY,
	hospede int NOT NULL REFERENCES hospedes(id),
	propriedade int NOT NULL REFERENCES propriedades(id),
	date_inicio date NOT null,
	data_fim date NOT null,
	valor_total numeric(8, 2) NOT NULL
);


















