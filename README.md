# QUEM SOU EU SEM MEUS IRMÃOS, EVENTOS CURSOS E COMÉRCIO LTDA

## Descrição

Este projeto consiste no desenvolvimento de um banco de dados relacional para gerenciar eventos, cursos, produtos e participantes da empresa **QUEM SOU EU SEM MEUS IRMÃOS, EVENTOS CURSOS E COMÉRCIO LTDA**. O sistema permite o cadastro e controle de participantes, corridas, cursos, produtos, compras e inscrições em eventos.

## Estrutura do Projeto

- **CONCEITUAL_EVENTOS.brM**: Modelo conceitual do banco de dados.
- **LOGICO_EVENTOS.brM**: Modelo lógico do banco de dados.
- **QUERY DE CRIACAO DO BANCO DE DADOS.sql**: Script SQL para criação das tabelas e inserção de dados iniciais.
- **QUERY DE MANIPULACAO DE DADOS.sql**: Consultas SQL para manipulação e análise dos dados.
- **README.md**: Este arquivo.

## Entidades Principais

- **participantes**: Cadastro de pessoas que participam dos eventos e cursos.
- **corridas**: Eventos de corrida organizados pela empresa.
- **produtos**: Produtos comercializados (camisetas, bonés, etc).
- **cursos**: Cursos oferecidos (vivência militar, sobrevivência urbana, etc).
- **participante_corrida**: Relação entre participantes e corridas.
- **participante_curso**: Relação entre participantes e cursos.
- **compras_produtos**: Registro de compras de produtos pelos participantes.

## Como Utilizar

1. Execute o script [`QUERY DE CRIACAO DO BANCO DE DADOS.sql`](QUERY%20DE%20CRIACAO%20DO%20BANCO%20DE%20DADOS.sql) para criar o banco de dados e popular as tabelas.
2. Utilize o script [`QUERY DE MANIPULACAO DE DADOS.sql`](QUERY%20DE%20MANIPULACAO%20DE%20DADOS.sql) para realizar consultas e análises sobre os dados.

## Exemplos de Consultas

- Seleção de participantes por data de nascimento.
- Agrupamento de produtos por preço.
- Operações aritméticas e funções de agregação.
- Consultas com operadores lógicos, de comparação e negação.
- JOINs entre tabelas para visualização de inscrições e compras.

## Requisitos

- MySQL ou outro SGBD compatível com SQL padrão.

## Autor

Projeto acadêmico para disciplina de Banco de Dados.

---

> Para mais detalhes, consulte os arquivos de modelo conceitual e lógico.
