-- DDL --  CREATE, DROP, ALTER
 SHOW DATABASES;
 
 USE INFORMATION_SCHEMA;
SHOW tables;
CREATE DATABASE IF NOT EXISTS faculdade;
select * from character_sets;
select * from collations;

drop database faculdade;

CREATE DATABASE faculdade
CHARACTER SET latin1
COLLATE 'latin1_swedish_ci';

use faculdade;
drop table tbAlunos;
CREATE TABLE tbAlunos (
rgm INT primary key,
nome VARCHAR(50) NOT NULL, 
email VARCHAR(50) NOT NULL,
dtnascto DATE NOT NULL
);

ALTER TABLE tbalunos
 ADD sexo CHAR(1)
 AFTER nome;
 
 
 ALTER TABLE tbaluno
 MODIFY sexo char(1) NOT NULL
 AFTER nome;
 
 INSERT INTO tbalunos (
		rgm, nome, sexo, email, dtnascto )
        values(201, "ana silva", "f", "ana@gmail.com", "2000-05-10"),
			  (202, "pedro souza", "m", "pedro@uol.com","2002-05-11");






CREATE TABLE cursos (
      id_curso INT primary key,
      nome    VARCHAR(50) NOT NULL ,
	  duracao INT NOT NULL,
      periodo VARCHAR(30) NOT NULL);