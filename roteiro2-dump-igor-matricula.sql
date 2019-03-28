-- table criada
CREATE TABLE tarefas (
tarefa INTEGER,
tipo_tarefa TEXT,
cpf VARCHAR(11),
vezes INTEGER,
veracidade CHAR(1)
);

--questão 1:
    --questoes aceitas
    --INSERT INTO tarefas VALUES(2147483646 , 'limpar chão do corredor central' , '98765432111', 0 , 'F');
    --INSERT INTO tarefas VALUES(2147483647 , 'limpar janelas da sala 203' , '98765432122', 1 , 'F');
    --INSERT INTO tarefas VALUES(null , null , null, null , null);

    --questoes nao aceitas
    --INSERT INTO tarefas VALUES(2147483644 , 'limpar chão do corredor superior' , '987654323211', 0 , 'F');    
    --INSERT INTO tarefas VALUES(2147483644 , 'limpar chão do corredor superior' , '98765432311', 0 , 'FF');


--questão 2:
    --INSERT INTO tarefas VALUES (2147483648,'limpar portas do térreo','32323232955',4,'A');
ALTER TABLE tarefas ALTER COLUMN tarefa TYPE BIGINT;

--questão 3:
    ALTER TABLE tarefas ALTER COLUMN vezes TYPE SMALLINT;
    --não passa
    --INSERT INTO tarefas VALUES(2147483649 , 'limpar portas da entrada principal' , '32322525199', 32768 , 'A');
    --INSERT INTO tarefas VALUES(2147483650 , 'limpar janelas da entrada principal' , '32333233288', 32769 , 'A');
    --passa
    --INSERT INTO tarefas VALUES(2147483651 , 'limpar portas do 1o andar' , '32323232911', 32767 , 'A');
    --INSERT INTO tarefas VALUES(2147483652 , 'limpar portas do 2o andar' , '32323232911', 32766 , 'A');

--questão 4
    --ALTER TABLE tarefas RENAME COLUMN tarefa TO id;
    --ALTER TABLE tarefas RENAME COLUMN tipo_tarefa TO descricao;
    --ALTER TABLE tarefas RENAME COLUMN cpf TO func_resp_cpf;
    --ALTER TABLE tarefas RENAME COLUMN vezes TO prioridade;
    --ALTER TABLE tarefas RENAME COLUMN veracidade TO status;

    DELETE FROM tarefas where id is null;