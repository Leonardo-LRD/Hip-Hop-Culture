/* LOCAL - DESENVOLVIMENTO */
CREATE DATABASE hiphop;
USE hiphop;


CREATE TABLE musica (
	id_musica INT PRIMARY KEY AUTO_INCREMENT,
	titulo VARCHAR(100)
);

-- +-----------+--------------+------+-----+---------+----------------+
-- | Field     | Type         | Null | Key | Default | Extra          |
-- +-----------+--------------+------+-----+---------+----------------+
-- | id_musica | int          | NO   | PRI | NULL    | auto_increment |
-- | titulo    | varchar(100) | YES  |     | NULL    |                |
-- +-----------+--------------+------+-----+---------+----------------+

-- MÚSICAS DISPONÍVEIS PARA VOTAÇÃO
INSERT INTO musica (titulo) VALUES 
('A cultura'),
('Cabeça de Nego'),
('Canão foi tão bom'),
('Cantando pro Santo'),                   
('Cigarro mata'),
('Cocaína'),
('Gíria Criminal'),
('Marginal Alado'),
('Mosquito'),
('Mun-Rá'),
('Na Zona Sul'),
('No Brooklin'),
('O Enxame'),
('O Gatilho'),
('O Gatilho 2'),
('O Invasor'),
('País da Fome'),
('País da Fome, Pt. II'),
('Rap é Compromisso!'),
('Respeito é Pra Quem Tem'),
('Sai da Frente'),
('Um Bom Lugar'),
('Vamo Fuma'),
('Vira Lata S/A');

-- +-----------+-------------------------+
-- | id_musica | titulo                  |
-- +-----------+-------------------------+
-- |         1 | A cultura               |
-- |         2 | Cabeça de Nego          |
-- |         3 | Canão foi tão bom       |
-- |         4 | Cantando pro Santo      |
-- |         5 | Cigarro mata            |
-- |         6 | Cocaína                 |
-- |         7 | Gíria Criminal          |
-- |         8 | Marginal Alado          |
-- |         9 | Mosquito                |
-- |        10 | Mun-Rá                  |
-- |        11 | Na Zona Sul             |
-- |        12 | No Brooklin             |
-- |        13 | O Enxame                |
-- |        14 | O Gatilho               |
-- |        15 | O Gatilho 2             |
-- |        16 | O Invasor               |
-- |        17 | País da Fome            |
-- |        18 | País da Fome, Pt. II    |
-- |        19 | Rap é Compromisso!      |
-- |        20 | Respeito é Pra Quem Tem |
-- |        21 | Sai da Frente           |
-- |        22 | Um Bom Lugar            |
-- |        23 | Vamo Fuma               |
-- |        24 | Vira Lata S/A           |
-- +-----------+-------------------------+


CREATE TABLE usuario (
	id_usuario INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50),
	email VARCHAR(60),
	senha VARCHAR(20),
	fk_musica INT,
	FOREIGN KEY (fk_musica) REFERENCES musica (id_musica)
);

-- +------------+-------------+------+-----+---------+----------------+
-- | Field      | Type        | Null | Key | Default | Extra          |
-- +------------+-------------+------+-----+---------+----------------+
-- | id_usuario | int         | NO   | PRI | NULL    | auto_increment |
-- | nome       | varchar(50) | YES  |     | NULL    |                |
-- | email      | varchar(60) | YES  |     | NULL    |                |
-- | senha      | varchar(20) | YES  |     | NULL    |                |
-- | fk_musica  | int         | YES  | MUL | NULL    |                |
-- +------------+-------------+------+-----+---------+----------------+

-- CADASTROS
INSERT INTO usuario (nome, email, senha, fk_musica) VALUES
('Guilherme', 'guilherme@email.com', 'guilherme@email.com', 10),
('Alexandre', 'ale@email.com', 'ale@email.com', 14),
('Fernando', 'fernando@email.com', 'fernando@email.com', 19),
('Matheus', 'matheus@email.com', 'fernando@email.com', 7),
('David Lucca', 'david@email.com', 'david@email.com', 3);

-- 150 VOTOS ALEATÓRIOS
INSERT INTO usuario (nome, email, senha, fk_musica) VALUES 
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1);



/* NUVEM AZURE - PRODUÇÃO */
CREATE TABLE musica (
	id_musica INT PRIMARY KEY IDENTITY(1,1),
	titulo VARCHAR(100)
);

-- MÚSICAS DISPONÍVEIS PARA VOTAÇÃO
INSERT INTO [dbo].[musica] (titulo) VALUES
('A cultura'),
('Cabeça de Nego'),
('Canão foi tão bom'),
('Cantando pro Santo'),                   
('Cigarro mata'),
('Cocaína'),
('Gíria Criminal'),
('Marginal Alado'),
('Mosquito'),
('Mun-Rá'),
('Na Zona Sul'),
('No Brooklin'),
('O Enxame'),
('O Gatilho'),
('O Gatilho 2'),
('O Invasor'),
('País da Fome'),
('País da Fome, Pt. II'),
('Rap é Compromisso!'),
('Respeito é Pra Quem Tem'),
('Sai da Frente'),
('Um Bom Lugar'),
('Vamo Fuma'),
('Vira Lata S/A');


CREATE TABLE usuario (
	id_usuario INT PRIMARY KEY IDENTITY(1,1),
	nome VARCHAR(50),
	email VARCHAR(60),
	senha VARCHAR(20),
	fk_musica INT,
	FOREIGN KEY (fk_musica) REFERENCES musica (id_musica)
);

-- CADASTROS
INSERT INTO [dbo].[usuario] (nome, email, senha, fk_musica) VALUES
('Guilherme', 'guilherme@email.com', 'guilherme@email.com', 10),
('Alexandre', 'ale@email.com', 'ale@email.com', 14),
('Fernando', 'fernando@email.com', 'fernando@email.com', 19),
('Matheus', 'matheus@email.com', 'fernando@email.com', 7),
('David Lucca', 'david@email.com', 'david@email.com', 3);

-- 150 VOTOS ALEATÓRIOS
INSERT INTO [dbo].[usuario] (nome, email, senha, fk_musica) VALUES 
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1),
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1);
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1);
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1);
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1);
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1);
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1);
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1);
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1);
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1);
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1);
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1);
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1);
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1);
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1);
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1);
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1);
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1);
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1);
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1);
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1);
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1);
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1);
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1);
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1);
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1);
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1);
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1);
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1);
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1);
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1);
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1);
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1);
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1);
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1);
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1);
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1);
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1);
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1);
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1);
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1);
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1);
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1);
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1);
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1);
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1);
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1);
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1);
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1);
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1);
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1);
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1);
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1);
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1);
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1);
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1);
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1);
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1);
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1);
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1);
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1);
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1);
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1);
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1);
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1);
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1);
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1);
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1);
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1);
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1);
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1);
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1);
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1);
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1);
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1);
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1);
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1);
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1);
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1);
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1);
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1);
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1);
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1);
('Voto', 'voto@email.com', 'voto@email.com', FLOOR(RAND() * (24 - 1 + 1)) + 1);
