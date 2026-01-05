
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
	fk_endereco int NOT NULL REFERENCES enderecos(id)
);


