INSERT INTO hospedes(email, nome, telefone)
VALUES ('fulano@email.com', 'Fulano', '99876-5432'),
('ciclano@email.com', 'Ciclano', '91234-5678'),
('carlos@email.com', 'Carlos', '99999-9999');

INSERT INTO enderecos(rua, numero, cidade, estado)
VALUES ('Rua Bingen', 120, 'Petropolis', 'RJ'),
('Rua Teresopolis', 80, 'Campos', 'RJ'),
('Rua Pão de Queijo', 60, 'Ouro-preto', 'MG');


INSERT INTO propriedades (
	nome_imovel,
	capacidade_hospedes,
	fk_endereco,
	preco_noite
) VALUES 
('Casa da Praia', 8, 1, 250),
('Apartamento Central', 4, 2, 150),
('Choupana/Cabana na Serra', 2, 3, 850),
('Studio moderno', 1, 1, 130);


