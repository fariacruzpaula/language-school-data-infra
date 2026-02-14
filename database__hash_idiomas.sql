/*
1- Criação e configuração
O primeiro passo é criar um banco de dados onde as informações serão armazenadas. 
Em seguida, é importante "setar" o banco de dados como o padrão a ser usado:
*/

CREATE DATABASE 
	hashidiomas
USE
	hashidiomas
	

/* 
2- Criação de Tabelas
Com o entendimetno de negócio e levantamento de requisitos, foi possível perceber que as tabelas mais importantes para o negócio são:
*/ 

CREATE TABLE alunos(
	nome_aluno VARCHAR(50),
	id_aluno INT PRIMARY KEY,
	email_aluno VARCHAR(50)
	)

CREATE TABLE cursos(
	id_curso INT PRIMARY KEY,
	nome_curso VARCHAR(50),
	valor_curso DECIMAL (10,2)
	)

CREATE TABLE vendas(
	id_venda INT PRIMARY KEY,
	id_curso INT,
	data_venda DATE,
	id_aluno INT
	)

CREATE TABLE professores(
	nome_professor VARCHAR (50),
	id_professor INT PRIMARY KEY,
	id_curso INT
	)

/*
3- Adicionar valores nas tabelas
*/ 
INSERT INTO cursos
VALUES
(1, 'Inglês', 2300),
(2, 'Francês', 2500),
(3, 'Espanhol', 2100)

INSERT INTO vendas
VALUES
(1, 1, '2025-02-14', 1),
(2, 2, '2025-03-03', 2),
(3, 3, '2025-04-16', 3)


INSERT INTO alunos
VALUES
('Josefa do Nascimento', 1, 'josefa@nascimento.com'),
('Abdias Ferreira', 2, 'ab@dias.com.br'),
('Marcella Jorge', 3, 'mar@jor.com')


INSERT INTO professores
VALUES
('Firmino Gonzales', 1, 3),
('Karine Cruz', 2, 1),
('Fernanda Dubois', 3, 2)

/*
4- Atualização de valores
MUITO importante não esquecer de fazer o filtro, senão a atualização vai ser para toda a tabela
*/

UPDATE cursos
SET valor_curso = 2350
WHERE id_curso = 1

/* 
5- Exclusão de valores
Em um cenário hipotético onde uma compra foi reembolsada, é necessário deletar da coluna de vendas. Assim como na atualização de valores, na exclusão é igualmente importante utilizar o filtro. 
*/

DELETE FROM VENDAS
WHERE id_venda = 2

/*
6- Exclusão de tabelas ou banco de dados
Caso, em algum momento, seja necessário fazer a exclusão de bancos de dados ou tabelas inteiras, o comando utilizado  seria DROP TABLE [tabela] ou DROP DATABASE [banco de dados]. 
*/

