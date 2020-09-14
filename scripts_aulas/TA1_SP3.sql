USE gt;

INSERT INTO pais 
VALUES('Brasil', 'América', 'BRA'),
('Índia', 'Ásia', 'IDN'),
('China', 'Ásia', 'CHI'),
('Japão', 'Ásia', 'JPN');

INSERT INTO estado (nome, sigla)
VALUES('Maranhão', 'MA'),
('São Paulo', 'SP'),
('Santa Catarina', 'SC'),
('Rio de Janeiro', 'RJ');

INSERT INTO cidade (nome, populacao)
values('Sorocaba', 700000),
('Déli', 26000000),
('Xangai', 22000000),
('Tóquio', 38000000);

INSERT INTO ponto_tur (nome, tipo)
VALUES('Quinzinho de Barros', 'Instituição'),
('Parque Estadual do Jalapão', 'Atrativo'),
('Torre Eiffel', 'Atrativo'),
('Fogo de Chão', 'Serviço');

SELECT * FROM pais;
SELECT * FROM estado;
SELECT * FROM cidade;
SELECT * FROM ponto_tur;

/* determinados países terem mais de
um idioma, embora um seja determinado como o idioma oficial.
Nessa relação, temos a cardinalidade de 1 para N */

CREATE TABLE linguagemPais (
	id INT NOT NULL IDENTITY PRIMARY KEY,
	codigoPais INT,
	linguagem VARCHAR(30) NOT NULL DEFAULT '',
	oficial CHAR(3) CHECK(oficial IN ('Sim', 'Não')) NOT NULL DEFAULT'Não',

);

ALTER TABLE linguagemPais
ADD CONSTRAINT FK_linguagemPais
FOREIGN KEY (codigoPais) REFERENCES pais(id);


select * from INFORMATION_SCHEMA.COLUMNS where TABLE_NAME = 'linguagemPais'

select * from INFORMATION_SCHEMA.COLUMNS where TABLE_NAME = 'pais'

SELECT * FROM pais;

-- Exemplo caso deseje remover a restrição de chave estrangeira
ALTER TABLE linguagemPais DROP CONSTRAINT FK_linguagemPais;

-- Exemplo caso deseje excluir a tabela linguagemPais
DROP TABLE linguagemPais;