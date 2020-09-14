CREATE DATABASE gt
USE gt
DROP DATABASE gt;

CREATE table pais (
	id INT NOT NULL IDENTITY PRIMARY KEY,
	nome VARCHAR(50) NOT NULL DEFAULT '',
	continente VARCHAR(15) CHECK(continente IN('Ásia', 'Europa', 'América', 'África', 'Oceania', 'Antártida')) NOT NULL,
	codigo CHAR(3) NOT NULL DEFAULT ''
)

CREATE TABLE estado (
	id INT NOT NULL IDENTITY PRIMARY KEY,
	nome VARCHAR(50) NOT NULL DEFAULT '',
	sigla CHAR(2) NOT NULL DEFAULT ''
)

CREATE TABLE cidade (
	id INT NOT NULL IDENTITY PRIMARY KEY,
	nome VARCHAR(50) NOT NULL DEFAULT '',
	populacao INT NOT NULL DEFAULT '0'
)

CREATE TABLE ponto_tur (
	id INT NOT NULL IDENTITY PRIMARY KEY,
	nome VARCHAR(50) NOT NULL DEFAULT '',
	populacao INT NOT NULL DEFAULT '0',
	tipo VARCHAR(20) CHECK(tipo IN ('Atrativo', 'Serviço', 'Equipamento',
	'Infraestrutura', 'Instituição', 'Organização')),
	publicado CHAR(3) CHECK(publicado IN('Não', 'Sim')) NOT NULL DEFAULT 'Não'
)

CREATE TABLE coordenada (
	latitude FLOAT,
    longitude FLOAT
)

-- Comando para visualizar todas as tabelas do banco

SELECT * FROM INFORMATION_SCHEMA.TABLES


-- Comando para visualizar todas as colunas de uma determinada tabela
-- Deve-se trocar o valor da cláusula WHERE para a tabela que deseja exibir

SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'pais'