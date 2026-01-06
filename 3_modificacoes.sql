UPDATE propriedades
SET preco_noite = preco_noite * 1.1
WHERE lower(nome_imovel) = 'studio moderno';

DELETE FROM hospedes
WHERE id = 2;