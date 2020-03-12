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
-------------------------------------------------------------------------------------
--  CREATE, DROP, ALTER
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
      
      insert into cursos(
      nome, duracao, periodo)
      values( "vini", "1 mes", "manha");
ALTER TABLE tbalunos 
 add  id_curso int;

ALTER TABLE tbalunos
ADD CONSTRAINT fkid_curso
foreign key(id_curso) references cursos(id_curso);
 
 INSERT INTO tbalunos (
		rgm, nome, sexo, email, dtnascto, id_curso )
        values(201, "ana silva", "f", "ana@gmail.com", "2000-05-10", "0"),
			  (202, "pedro souza", "m", "pedro@uol.com","2002-05-11", "0");
              
              
              CREATE TABLE customers(
              custumerNumber INT  primary key,
              nome   VARCHAR (50),
              contato VARCHAR(50),
              telefone VARCHAR(50),
              endereço VARCHAR(50),
              cidade VARCHAR (50),
              stado VARCHAR (50),
              caixapostal VARCHAR(50),
              pais VARCHAR (50),
              salesRepEmployeeNumber VARCHAR(50),
              creditLimit INT);
              
              CREATE TABLE pedidos (
              orderNumber Int primary key,
              orderDate date,
              requiredDate date,
              shippedDate date,
              orderStatus   VARCHAR(90),
              comments VARCHAR(90),
              custumerNumber INT  ,
              foreign key(custumerNumber) references customers(custumerNumber));
              
              drop table pedidos;
              drop table customers;
 
 
 
