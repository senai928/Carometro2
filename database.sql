-- SQL para criar o banco de dados e a tabela necessária para o Carômetro Digital

-- Criar o banco de dados
CREATE DATABASE IF NOT EXISTS carometro;

-- Usar o banco de dados
USE carometro;

-- Criar a tabela alunos
CREATE TABLE IF NOT EXISTS alunos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(20) NOT NULL,
    telefone VARCHAR(20) NOT NULL,
    email VARCHAR(100) NOT NULL,
    turma VARCHAR(20) NOT NULL,
    foto VARCHAR(255),
    data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Inserir alunos de exemplo
INSERT INTO alunos (nome, cpf, telefone, email, turma, foto) VALUES
('Ana Silva', '123.456.789-00', '(11) 98765-4321', 'ana.silva@email.com', 'Idev 2', ''),
('Carlos Oliveira', '987.654.321-00', '(11) 91234-5678', 'carlos.oliveira@email.com', 'Idev 2', ''),
('Pedro Santos', '456.789.123-00', '(11) 95678-1234', 'pedro.santos@email.com', 'Idev 3', ''),
('Mariana Costa', '321.654.987-00', '(11) 97890-1234', 'mariana.costa@email.com', 'Idev 3', ''),
('Lucas Ferreira', '789.123.456-00', '(11) 96543-2109', 'lucas.ferreira@email.com', 'Idev 4', ''),
('Julia Pereira', '654.321.987-00', '(11) 98901-2345', 'julia.pereira@email.com', 'Idev 4', '');






CREATE TABLE usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    senha VARCHAR(255) NOT NULL,
    fone VARCHAR(20),
    setor VARCHAR(50),
    data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);