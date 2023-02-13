
CREATE TABLE instrutores
(
    id INT NOT NULL
    AUTO_INCREMENT, nome VARCHAR
    (50) NOT NULL, email VARCHAR
    (50) NOT NULL, valor_hora INTEGER UNSIGNED NULL, certificados VARCHAR
    (255) NULL, PRIMARY KEY
    (id) );
CREATE TABLE cursos
(
    id INTEGER
    UNSIGNED NOT NULL AUTO_INCREMENT, nome VARCHAR
    (50) NOT NULL, requisito VARCHAR
    (255) NULL, carga_horaria SMALLINT UNSIGNED NULL, preco DOUBLE UNSIGNED NULL, PRIMARY KEY
    (id) );
CREATE TABLE alunos
(
    id INT NOT NULL
    AUTO_INCREMENT, cpf CHAR
    (11) NOT NULL, nome VARCHAR
    (50) NOT NULL, email VARCHAR
    (50) NOT NULL, telefone CHAR
    (14) NOT NULL, data_nascimento DATE NULL, PRIMARY KEY
    (id) );
CREATE TABLE turmas
(
    id INTEGER
    UNSIGNED NOT NULL AUTO_INCREMENT, instrutores_id INT NOT NULL, cursos_id INTEGER UNSIGNED NOT NULL, data_inicio DATE NULL, data_final DATE NULL, carga_horaria SMALLINT UNSIGNED NULL, PRIMARY KEY
    (id), INDEX turmas_FKIndex1
    (cursos_id), INDEX turmas_FKIndex2
    (instrutores_id), FOREIGN KEY
    (cursos_id) REFERENCES cursos
    (id) ON
    DELETE NO ACTION ON
    UPDATE NO ACTION, FOREIGN KEY
    (instrutores_id) REFERENCES instrutores
    (id) ON
    DELETE NO ACTION ON
    UPDATE NO ACTION );
CREATE TABLE matriculas
    (
        id INTEGER
        UNSIGNED NOT NULL AUTO_INCREMENT, turmas_id INTEGER UNSIGNED NOT NULL, alunos_id INT NOT NULL, data_matricula DATE NULL, PRIMARY KEY
        (id), INDEX matriculas_FKIndex1
        (alunos_id), INDEX matriculas_FKIndex3
        (turmas_id), FOREIGN KEY
        (alunos_id) REFERENCES alunos
        (id) ON
        DELETE NO ACTION ON
        UPDATE NO ACTION, FOREIGN KEY
        (turmas_id) REFERENCES turmas
        (id) ON
        DELETE NO ACTION ON
        UPDATE NO ACTION ); 
