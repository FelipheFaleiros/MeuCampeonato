-- -- Criar o banco de dados
-- CREATE DATABASE meucampeonato;
-- USE meucampeonato;

-- -- Tabela Times
-- CREATE TABLE Times (
--     id INT AUTO_INCREMENT PRIMARY KEY,
--     nome VARCHAR(50) NOT NULL,
--     sigla VARCHAR(5) NOT NULL,
-- 	incricao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
--     eliminado BIT DEFAULT 0
-- );

-- -- Tabela Campeonatos
-- CREATE TABLE campeonatos (
--     id INT AUTO_INCREMENT PRIMARY KEY,
--     nome VARCHAR(50) NOT NULL,
--     ano YEAR NOT NULL,
--     times_inscritos INT
-- );

-- -- Tabela Jogos
-- CREATE TABLE jogos (
--     id INT AUTO_INCREMENT PRIMARY KEY,
--     data_hora DATETIME NOT NULL,
--     time_casa_id INT,
--     time_visitante_id INT,
--     gols_casa INT DEFAULT 0,
--     gols_visitante INT DEFAULT 0,
--     rodada INT NOT NULL,
--     campeonato_id INT,   
--     FOREIGN KEY (time_casa_id) REFERENCES Times(id),
--     FOREIGN KEY (time_visitante_id) REFERENCES Times(id),
--     FOREIGN KEY (campeonato_id) REFERENCES Campeonatos(id)
-- );

-- -- Tabela Classificação
-- CREATE TABLE Classificacao (
--     id INT AUTO_INCREMENT PRIMARY KEY,
--     time_id INT,
--     campeonato_id INT,
--     pontos INT DEFAULT 0,
--     vitorias INT DEFAULT 0,
--     empates INT DEFAULT 0,
--     derrotas INT DEFAULT 0,
--     gols_pro INT DEFAULT 0,
--     gols_contra INT DEFAULT 0,
--     saldo_gols INT DEFAULT 0,
--     jogos INT DEFAULT 0,
--     FOREIGN KEY (time_id) REFERENCES Times(id),
--     FOREIGN KEY (campeonato_id) REFERENCES Campeonatos(id)
-- );



