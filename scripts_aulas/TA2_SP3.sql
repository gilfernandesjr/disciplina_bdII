SELECT * FROM jogo;
SELECT * FROM localizacao;



-- Desenvolver uma função de agregação que retorne a quantidade
-- de registros na tabela jogo.

SELECT COUNT(*) FROM jogo;

-- Desenvolver uma função de agregação que retorne o valor
-- médio dos jogos de guerra

SELECT AVG(valor) AS "Media Guerra" FROM jogo
INNER JOIN localizacao
ON localizacao.Id = jogo.localizacao_id
WHERE secao = 'Guerra';

-- Desenvolver uma função de agregação que retorne o
-- valor total em estoque na loja.

SELECT sum(valor) AS "Total Geral" FROM jogo;


-- Média dos jogos por categoria
SELECT secao, AVG(valor) AS "Media" FROM jogo
INNER JOIN localizacao
ON localizacao.Id = jogo.localizacao_id
GROUP BY secao


-- Desenvolver uma função de agregação que retorne o
-- valor do jogo de maior preço (valor).

SELECT MAX(valor) AS "Maior Valor" FROM jogo;

-- Desenvolver uma função de agregação que retorne o
-- valor do jogo de maior preço (valor).

SELECT MIN(valor) AS "Maior Valor" FROM jogo;
