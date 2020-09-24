CREATE DATABASE guiatur
USE guiatur

select * from INFORMATION_SCHEMA.TABLES

select * from INFORMATION_SCHEMA.COLUMNS 
drop table pais;
CREATE table pais (
	id INT NOT NULL IDENTITY PRIMARY KEY,
	nome VARCHAR(50) NOT NULL DEFAULT '',
	continente VARCHAR(15) CHECK(continente IN('América','Oceania','Ásia','África','Antártida','Europa')) NOT NULL,
	codigo CHAR(3) NOT NULL DEFAULT ''
)

CREATE TABLE estado (
	id INT NOT NULL IDENTITY PRIMARY KEY,
	nome VARCHAR(50) NOT NULL DEFAULT '',
	sigla CHAR(2) NOT NULL DEFAULT ''
);

CREATE TABLE cidade (
	id INT NOT NULL IDENTITY PRIMARY KEY,
	nome VARCHAR(50) NOT NULL DEFAULT '',
	populacao INT NOT NULL DEFAULT '0'
);

CREATE TABLE ponto_tur (
	id INT NOT NULL IDENTITY PRIMARY KEY,
	nome VARCHAR(50) NOT NULL DEFAULT '',
	tipo VARCHAR(20) CHECK(tipo IN ('Atrativo', 'Serviço', 'Equipamento',
	'Infraestrutura', 'Instituição', 'Organização')),
	publicado CHAR(3) CHECK(publicado IN('Não', 'Sim')) NOT NULL DEFAULT 'Não'
);



INSERT INTO pais
VALUES('Brasil', 'América', 'BRA'),
('Índia', 'Ásia', 'IDN'),
('China', 'Ásia', 'CHI'),
('Japão', 'Ásia', 'JPN');

SELECT * FROM pais;

truncate table estado;

INSERT INTO estado (nome, sigla)
VALUES('Maranhão', 'MA'),
('São Paulo', 'SP'),
('Santa Catarina', 'SC'),
('Rio de Janeiro', 'RJ');

SELECT * FROM estado;

INSERT INTO cidade (nome, populacao)
values('Sorocaba', 700000),
('Déli', 26000000),
('Xangai', 22000000),
('Tóquio', 38000000);

SELECT * FROM cidade;

INSERT INTO ponto_tur (nome, tipo)
VALUES('Quinzinho de Barros', 'Instituição'),
('Parque Estadual do Jalapão', 'Atrativo'),
('Torre Eiffel', 'Atrativo'),
('Fogo de Chão', 'Serviço');

SELECT * FROM ponto_tur



-- Este INSERT gera erro, pois "Tipoteste" não é um valor aceito no atributo "Tipo"
-- tipo VARCHAR(20) CHECK(tipo IN ('Atrativo', 'Serviço', 'Equipamento', 'Infraestrutura', 'Instituição', 'Organização'))
INSERT INTO ponto_tur (nome, tipo)
VALUES('Quinzinho de Barros', 'Tipoteste');





















