create database quemsoueu;

use quemsoueu;

CREATE TABLE participantes (
    id_participante INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(14) UNIQUE NOT NULL,
    email VARCHAR(100),
    telefone VARCHAR(20),
    data_nascimento DATE
);
CREATE TABLE corridas (
    id_corrida INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    data DATE NOT NULL,
    local VARCHAR(150)
);
CREATE TABLE produtos (
    id_produto INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    preco DECIMAL(10,2) NOT NULL
);

CREATE TABLE cursos (
    id_curso INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    carga_horaria INT NOT NULL
);
CREATE TABLE participante_corrida (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_participante INT NOT NULL,
    id_corrida INT NOT NULL,
    data_inscricao DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_participante) REFERENCES participantes(id_participante),
    FOREIGN KEY (id_corrida) REFERENCES corridas(id_corrida)
);
CREATE TABLE participante_curso (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_participante INT NOT NULL,
    id_curso INT NOT NULL,
    data_inscricao datetime DEFAULT CURRENT_TIMESTAMP,
    status ENUM('Inscrito', 'Concluído', 'Cancelado') DEFAULT 'Inscrito',
    FOREIGN KEY (id_participante) REFERENCES participantes(id_participante),
    FOREIGN KEY (id_curso) REFERENCES cursos(id_curso)
);


CREATE TABLE compras_produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_participante INT NOT NULL,
    id_produto INT NOT NULL,
    quantidade INT NOT NULL DEFAULT 1,
    data_compra datetime DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_participante) REFERENCES participantes(id_participante),
    FOREIGN KEY (id_produto) REFERENCES produtos(id_produto)
);

-- INSERINDO DADOS 
INSERT INTO corridas (id_corrida, nome, data, local) VALUES
(1, 'Corrida da Irmandade', '2025-03-15', 'Aterro do Flamengo - RJ'),
(2, 'Desafio Urbano', '2025-04-20', 'Parque Madureira - RJ'),
(3, 'Corrida Noturna Tática', '2025-05-10', 'Praia de Copacabana - RJ'),
(4, 'Corrida dos Fortes', '2025-06-18', 'Forte de Copacabana - RJ'),
(5, 'Corrida da Resistência', '2025-07-22', 'Engenhão - Estádio Nilton Santos'),
(6, 'Circuito Sobrevivência', '2025-08-17', 'Pedra Branca - RJ'),
(7, 'Corrida dos Heróis', '2025-09-14', 'Maracanã - RJ'),
(8, 'Corrida da Superação', '2025-10-12', 'Ilha do Governador - RJ'),
(9, 'Treino Militar Aberto', '2025-11-09', 'Campo de Santana - RJ'),
(10, 'Corrida Final do Ano', '2025-12-07', 'Barra da Tijuca - RJ');


INSERT INTO produtos (id_produto, nome, descricao, preco) VALUES
(1, 'Camiseta Oficial', 'Camiseta dry fit com logo do projeto', 59.90),
(2, 'Boné Tático', 'Boné preto com bordado tático e aba curva', 49.90),
(3, 'Caneca Militar', 'Caneca de porcelana com estampa do curso', 34.90),
(4, 'Chaveiro Irmandade', 'Chaveiro em metal com escudo do projeto', 19.90),
(5, 'Kit Corrida', 'Kit com camiseta, medalha e número de peito', 89.90),
(6, 'Garrafa Térmica', 'Garrafa personalizada 750ml', 69.90),
(7, 'Mochila Operacional', 'Mochila camuflada com compartimentos táticos', 149.90),
(8, 'Pulseira de Sobrevivência', 'Pulseira com bússola e pederneira', 29.90),
(9, 'Adesivo Tático', 'Adesivo PVC para carros e janelas', 9.90),
(10, 'Manual do Guerreiro Urbano', 'Mini-guia ilustrado com técnicas básicas', 39.90);


INSERT INTO cursos (id_curso, nome, descricao, carga_horaria) VALUES
(1, 'Vivência Militar Básica', 'Imersão introdutória ao estilo de vida militar', 12),
(2, 'Sobrevivência Urbana', 'Técnicas para situações de risco em ambientes urbanos', 16),
(3, 'Mentoria de Foco e Propósito', 'Sessões com especialistas em disciplina mental', 10),
(4, 'Combate Corpo a Corpo', 'Aulas práticas de defesa pessoal e imobilização', 20),
(5, 'Primeiros Socorros de Campo', 'Treinamento para atendimento emergencial em missões', 14),
(6, 'Treinamento Físico Intensivo', 'Condicionamento militar funcional e obstáculos', 18),
(7, 'Resgate e Evacuação', 'Técnicas de extração e salvamento em zona de risco', 16),
(8, 'Orientação e Navegação', 'Uso de mapas, bússolas e orientação no terreno', 12),
(9, 'Curso de Liderança Tática', 'Formação de liderança para ambientes operacionais', 16),
(10, 'Inteligência Emocional para Operações', 'Desenvolvimento do controle emocional sob pressão', 10);



