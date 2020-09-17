create database SuperGames;
use SuperGames;

CREATE TABLE localizacao (
    Id INT PRIMARY KEY IDENTITY,
    Secao VARCHAR(50) NOT NULL,
    Prateleira INT NOT NULL
);

CREATE TABLE jogo (
    Cod INT PRIMARY KEY IDENTITY,
    Nome VARCHAR(50) NOT NULL,
    Valor DECIMAL(6,2) NOT NULL,
    Localizacao_Id INT NOT NULL,
    FOREIGN KEY (Localizacao_Id)
        REFERENCES Localizacao (Id)
);

INSERT localizacao VALUES ('Guerra', '001'),
('Guerra', '002'),
('Aventura', '100'),
('Aventura', '101'),
('RPG', '150'),
('RPG', '151')

INSERT jogo VALUES ('COD 3', 125.00, 1),
('BF 1', 150.00, 2),
('GOW 4', 200.00, 3),
('SLY', 99.00, 4),
('FF XV', 205.00, 5);

SELECT * FROM localizacao;
SELECT * FROM jogo;


-- Identificar o nome do jogo e a prateleira, fornecendo o nome de uma seção;
SELECT jogo.nome, localizacao.prateleira
FROM jogo INNER JOIN localizacao
ON localizacao.id = jogo.localizacao_Id;

-- Identificar o nome dos jogos da seção de jogos de guerra.

SELECT jogo.nome
FROM jogo INNER JOIN localizacao
ON localizacao.id = jogo.localizacao_Id
WHERE secao = 'Guerra';

-- Identificar TODAS as seções e os respectivos nomes dos
-- jogos, ordenando as seleções em ordem crescente pelo nome dos jogos.

SELECT localizacao.secao, jogo.nome
FROM localizacao LEFT JOIN jogo
ON localizacao.Id = jogo.localizacao_Id
ORDER BY jogo.nome ASC;