Use gt;

insert into linguagemPais values 
(1,'Português','Sim'),
(3,'Mandarim','Sim'),
(3,'Cantonés','Não')

insert into cidade values ('teste',1111)
SELECT * FROM INFORMATION_SCHEMA.TABLES

SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'pais'

update ponto_tur set tipo='Atrativo' where id=1
update pais set codigo='IND' where id=2
delete from cidade where id=1

select * from pais
select * from cidade
select * from estado
select * from ponto_tur
SELECT * FROM linguagemPais

-- Consultar quais continentes constam na tabela país
SELECT DISTINCT continente from pais

-- Consultar os pontos turísticos classificados como atrativos
SELECT nome, tipo FROM ponto_tur WHERE tipo = 'atrativo'
SELECT nome, tipo FROM ponto_tur WHERE tipo LIKE 'atrativo'

-- Consultar nomes de países que começam com B
SELECT * FROM pais WHERE nome LIKE 'B%'

-- Consultar nomes de países que terminam com a
SELECT * FROM pais WHERE nome LIKE '%a'

-- Consultar nomes de paises que tenham 5 letras
SELECT * FROM pais WHERE nome LIKE '_____'

-- Consultar os países e suas respectivas linguas oficiais
-- (excluir da consulta as linguas não oficiais)
SELECT pais.nome, linguagemPais.linguagem
FROM pais, linguagemPais
WHERE pais.id = linguagemPais.codigoPais
AND oficial='Sim'