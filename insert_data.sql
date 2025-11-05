-- ====================================================================================================================
-- OBJETIVO: Inserção dos dados de teste. Inclui os registros originais e dados suplementares para completar as tabelas.
-- ====================================================================================================================

-- Inserindo dados na tabela Alunos, totalizando 25 registros
INSERT into alunos (
  id_aluno, nome_aluno, data_nascimento_aluno, genero_aluno, endereco_aluno, telefone_aluno, email_aluno)
 VALUES
 (1, 'João Silva', '2005-03-15', 'Masculino', 'Rua das Flores, 123', '(11) 9876-5432', 'joao@email.com'),
(2, 'Maria Santos', '2006-06-20', 'Feminino', 'Avenida Principal, 456', '(11) 8765-4321', 'maria@email.com'),
(3, 'Pedro Soares', '2004-01-10', 'Masculino', 'Rua Central, 789', '(11) 7654-3210', 'pedro@email.com'),
(4, 'Ana Lima', '2005-04-02', 'Feminino', 'Rua da Escola, 56', '(11) 8765-4321', 'ana@email.com'),
(5, 'Mariana Fernandes', '2005-08-12', 'Feminino', 'Avenida da Paz, 789', '(11) 5678-1234', 'mariana@email.com'),
(6, 'Lucas Costa', '2003-11-25', 'Masculino', 'Rua Principal, 456', '(11) 1234-5678', 'lucas@email.com'),
(7, 'Isabela Santos', '2006-09-10', 'Feminino', 'Rua da Amizade, 789', '(11) 9876-5432', 'isabela@email.com'),
(8, 'Gustavo Pereira', '2004-05-15', 'Masculino', 'Avenida dos Sonhos, 123', '(11) 7654-3210', 'gustavo@email.com'),
(9, 'Carolina Oliveira', '2005-02-20', 'Feminino', 'Rua da Alegria, 456', '(11) 8765-4321', 'carolina@email.com'),
(10, 'Daniel Silva', '2003-10-05', 'Masculino', 'Avenida Central, 789', '(11) 1234-5678', 'daniel@email.com'),
(11, 'Larissa Souza', '2004-12-08', 'Feminino', 'Rua da Felicidade, 123', '(11) 9876-5432', 'larissa@email.com'),
(12, 'Bruno Costa', '2005-07-30', 'Masculino', 'Avenida Principal, 456', '(11) 7654-3210', 'bruno@email.com'),
(13, 'Camila Rodrigues', '2006-03-22', 'Feminino', 'Rua das Estrelas, 789', '(11) 8765-4321', 'camila@email.com'),
(14, 'Rafael Fernandes', '2004-11-18', 'Masculino', 'Avenida dos Sonhos, 123', '(11) 1234-5678', 'rafael@email.com'),
(15, 'Letícia Oliveira', '2005-01-05', 'Feminino', 'Rua da Alegria, 456', '(11) 9876-5432', 'leticia@email.com'),
(16, 'Fernanda Lima', '2004-02-12', 'Feminino', 'Rua da Esperança, 789', '(11) 4567-8901', 'fernanda@email.com'),
(17, 'Vinícius Santos', '2003-07-28', 'Masculino', 'Avenida da Amizade, 123', '(11) 8901-2345', 'vinicius@email.com'),
(18, 'Juliana Pereira', '2006-09-01', 'Feminino', 'Rua das Rosas, 789', '(11) 3456-7890', 'juliana@email.com'),
(19, 'Ricardo Almeida', '2005-04-10', 'Masculino', 'Avenida Central, 100', '(11) 2345-6789', 'ricardo@email.com'),
(20, 'Giovanna Rocha', '2006-08-01', 'Feminino', 'Rua Nova, 50', '(11) 6789-0123', 'giovanna@email.com'),
(21, 'Felipe Menezes', '2004-10-25', 'Masculino', 'Travessa da Lua, 321', '(11) 0123-4567', 'felipe@email.com'),
(22, 'Helena Bastos', '2005-03-03', 'Feminino', 'Rua Sete Quedas, 10', '(11) 5432-1098', 'helena@email.com'),
(23, 'André Martins', '2006-05-18', 'Masculino', 'Avenida das Árvores, 99', '(11) 9012-3456', 'andre@email.com'),
(24, 'Patrícia Gomes', '2003-12-01', 'Feminino', 'Rua dos Pássaros, 876', '(11) 3210-9876', 'patricia@email.com'),
(25, 'Victor Hugo', '2004-06-28', 'Masculino', 'Alameda das Cores, 222', '(11) 7890-1234', 'victor@email.com');

-- ====================================================================================================================

-- Inserindo dados na tabela de Professores, totalizando 7 registros
INSERT INTO professores (
  id_professor, nome_professor, data_nascimento_professor, genero_professor, 
  telefone_professor, email_professor)
 VALUES
(1, 'Ana Oliveira', '1980-05-25', 'Feminino', '(11) 1234-5678', 'ana@email.com'),
(2, 'Carlos Ferreira', '1975-09-12', 'Masculino', '(11) 2345-6789', 'carlos@email.com'),
(3, 'Mariana Santos', '1982-03-15', 'Feminino', '(11) 3456-7890', 'mariana@email.com'),
(4, 'Ricardo Silva', '1978-08-20', 'Masculino', '(11) 7890-1234', 'ricardo@email.com'),
(5, 'Fernanda Lima', '1985-01-30', 'Feminino', '(11) 4567-8901', 'fernanda@email.com'),
(6, 'Eduardo Costa', '1972-11-03', 'Masculino', '(11) 5678-9012', 'eduardo@email.com'),
(7, 'Patrícia Gomes', '1989-06-18', 'Feminino', '(11) 6789-0123', 'patricia@email.com');

-- ====================================================================================================================

-- Inserindo dados na tabela de Disciplinas, totalizando 9 registros
INSERT INTO disciplinas (
  id_disciplina, nome_disciplina, descricao_disciplina, carga_horaria, id_professor)
  VALUES
  (1, 'Matemática', 'Estudo de conceitos matemáticos avançados', 60, 1), -- Atribuído à Prof. Ana Oliveira (ID 1)
(2, 'História', 'História mundial e local', 45, 2), -- Atribuído ao Prof. Carlos Ferreira (ID 2)
(3, 'Física', 'Princípios fundamentais da física', 60, 1),  -- Atribuído à Prof. Ana Oliveira (ID 1)
(4, 'Química', 'Estudo da química e suas aplicações', 45, 3),  -- Atribuído à Prof. Mariana Santos (ID 3)
(5, 'Inglês', 'Aulas de inglês para iniciantes', 45, 4), -- Atribuído ao Prof. Ricardo Silva (ID 4)
(6, 'Artes', 'Exploração da criatividade artística', 30, 5),  -- Atribuído à Prof. Fernanda Lima (ID 5)
(7, 'Português', 'Estudo de gramática, literatura e produção textual.', 60, 6), -- Atribuído ao Prof. Eduardo Costa (ID 6)
(8, 'Geografia', 'Análise do espaço geográfico, paisagens e sociedade.', 45, 7), -- Atribuído à Prof. Patrícia Gomes (ID 7)
(9, 'Educação Física', 'Desenvolvimento motor, esportes e saúde corporal.', 30, 4); -- Atribuído ao Prof. Ricardo Silva (ID 4)

-- ====================================================================================================================

-- Inserindo dados na tabela de Turmas, totalizando 7 registros
INSERT INTO turmas (
  id_turma, nome_turma, ano_letivo, id_professor_orientador)
  VALUES
  (1, 'Turma A', 2023, 1), -- Orientador: Ana Oliveira (ID 1)
(2, 'Turma B', 2023, 2), -- Orientador: Carlos Ferreira (ID 2)
(3, 'Turma C', 2023, 3), -- Orientador: Mariana Santos (ID 3)
(4, 'Turma D', 2023, 4), -- Orientador: Ricardo Silva (ID 4)
(5, 'Turma E', 2023, 5), -- Orientador: Fernanda Lima (ID 5)
(6, 'Turma F', 2023, 6), -- Orientador: Eduardo Costa (ID 6)
(7, 'Turma G', 2023, 7); -- Orientador: Patrícia Gomes (ID 7)

-- ====================================================================================================================

-- Inserindo dados na tabela de Turma_Disciplina, totalizando 35 registros
INSERT INTO turma_disciplinas (
  id_turma, id_disciplina)
  VALUES
-- Turma 1 (Turma A)
(1, 1), -- Matemática
(1, 3), -- Física
(1, 7), -- Português
(1, 8), -- Geografia
(1, 9), -- Educação Física
-- Turma 2 (Turma B)
(2, 1), -- Matemática
(2, 2), -- História
(2, 4), -- Química
(2, 5), -- Inglês
(2, 7), -- Português
-- Turma 3 (Turma C)
(3, 3), -- Física
(3, 4), -- Química
(3, 6), -- Artes
(3, 7), -- Português
(3, 8), -- Geografia
-- Turma 4 (Turma D)
(4, 1), -- Matemática
(4, 2), -- História
(4, 5), -- Inglês
(4, 9), -- Educação Física
(4, 3), -- Física
-- Turma 5 (Turma E)
(5, 7), -- Português
(5, 8), -- Geografia
(5, 4), -- Química
(5, 6), -- Artes
(5, 1), -- Matemática
-- Turma 6 (Turma F)
(6, 2), -- História
(6, 3), -- Física
(6, 5), -- Inglês
(6, 7), -- Português
(6, 9), -- Educação Física
-- Turma 7 (Turma G)
(7, 1), -- Matemática
(7, 4), -- Química
(7, 6), -- Artes
(7, 8), -- Geografia
(7, 9); -- Educação Física

-- ====================================================================================================================

-- Inserindo dados na tabela de Turma_Alunos, totalizando 25 registros
INSERT INTO turma_alunos (
  id_turma, id_aluno)
  VALUES
 -- Turma 1 (Turma A): 4 alunos
(1, 1),  -- João Silva
(1, 6),  -- Lucas Costa
(1, 11), -- Larissa Souza
(1, 19), -- Ricardo Almeida
-- Turma 2 (Turma B): 4 alunos
(2, 2),  -- Maria Santos
(2, 7),  -- Isabela Santos
(2, 12), -- Bruno Costa
(2, 20), -- Giovanna Rocha
-- Turma 3 (Turma C): 4 alunos
(3, 3),  -- Pedro Soares
(3, 8),  -- Gustavo Pereira
(3, 13), -- Camila Rodrigues
(3, 21), -- Felipe Menezes
-- Turma 4 (Turma D): 4 alunos
(4, 4),  -- Ana Lima
(4, 9),  -- Carolina Oliveira
(4, 14), -- Rafael Fernandes
(4, 22), -- Helena Bastos
-- Turma 5 (Turma E): 4 alunos
(5, 5),  -- Mariana Fernandes
(5, 10), -- Daniel Silva
(5, 15), -- Letícia Oliveira
(5, 23), -- André Martins
-- Turma 6 (Turma F): 3 alunos
(6, 16), -- Fernanda Lima
(6, 17), -- Vinícius Santos
(6, 24), -- Patrícia Gomes
-- Turma 7 (Turma G): 2 alunos
(7, 18), -- Juliana Pereira
(7, 25); -- Victor Hugo

-- ====================================================================================================================

-- Inserindo dados na tabela de Notas, totalizando 151 registros
INSERT INTO notas (
  id_nota, id_aluno, id_disciplina, valor_nota, data_avaliacao)
  VALUES
(1, 15, 1, 6.20, '2023-07-07'),
(2, 2, 1, 7.20, '2023-07-07'),
(3, 23, 1, 7.50, '2023-07-07'),
(4, 8, 1, 7.50, '2023-07-07'),
(5, 11, 1, 4.40, '2023-07-07'),
(6, 20, 1, 4.40, '2023-07-07'),
(7, 4, 1, 0.80, '2023-07-07'),
(8, 1, 1, 9.20, '2023-07-07'),
(9, 13, 1, 9.00, '2023-07-07'),
(10, 25, 1, 3.30, '2023-07-07'),
(11, 7, 2, 1.30, '2023-07-09'),
(12, 18, 2, 3.10, '2023-07-09'),
(13, 9, 2, 1.70, '2023-07-09'),
(14, 22, 2, 0.00, '2023-07-09'),
(15, 12, 2, 4.30, '2023-07-09'),
(16, 21, 2, 4.00, '2023-07-09'),
(17, 3, 2, 8.80, '2023-07-09'),
(18, 17, 2, 1.20, '2023-07-09'),
(19, 6, 2, 8.30, '2023-07-09'),
(20, 16, 2, 3.40, '2023-07-09'),
(21, 5, 3, 6.80, '2023-07-27'),
(22, 24, 3, 8.20, '2023-07-27'),
(23, 14, 3, 1.30, '2023-07-27'),
(24, 19, 3, 4.00, '2023-07-27'),
(25, 10, 3, 0.30, '2023-07-27'),
(26, 1, 3, 6.60, '2023-07-27'),
(27, 2, 3, 9.70, '2023-07-27'),
(28, 23, 3, 3.80, '2023-07-27'),
(29, 8, 3, 0.60, '2023-07-27'),
(30, 11, 3, 8.50, '2023-07-27'),
(31, 20, 4, 8.40, '2023-08-08'),
(32, 4, 4, 0.30, '2023-08-08'),
(33, 13, 4, 6.00, '2023-08-08'),
(34, 25, 4, 7.00, '2023-08-08'),
(35, 7, 4, 6.20, '2023-08-08'),
(36, 18, 4, 4.80, '2023-08-08'),
(37, 9, 4, 8.00, '2023-08-08'),
(38, 22, 4, 0.60, '2023-08-08'),
(39, 12, 4, 7.80, '2023-08-08'),
(40, 21, 4, 5.80, '2023-08-08'),
(41, 3, 5, 2.30, '2023-08-15'),
(42, 17, 5, 5.80, '2023-08-15'),
(43, 6, 5, 4.10, '2023-08-15'),
(44, 16, 5, 8.00, '2023-08-15'),
(45, 5, 5, 3.20, '2023-08-15'),
(46, 24, 5, 8.10, '2023-08-15'),
(47, 14, 5, 8.20, '2023-08-15'),
(48, 19, 5, 3.30, '2023-08-15'),
(49, 10, 5, 4.20, '2023-08-15'),
(50, 15, 5, 0.10, '2023-08-15'),
(51, 23, 5, 0.10, '2023-08-15'),
(52, 8, 6, 8.50, '2023-08-20'),
(53, 11, 6, 9.10, '2023-08-20'),
(54, 20, 6, 7.80, '2023-08-20'),
(55, 4, 6, 9.50, '2023-08-20'),
(56, 1, 6, 6.00, '2023-08-20'),
(57, 13, 6, 7.20, '2023-08-20'),
(58, 25, 6, 8.90, '2023-08-20'),
(59, 7, 6, 9.30, '2023-08-20'),
(60, 18, 6, 8.10, '2023-08-20'),
(61, 9, 6, 5.50, '2023-08-20'),
(62, 22, 7, 7.50, '2023-09-01'),
(63, 12, 7, 6.80, '2023-09-01'),
(64, 21, 7, 5.10, '2023-09-01'),
(65, 3, 7, 8.90, '2023-09-01'),
(66, 17, 7, 4.50, '2023-09-01'),
(67, 6, 7, 7.20, '2023-09-01'),
(68, 16, 7, 9.40, '2023-09-01'),
(69, 5, 7, 6.30, '2023-09-01'),
(70, 24, 7, 8.00, '2023-09-01'),
(71, 14, 7, 5.90, '2023-09-01'),
(72, 19, 8, 6.00, '2023-09-10'),
(73, 10, 8, 7.40, '2023-09-10'),
(74, 15, 8, 4.10, '2023-09-10'),
(75, 23, 8, 8.10, '2023-09-10'),
(76, 8, 8, 5.00, '2023-09-10'),
(77, 11, 8, 7.70, '2023-09-10'),
(78, 20, 8, 9.20, '2023-09-10'),
(79, 4, 8, 6.50, '2023-09-10'),
(80, 1, 8, 8.30, '2023-09-10'),
(81, 13, 8, 5.80, '2023-09-10'),
(82, 25, 9, 9.80, '2023-09-15'),
(83, 7, 9, 9.00, '2023-09-15'),
(84, 18, 9, 8.50, '2023-09-15'),
(85, 9, 9, 9.20, '2023-09-15'),
(86, 22, 9, 7.90, '2023-09-15'),
(87, 12, 9, 8.80, '2023-09-15'),
(88, 21, 9, 9.50, '2023-09-15'),
(89, 3, 9, 7.50, '2023-09-15'),
(90, 17, 9, 8.30, '2023-09-15'),
(91, 6, 9, 6.20, '2023-09-15'),
(92, 16, 1, 8.10, '2023-10-01'),
(93, 5, 1, 5.50, '2023-10-01'),
(94, 24, 1, 7.30, '2023-10-01'),
(95, 14, 1, 4.20, '2023-10-01'),
(96, 10, 1, 6.90, '2023-10-01'),
(97, 15, 1, 7.70, '2023-10-01'),
(98, 23, 1, 3.10, '2023-10-01'),
(99, 2, 1, 8.80, '2023-10-01'),
(100, 12, 1, 6.50, '2023-10-01'),
(101, 19, 1, 9.00, '2023-10-01'),
(102, 3, 1, 5.90, '2023-10-01'),
(103, 7, 1, 7.00, '2023-10-01'),
(104, 17, 1, 4.50, '2023-10-01'),
(105, 6, 1, 8.30, '2023-10-01'),
(106, 18, 1, 6.10, '2023-10-01'),
(107, 22, 2, 7.50, '2023-10-05'),
(108, 1, 2, 8.20, '2023-10-05'),
(109, 13, 2, 6.10, '2023-10-05'),
(110, 25, 2, 5.80, '2023-10-05'),
(111, 7, 2, 9.30, '2023-10-05'),
(112, 18, 2, 7.00, '2023-10-05'),
(113, 9, 2, 4.90, '2023-10-05'),
(114, 22, 2, 8.50, '2023-10-05'),
(115, 12, 2, 6.80, '2023-10-05'),
(116, 21, 2, 7.90, '2023-10-05'),
(117, 3, 2, 5.30, '2023-10-05'),
(118, 17, 2, 8.00, '2023-10-05'),
(119, 6, 2, 4.00, '2023-10-05'),
(120, 16, 2, 9.10, '2023-10-05'),
(121, 5, 2, 6.70, '2023-10-05'),
(122, 24, 3, 6.70, '2023-10-15'),
(123, 14, 3, 7.80, '2023-10-15'),
(124, 10, 3, 5.00, '2023-10-15'),
(125, 15, 3, 6.20, '2023-10-15'),
(126, 23, 3, 8.10, '2023-10-15'),
(127, 2, 3, 4.40, '2023-10-15'),
(128, 12, 3, 9.00, '2023-10-15'),
(129, 19, 3, 7.20, '2023-10-15'),
(130, 3, 3, 5.50, '2023-10-15'),
(131, 7, 3, 8.30, '2023-10-15'),
(132, 17, 3, 6.00, '2023-10-15'),
(133, 6, 3, 7.60, '2023-10-15'),
(134, 16, 3, 4.10, '2023-10-15'),
(135, 5, 3, 9.50, '2023-10-15'),
(136, 24, 3, 5.70, '2023-10-15'),
(137, 14, 4, 5.90, '2023-10-20'),
(138, 10, 4, 7.10, '2023-10-20'),
(139, 15, 4, 8.00, '2023-10-20'),
(140, 23, 4, 4.80, '2023-10-20'),
(141, 2, 4, 6.50, '2023-10-20'),
(142, 12, 4, 9.20, '2023-10-20'),
(143, 19, 4, 7.30, '2023-10-20'),
(144, 3, 4, 5.10, '2023-10-20'),
(145, 7, 4, 8.40, '2023-10-20'),
(146, 17, 4, 7.70, '2023-10-20'),
(147, 6, 4, 6.30, '2023-10-20'),
(148, 16, 4, 8.90, '2023-10-20'),
(149, 5, 4, 5.00, '2023-10-20'),
(150, 24, 4, 9.40, '2023-10-20'),
(151, 14, 4, 7.00, '2023-10-20');