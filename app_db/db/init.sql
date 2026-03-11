
-- ==========================================================
-- UNIVERSIDADE FEDERAL DO CARIRI - UFCA
-- CURSO DE ANÁLISE E DESENVOLVIMENTO DE SISTEMAS
-- DISCIPLINA - PROJETO INTEGRADO II E DESENVOLVIMENTO EM NUVEM
-- ==========================================================


-- ==========================================================
-- APP Escola360 - Projeto Físico
-- ==========================================================


-- =========================================
-- 1) CRIA O BANCO DE DADOS
-- =========================================
CREATE DATABASE IF NOT EXISTS escola360;

-- Seleciona o banco
USE escola360;


DROP TABLE IF EXISTS usuarios;
-- =========================================
-- 2) TABELA USUÁRIOS
-- =========================================
CREATE TABLE usuarios (
    id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(280) NOT NULL,
    tipo_usuario VARCHAR(20),
    email VARCHAR(100) NOT NULL UNIQUE,
    senha VARCHAR(255) NOT NULL);
    



-- =========================================
-- 3) INSERTS FICTICIONS NA TABELA USUÁRIOS
-- =========================================


INSERT INTO usuarios
  (nome,tipo_usuario, email, senha)
VALUES
  ('Joao da Silva Assuncao','PROFESSOR','jsilvaa@gmail.com','1234'),
  ('Pedro de Sousa Moraes','GESTOR','pedroca@yahoo.com','4253'),
  ('Amanda Nunes da Guia','PROFESSOR','amanditang@bol.com','8523'),
  ('Maria Galvao da Rocha','ALUNO','marygr@aol.com','7412');