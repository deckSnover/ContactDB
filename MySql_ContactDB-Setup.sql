CREATE DATABASE IF NOT EXISTS contactdb_compose;
USE contactdb_compose;

-- Criação de uma tabela de contatos
CREATE TABLE clients (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50),
    sobrenome VARCHAR(50),
    idade INT,
    cidade VARCHAR(50)
);
-- Inserindo 30 registros na tabela
INSERT INTO clients (nome, sobrenome, idade, cidade) VALUES
('João', 'Silva', 25, 'São Paulo'),
('Maria', 'Santos', 30, 'Rio de Janeiro'),
('Pedro', 'Oliveira', 28, 'Belo Horizonte'),
('Ana', 'Souza', 27, 'Salvador'),
('Lucas', 'Pereira', 29, 'Brasília'),
('Juliana', 'Costa', 26, 'Recife'),
('Gabriel', 'Ferreira', 31, 'Porto Alegre'),
('Mariana', 'Gomes', 26, 'Fortaleza'),
('Carlos', 'Martins', 29, 'Curitiba'),
('Beatriz', 'Almeida', 27, 'Manaus'),
('Rafael', 'Rodrigues', 30, 'Florianópolis'),
('Laura', 'Lima', 28, 'Vitória'),
('Felipe', 'Carvalho', 25, 'Goiania'),
('Amanda', 'Sousa', 32, 'Natal'),
('Bruno', 'Nascimento', 29, 'Campo Grande'),
('Isabela', 'Araújo', 27, 'Teresina'),
('Rodrigo', 'Rocha', 31, 'João Pessoa'),
('Fernanda', 'Cardoso', 26, 'Aracaju'),
('Thiago', 'Pinto', 30, 'Maceió'),
('Carla', 'Cruz', 28, 'Cuiabá'),
('Daniel', 'Lopes', 25, 'Boa Vista'),
('Larissa', 'Mendes', 29, 'Palmas'),
('Marcos', 'Fernandes', 27, 'Porto Velho'),
('Renata', 'Oliveira', 31, 'Macapá'),
('Vinicius', 'Santana', 26, 'Rio Branco'),
('Camila', 'Barbosa', 32, 'Belém'),
('Gustavo', 'Ribeiro', 29, 'São Luís'),
('Patricia', 'Silveira', 27, 'Florianópolis'),
('Henrique', 'Souza', 30, 'Porto Alegre');

-- Inserir os 30 itens na tabela contacts

CREATE TABLE contacts (
    nome VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL,
    phone INT,
    PRIMARY KEY (nome, sobrenome)

);

INSERT INTO contacts (name, email, phone) VALUES
('João Silva', 'joao@example.com', '+55 11 1234-5678'),
('Maria Santos', 'maria@example.com', '+55 21 9876-5432'),
('Pedro Oliveira', 'pedro@example.com', '+55 31 2468-1357'),
('Ana Souza', NULL, '+55 41 3698-7412'),
('Lucas Pereira', 'lucas@example.com', '+55 51 7531-8642'),
('Juliana Costa', 'juliana@example.com', '+55 11 6543-2109'),
('Gabriel Ferreira', NULL, '+55 21 7890-4321'),
('Mariana Gomes', 'mariana@example.com', '+55 31 1357-2468'),
('Carlos Martins', 'carlos@example.com', '+55 41 9876-5432'),
('Beatriz Almeida', NULL, '+55 51 3698-7412'),
('Rafael Rodrigues', 'rafael@example.com', '+55 11 7531-8642'),
('Laura Lima', 'laura@example.com', '+55 21 6543-2109'),
('Felipe Carvalho', NULL, '+55 31 7890-4321'),
('Amanda Sousa', 'amanda@example.com', '+55 41 1357-2468'),
('Bruno Nascimento', 'bruno@example.com', '+55 51 9876-5432'),
('Isabela Araújo', NULL, '+55 11 3698-7412'),
('Rodrigo Rocha', 'rodrigo@example.com', '+55 21 7531-8642'),
('Fernanda Cardoso', 'fernanda@example.com', '+55 31 6543-2109'),
('Thiago Pinto', NULL, '+55 41 7890-4321'),
('Carla Cruz', 'carla@example.com', '+55 51 1357-2468'),
('Daniel Lopes', 'daniel@example.com', '+55 11 9876-5432'),
('Larissa Mendes', NULL, '+55 21 3698-7412'),
('Marcos Fernandes', 'marcos@example.com', '+55 31 7531-8642'),
('Renata Oliveira', 'renata@example.com', '+55 41 6543-2109'),
('Vinicius Santana', NULL, '+55 51 7890-4321'),
('Camila Barbosa', 'camila@example.com', '+55 11 1357-2468'),
('Gustavo Ribeiro', 'gustavo@example.com', '+55 21 9876-5432'),
('Patricia Silveira', NULL, '+55 31 3698-7412'),
('Henrique Souza', 'henrique@example.com', '+55 41 7531-8642');