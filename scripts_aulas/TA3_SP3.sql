USE guiatur

select * from INFORMATION_SCHEMA.TABLES

select * from INFORMATION_SCHEMA.COLUMNS 

-- Se os registros abaixo já estiverem inserirdos na tabela, não é 
-- necessário executar este INSERT novamente
INSERT INTO ponto_tur (nome, tipo)
VALUES('Quinzinho de Barros', 'Instituição'),
('Parque Estadual do Jalapão', 'Atrativo'),
('Torre Eiffel', 'Atrativo'),
('Fogo de Chão', 'Serviço');

TRUNCATE TABLE ponto_tur

SELECT * FROM ponto_tur;

BEGIN TRANSACTION t1
    UPDATE ponto_tur SET nome = 'Quinze de Barros'
ROLLBACK TRANSACTION t1

BEGIN TRANSACTION t1
    UPDATE ponto_tur SET nome = 'Quinze de Barros' WHERE id=1
COMMIT TRANSACTION t1
