-- ================================================================================================
-- OBJETIVO: Este script contém consultas que simulam cenários em uma administração escolar,
-- focando no acompanhamento do desempenho dos alunos, na gestão de professores e disciplinas,
-- e na obtenção de estatísticas acadêmicas.
-- ================================================================================================

-- ================================================================================================
-- QUERY 1
-- SITUAÇÃO: Após importar os dados iniciais no banco, a equipe de TI precisa verificar
-- 				se todas as informações foram carregadas corretamente em cada tabela.
-- OBJETIVO: Retornar os registros de todas as tabelas para validação de integridade.
-- ================================================================================================
SELECT * from alunos;
SELECT * from professores;
SELECT * from disciplinas;
SELECT * from turmas;
SELECT * from turma_disciplinas;
SELECT * from turma_alunos;
SELECT * from notas;

-- ================================================================================================
-- QUERY 2
-- SITUAÇÃO: A secretaria escolar precisa listar todos os alunos matriculados, em ordem alfabética,
-- 				para atualizar os registros acadêmicos.
-- OBJETIVO: Exibir todos os alunos cadastrados, ordenados pelo nome.
-- ================================================================================================
SELECT * FROM alunos ORDER BY nome_aluno;

-- ================================================================================================
-- QUERY 3
-- SITUAÇÃO: A coordenação pedagógica solicitou um relatório com as disciplinas que possuem maior 
-- 				carga horária, de 40 horas para cima, para planejamento de horários e turmas.
-- OBJETIVO: Retornar todas as disciplinas com carga horária superior a 40 horas, mostrando a mais 
-- 				alta no topo.
-- ================================================================================================
SELECT nome_disciplina, carga_horaria FROM disciplinas 
WHERE carga_horaria > 40
ORDER BY carga_horaria DESC; -- Orderna do maior para o menor

-- ================================================================================================
-- QUERY 4
-- SITUAÇÃO: Um professor deseja identificar quais avaliações tiveram notas intermediárias,
-- 				ou seja, entre 6 e 8, para analisar o desempenho médio dos alunos.
-- OBJETIVO: Exibir o valor da nota e a disciplina, filtrando notas entre 6 e 8 (exclusivo),
-- 				e ordenando os resultados pelo nome da disciplina e pelo valor da nota.
-- ================================================================================================
SELECT n.valor_nota, d.nome_disciplina 
FROM notas n
JOIN disciplinas d ON n.id_disciplina = d.id_disciplina
WHERE valor_nota > 6 AND valor_nota < 8
oRDER BY nome_disciplina, valor_nota;

-- ================================================================================================
-- QUERY 5
-- SITUAÇÃO: A coordenação quer calcular a média geral das notas dos alunos especificamente na 
-- 				disciplina de História, para avaliar o desempenho da turma.
-- OBJETIVO: Retornar a média das notas registradas para a disciplina de História.
-- ================================================================================================
SELECT ROUND(AVG(valor_nota),2) as media_historia 
from notas n
JOIN disciplinas d ON n.id_disciplina = d.id_disciplina
WHERE nome_disciplina = 'História';

-- ================================================================================================
-- QUERY 6
-- SITUAÇÃO: A secretaria está atualizando o cadastro dos alunos e precisa localizar rapidamente os
-- 				estudantes cujo nome começa com a letra 'A'.
-- OBJETIVO: Retornar todos os alunos com nomes iniciados pela letra 'A'.
-- ================================================================================================
SELECT * from alunos
WHERE nome_aluno like 'A%';

-- ================================================================================================
-- QUERY 7
-- SITUAÇÃO: A professora de Artes precisa identificar os alunos que fazem aniversário em fevereiro,
-- 				para preparar um quadro de 'aniversariantes do mês'.
-- OBJETIVO: Exibir todos os alunos que nasceram no mês de fevereiro.
-- ================================================================================================
SELECT * FROM alunos
WHERE data_nascimento_aluno LIKE '%-02-%';

-- ================================================================================================
-- QUERY 8
-- SITUAÇÃO: A escola deseja saber a idade atual dos alunos para atualizar relatórios e adequar as 
-- 				turmas por faixa etária.
-- OBJETIVO: Calcular e exibir a idade de cada aluno com base em sua data de nascimento.
-- ================================================================================================
SELECT nome_aluno,
      data_nascimento_aluno,
      (strftime('%Y', CURRENT_DATE) - strftime('%Y', data_nascimento_aluno)) - -- Pega o ano atual e subtrai com o ano de nascimento
      (strftime('%m-%d', CURRENT_DATE) < strftime('%m-%d', data_nascimento_aluno)) AS idade -- Verifica se o aluno ainda não fez aniversário neste ano.
      -- Se ainda não fez, subtrai 1 → assim corrige a idade exata.
FROM alunos;

-- ================================================================================================
-- QUERY 9
-- SITUAÇÃO: A coordenação pedagógica solicitou um relatório com a média final de cada aluno, 
--				indicando se está aprovado ou reprovado. O critério de aprovação é: média final 
--				igual ou superior a 6.00.
-- OBJETIVO: Calcular a média das notas de cada aluno, exibindo-a com duas casas decimais.
--           Com base no critério (>= 6.00), exibir sua situação final (Aprovado ou Reprovado).
-- ================================================================================================
SELECT n.id_aluno, a.nome_aluno, ROUND((AVG(n.valor_nota)),2) as media_final,
case 
	when ROUND((AVG(n.valor_nota)),2) >= 6 then 'Aprovado'
	ELSE 'Reprovado'
end as situacao
from notas n
JOIN alunos a on n.id_aluno = a.id_aluno
GROUP by n.id_aluno;

-- ================================================================================================
-- QUERY 10
-- SITUAÇÃO: A diretoria precisa de uma lista atualizada para saber qual professor é responsável
--				por orientar cada turma.
-- OBJETIVO: Exibir o nome de cada professor e o nome da turma que ele orienta.
-- ================================================================================================
SELECT pr.nome_professor, t.nome_turma
FROM professores pr
INNER JOIN turmas t on t.id_professor_orientador = pr.id_professor;

-- ================================================================================================
-- QUERY 11
-- SITUAÇÃO: A Coordenação de Matemática deseja reconhecer e premiar o aluno que obteve o melhor 
--				desempenho na disciplina. É necessário identificar o aluno e sua nota máxima.
-- OBJETIVO: Retornar o nome do aluno e o valor da maior nota registrada na disciplina de Matemática.
-- ================================================================================================
SELECT a.nome_aluno, n.valor_nota
from alunos a
INNER JOIN notas n on n.id_aluno = a.id_aluno
INNER JOIN disciplinas d on d.id_disciplina = n.id_disciplina
WHERE d.nome_disciplina = 'Matemática'
ORDER BY n.valor_nota DESC
LIMIT 1;

-- ================================================================================================
-- QUERY 12
-- SITUAÇÃO: A direção escolar está planejando a alocação de recursos (como cadeiras e materiais)
--				e precisa saber o número exato de alunos em cada turma.
-- OBJETIVO: Retornar o nome de cada turma e o número total de alunos matriculados nela.
-- ================================================================================================
SELECT nome_turma, COUNT(ta.id_turma) AS total_alunos
FROM turmas t
INNER JOIN turma_alunos ta on ta.id_turma = t.id_turma
GROUP BY nome_turma;

-- ================================================================================================
-- QUERY 13
-- SITUAÇÃO: O setor de apoio ao estudante precisa ter uma visão completa para aconselhamento. É 
--				necessário saber, para cada aluno, exatamente quais disciplinas ele está cursando 
--				no ano letivo.
-- OBJETIVO: Exibir o nome de cada aluno e todas as disciplinas nas quais ele está matriculado.
-- ================================================================================================
SELECT a.nome_aluno, d.nome_disciplina
from alunos a
INNER JOIN turma_alunos ta on ta.id_aluno = a.id_aluno
INNER JOIN turma_disciplinas td on td.id_turma = ta.id_turma
INNER JOIN disciplinas d on d.id_disciplina = td.id_disciplina;

-- ================================================================================================
-- QUERY 14
-- SITUAÇÃO: A direção da escola precisa consultar, de forma rápida e prática, as informações de 
--				desempenho dos alunos, como notas e disciplinas cursadas.
-- OBJETIVO: Criar uma View persistente no banco de dados que pre-combina o nome do aluno, a
--				disciplina cursada e o valor da nota correspondente.
-- ================================================================================================
CREATE VIEW ViewAlunoDisciplinaNota as 
SELECT a.nome_aluno, d.nome_disciplina, n.valor_nota
from alunos a
INNER JOIN notas n on n.id_aluno = a.id_aluno
INNER JOIN disciplinas d on d.id_disciplina = n.id_disciplina
ORDER by a.nome_aluno

-- Teste da View
SELECT * from ViewAlunoDisciplinaNota;

-- ================================================================================================
-- QUERY 15
-- SITUAÇÃO: A equipe de secretaria está preparando a lista anual de materiais didáticos e precisa
-- 				da listagem completa dos nomes de todas as disciplinas ativas no currículo escolar.
-- OBJETIVO: Retornar o nome de todas as disciplinas que estão em vigor.
-- ================================================================================================
SELECT nome_disciplina from disciplinas;

-- ================================================================================================
-- QUERY 16
-- SITUAÇÃO: O Coordenador de Matemática deseja identificar rapidamente apenas os alunos que foram 
--				aprovados na disciplina (média >= 6.00) para planejar o acompanhamento e recuperação 
--				dos demais estudantes.
-- OBJETIVO: Calcular a média das notas de cada aluno na disciplina de Matemática e exibir somente 
--           	os alunos que foram aprovados, junto com sua média.
-- ================================================================================================
SELECT a.nome_aluno as Nome_Aluno, 
	AVG(valor_nota) as Media, 
    case when AVG(valor_nota) >= 6.00 then 'Aprovado' ELSE 'Reprovado' END as Situacao
from alunos a
INNER join notas n on n.id_aluno = a.id_aluno
INNER join disciplinas d on d.id_disciplina = n.id_disciplina
WHERE nome_disciplina = 'Matemática'
group By a.id_aluno
HAVING Situacao = 'Aprovado';

-- ================================================================================================
-- QUERY 17
-- SITUAÇÃO: A Coordenação Pedagógica precisa avaliar o currículo de cada turma. É necessário gerar
--				um relatório que mostre o número exato de disciplinas que cada turma está cursando
--				para verificar a carga horária total e a distribuição de matérias.
-- OBJETIVO: Exibir o nome de cada turma e a contagem total de disciplinas associadas a ela.
-- ================================================================================================
SELECT t.nome_turma as Turma, COUNT(td.id_disciplina) as Total_Disciplinas
FROM turma_disciplinas td
INNER join turmas t on t.id_turma = td.id_turma
GROUP by td.id_turma;

-- ================================================================================================
-- QUERY 18
-- SITUAÇÃO: A diretoria da escola e os órgãos de fiscalização acadêmica solicitam anualmente uma 
-- 				análise estatística da performance dos alunos. É necessário calcular o índice de 
-- 				aprovação geral da escola para relatórios de desempenho e planejamento estratégico.
-- OBJETIVO: Mostrar o total de alunos matriculados, o número total de alunos aprovados (média 6.0), 
--          	e a porcentagem que representa o total de alunos aprovados em relação ao total de
--				matriculados.
-- ================================================================================================
WITH media_aprovados as (
  -- ALUNOS APROVADOS
  SELECT a.nome_aluno as Nome_Aluno, ROUND(AVG(valor_nota),2) as media_final,
      case when AVG(valor_nota) >= 6.00 then 'Aprovado' eLSE 'Reprovado' end as Situacao
  from notas n
  INNER JOIN alunos a on n.id_aluno = a.id_aluno
  GROUP by n.id_aluno
  HAVING Situacao = 'Aprovado'
), total_alunos_notas as (
  -- TOTAL ALUNOS E NOTAS
  SELECT
  (SELECT COUNT(*) from alunos) AS total_alunos, 
  (SELECT COUNt(*) from notas) as total_notas
)
SELECT ta.total_alunos as Total_Alunos, 
    (SELECT count(*) from media_aprovados) as Total_Aprovados,
    ((SELECT count(*) from media_aprovados) * 100.0 / ta.total_alunos) || '%' as Porcentagem_Aprovados
from total_alunos_notas ta;

-- ================================================================================================
-- QUERY 19
-- SITUAÇÃO: A Coordenação Pedagógica está revisando o desempenho dos professores e a eficácia dos 
--				métodos de ensino. É necessário um relatório comparativo para identificar as  
--				disciplinas com maior e menor índice de aprovação.
-- OBJETIVO: Calcular e exibir, para cada disciplina, o total de alunos que a cursaram, o número de 
--				alunos aprovados (nota >= 6.0), e o percentual de aprovação correspondente.
-- ================================================================================================
SELECT d.nome_disciplina AS Disciplina, COUNT(*) AS Total_Alunos,
    SUM(CASE WHEN n.valor_nota >= 6.0 THEN 1 ELSE 0 END) AS Alunos_Aprovados,
    ROUND(SUM(CASE WHEN n.valor_nota >= 6.0 THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) || '%' AS Porcentagem_Aprovados
FROM alunos a 
INNER JOIN notas n ON n.id_aluno = a.id_aluno
INNER JOIN disciplinas d ON d.id_disciplina = n.id_disciplina
GROUP BY Disciplina;
