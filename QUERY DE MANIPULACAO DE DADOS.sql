-- Tabela de Avaliação por Critério
-- Critério Descrição Pontos
-- 1. 2 consultas com SELECT e WHERE 2,0 pts

SELECT nome, cpf, email, telefone, data_nascimento
FROM participantes
WHERE data_nascimento > '1991-11-25';

SELECT id_participante, cpf, email, telefone, data_nascimento
FROM participantes
WHERE data_nascimento <= '1991-11-25';



-- 2. 2 consultas com GROUP BY e ORDER BY com funções de agregação 2,0 pts

SELECT preco, COUNT(*) AS total_produtos
FROM produtos
GROUP BY preco
ORDER BY total_produtos;

SELECT nome, preco, SUM(preco) AS total_valor
FROM produtos
GROUP BY nome, preco
ORDER BY total_valor DESC;


-- 3. 2 consultas com operadores aritméticos (+, -, *, /) 3,0 pts
SELECT 
  id_produto,
  nome,
  preco,
  preco + 2.50 AS preco_com_aumento
FROM produtos
ORDER BY id_produto;

SELECT 
  id_produto,
  nome,
  preco,
  preco - 5 AS preco_com_desconto_5_reais
FROM produtos
ORDER BY id_produto;

SELECT 
  id_produto,
  nome,
  preco,
  preco * 3 AS preco_para_3_unidades
FROM produtos
ORDER BY id_produto;

SELECT
  id_produto,
  nome,
  preco,
  preco  / 2 AS metade_do_preco
FROM produtos
ORDER BY id_produto;


-- 4. 3 consultas com operadores de comparação (=, !=, <, >, etc.) 2,0 pts

SELECT * FROM produtos 
WHERE preco > 50;

SELECT * FROM cursos 
WHERE carga_horaria <= 20;

SELECT * FROM participantes 
WHERE nome != 'João da Silva';

-- 5. 3 CONSULTAS COM OPERADORES LÓGICOS (AND, OR) 3,0 pts
SELECT * FROM produtos 
WHERE preco > 30 AND preco < 70;

SELECT * FROM cursos 
WHERE carga_horaria > 15 OR nome LIKE '%Militar%';

SELECT * FROM participantes 
WHERE nome LIKE '%alves%' OR telefone IS NULL;

-- 6. 2 CONSULTAS COM OPERADORES DE NEGAÇÃO (NOT) 3,0 pts
SELECT * FROM produtos WHERE NOT preco < 40;
SELECT * FROM cursos WHERE NOT nome LIKE '%Urbana%';

-- 7. 3 CONSULTAS COM OPERADORES AUXILIARES (IS NULL, BETWEEN, LIKE, IN) 3,0 pts
SELECT * FROM participantes 
WHERE telefone IS NULL;

SELECT * FROM produtos 
WHERE preco BETWEEN 30 AND 70;

SELECT * FROM cursos 
WHERE nome LIKE '%Combate%' 
OR nome IN ('Vivência Militar', 'Mentoria de Foco');

-- 8. 3 CONSULTAS COM FUNÇÕES DE AGREGAÇÃO (SUM, AVG, COUNT) 2,0 pts
SELECT SUM(preco) AS total_estoque 
FROM produtos;

SELECT AVG(carga_horaria) AS media_carga_horaria 
FROM cursos;

SELECT COUNT(*) AS total_participantes 
FROM participantes;

-- 9. 2 CONSULTAS COM FUNÇÕES DE DATA (NOW, DATE, YEAR) 3,0 pts
SELECT NOW() AS data_hora_atual;

SELECT nome, data_nascimento, 
YEAR(CURDATE()) - YEAR(data_nascimento) AS idade_aproximada 
FROM participantes;

-- 10. 3 SUBCONSULTAS COM AGRUPAMENTO E UNIÃO DE DADOS 5,0 pts
SELECT nome FROM participantes
UNION
SELECT nome FROM cursos;


-- 11. 3 CONSULTAS COM JOIN E VISUALIZAÇÃO DE TABELAS 6,0 pts
SELECT 
  p.nome AS nome_participante,
  c.nome AS nome_corrida,
  c.data AS data_corrida
FROM participantes p
INNER JOIN participante_corrida pa ON p.id_participante = pa.id_participante
INNER JOIN corridas c ON pa.id_corrida = c.id_corrida;


-- 12. 4 CONSULTAS COM TIPOS DE JOIN (INNER, LEFT, RIGHT) 6,0 pts

SELECT 
  p.nome AS nome_participante,
  c.nome AS nome_corrida
FROM participantes p
INNER JOIN participante_corrida pc ON p.id_participante = pc.id_participante
INNER JOIN corridas c ON pc.id_corrida = c.id_corrida;

SELECT 
  p.nome AS nome_participante,
  c.nome AS nome_corrida
FROM participantes p
LEFT JOIN participante_corrida pc ON p.id_participante = pc.id_participante
LEFT JOIN corridas c ON pc.id_corrida = c.id_corrida;

SELECT 
  p.nome AS nome_participante,
  c.nome AS nome_corrida
FROM participantes p
RIGHT JOIN participante_corrida pc ON p.id_participante = pc.id_participante
RIGHT JOIN corridas c ON pc.id_corrida = c.id_corrida;


