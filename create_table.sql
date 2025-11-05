-- ========================================================
-- OBJETIVO: Criar as tabelas do banco de dados relacional
-- ========================================================

-- Tabela de alunos: armazena informações dos estudantes da escola
CREATE TABLE alunos (
  id_aluno INT PRIMARY KEY,
  nome_aluno VARCHAR(250),
  data_nascimento_aluno DATE,
  genero_aluno VARCHAR(50),
  endereco_aluno VARCHAR(250),
  telefone_aluno VARCHAR(50),
  email_aluno VARCHAR(250)
);

-- Tabela de professores: contém dados pessoais e de contato dos docentes
CREATE TABLE professores (
    id_professor INT PRIMARY KEY,
    nome_professor VARCHAR(250),
    data_nascimento_professor DATE,
    genero_professor VARCHAR(50),
    telefone_professor VARCHAR(50),
    email_professor VARCHAR(250)
);

-- Tabela de disciplinas: relaciona as matérias e o professor responsável
create table disciplinas (
  id_disciplina INT PRIMARY KEY,
  nome_disciplina VARCHAR(250),
  descricao_disciplina TEXT,
  carga_horaria INT,
  id_professor INT,
  FOREIGN KEY (id_professor) REFERENCES professores(id_professor)
);

-- Tabela de turmas: registra turmas e seus professores orientadores
create TABLE turmas (
  id_turma INT PRIMARY KEY,
  nome_turma VARCHAR(250),
  ano_letivo INT,
  id_professor_orientador INT,
  FOREIGN KEY (id_professor_orientador) REFERENCES professores(id_professor)
);

-- Tabela intermediária turma_disciplinas: define quais disciplinas são ministradas em cada turma
CREATE TABLE turma_disciplinas (
    id_turma INT,
    id_disciplina INT,
    FOREIGN KEY (id_turma) REFERENCES turmas(id_turma),
    FOREIGN KEY (id_disciplina) REFERENCES disciplinas(id_disciplina),
    PRIMARY KEY (id_turma, id_disciplina)
);

-- Tabela intermediária turma_alunos: associa alunos às turmas em que estão matriculados
CREATE TABLE turma_alunos (
    id_turma INT,
    id_aluno INT,
    FOREIGN KEY (id_turma) REFERENCES turmas(id_turma),
    FOREIGN KEY (id_aluno) REFERENCES alunos(id_aluno),
    PRIMARY KEY (id_turma, id_aluno)
);

-- Tabela de notas: armazena notas e avaliações dos alunos em cada disciplina
CREATE TABLE notas (
  id_nota INT PRIMARY KEY,
  id_aluno INT,
  id_disciplina INT,
  valor_nota DECIMAL(4,2),
  data_avaliacao DATE,
  FOREIGN KEY (id_aluno) REFERENCES alunos(id_aluno),
  FOREIGN key (id_disciplina) REFERENCES disciplinas(id_disciplina)
);