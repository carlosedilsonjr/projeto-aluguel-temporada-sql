CREATE USER suporte_estagiario WITH password 'senha123';

GRANT SELECT ON enderecos, hospedes, propriedades, reservas
TO suporte_estagiario;

GRANT UPDATE ON reservas TO suporte_estagiario;

-- Comando Válido
SELECT * FROM hospedes;

-- Comando não permitido
DELETE FROM hospedes;
DELETE FROM reservas;
