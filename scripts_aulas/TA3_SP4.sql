USE master

CREATE LOGIN usuario_aula WITH PASSWORD = 'teste123'

USE guiatur
CREATE USER usuario_aula FOR LOGIN usuario_aula;

GRANT SELECT
ON pais
TO usuario_aula;

EXECUTE AS USER = 'usuario_aula'

SELECT * FROM pais; -- Este funciona para o 'usuario_aula'
SELECT * FROM estado; -- Este NÃO funciona para o 'usuario_aula'

REVERT -- Reverte para o usuário anterior ao 'EXECUTE AS', que é o próprio DBO





































-- ---------------------------------------------------------
-- ---------------------------------------------------------
-- ---------------------------------------------------------

/*

USE master

CREATE LOGIN usuario_teste WITH PASSWORD = 'teste123'
USE guiatur
CREATE USER user_t FOR LOGIN usuario_teste;

select * from pais

GRANT SELECT
ON pais
TO user_t

EXECUTE AS user = 'user_t';

-- Alterna o contexto de execução de volta para o chamador da última instrução EXECUTE AS.
REVERT



DROP LOGIN usuario_teste
DROP USER user_t

*/