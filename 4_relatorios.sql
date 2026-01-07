-- nome do hospede
-- nome propriedade
-- data inicio da reserva
SELECT nome ,nome_imovel, date_inicio FROM propriedades
JOIN reservas ON propriedade = id 
JOIN hospedes ON hospedes.id = hospede;

SELECT * FROM reservas
WHERE valor_total >= 500;

-- nome propriedade
-- valor total de todoas as reservas da propriedade
CREATE VIEW vw_faturamento_por_imovel AS
SELECT nome_imovel, count(nome_imovel),sum(valor_total),
	concat('Valor total é', ' : ', sum(valor_total)),
	avg(valor_total),
	lower('TesTe'),
	upper('TesTe')
FROM reservas
JOIN propriedades ON propriedade = id
GROUP BY nome_imovel
;


SELECT * FROM vw_faturamento_por_imovel;












