USE guiatur

select * from INFORMATION_SCHEMA.TABLES

select * from INFORMATION_SCHEMA.COLUMNS 

SELECT * FROM pais;
SELECT * FROM estado;
SELECT * FROM cidade;
SELECT * FROM ponto_tur;


-- alterar para atrativo o primeiro ponto turístico
UPDATE ponto_tur SET tipo = 'Atrativo' 
WHERE id = 1;
SELECT * FROM ponto_tur;

-- alterar o segundo país (Índia) para ter o cód. 'IND'
SELECT * FROM pais;
UPDATE pais SET codigo = 'IND' 
WHERE id = 2;


-- deletar a primeira cidade
SELECT * FROM cidade;
DELETE FROM cidade WHERE id=1;





























-- alterar para atrativo o primeiro ponto turístico
UPDATE ponto_tur SET tipo = 'Atrativo' WHERE id = 1;

SELECT * FROM ponto_tur;

-- alterar o segundo país (Índia) para ter o cód. 'IND'
UPDATE pais SET codigo = 'IND' 
WHERE id = 2;

SELECT * FROM pais;

-- deletar a primeira cidade
SELECT * FROM cidade;

DELETE FROM cidade WHERE id=1;
