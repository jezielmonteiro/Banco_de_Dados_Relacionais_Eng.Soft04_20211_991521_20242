/*03. Construa scripts em SQL para as consultas solicitadas abaixo:*/

/*(A) Crie uma consulta com todas as disciplinas oferecidas no ano de 2021, constando os nomes das disciplinas, nomes e cidades dos professores responsáveis e nomes dos cursos das disciplinas.*/

select d.nomeDisc, d.nomeCurso, p.nomeProf, p.cidadeProf, pd.ano
from disciplina d, professor p, profdisciplina pd
where (d.codDisc = pd.codDisc) and (p.numProf = pd.numProf) and (pd.ano = "2021")

/*(B) Crie uma consulta que mostre todos os nomes dos professores do curso de Engenharia de Software, no ano de 2021, e os nomes das disciplinas pelas quais são responsáveis.*/

select p.nomeProf, d.nomeDisc
from professor p, disciplina d, profdisciplina pd
where (d.codDisc = pd.codDisc) and (p.numProf = pd.numProf) and (pd.ano = "2021") and (d.nomeCurso = "Engenharia de Software")

/*(C) Crie uma consulta com todos os nomes de alunos matriculados no ano de 2021, os nomes das disciplinas em que estão matriculados, a cidade onde moram e os nomes dos cursos das disciplinas.*/

select a.nomeAluno,  a.cidadeAluno, d.nomeDisc, d.nomeCurso
from aluno a, disciplina d, matricula m
where (a.numAluno = m.numAluno) and (d.codDisc = m.codDisc) and (m.ano = "2021")

/*(D) Crie uma consulta que mostre todos os alunos de Vassouras que cursam alguma disciplina de Programação de Banco de dados no ano de 2021.*/

select a.nomeAluno
from aluno a, disciplina d, matricula m
where (a.numAluno = m.numAluno) and (d.codDisc = m.codDisc) and (a.cidadeAluno = "Vassouras") and (d.nomeCurso = "Programação de Banco de Dados") and (m.ano = "2021")

/*(E) Crie uma consulta que mostre todos os professores que não moram em Vassouras e que ministram alguma disciplina no curso de Engenharia de Software.*/

select p.nomeProf
from professor p, profdisciplina pd, disciplina d
where (p.numProf = pd.numProf) and (pd.codDisc = d.codDisc) and (p.cidadeProf != "Vassouras") and (d.nomeCurso = "Engenharia de Software")

/*(F) Crie uma consulta que mostre o nome dos professores e a média de aulas que ministram.*/

select p.nome, avg(d.qtdAulas)
from professor p, disciplina d, profdisciplina pd
where (p.numProf = pd.numProf) and (pd.codDisc = d.codDisc)

/*(G) Crie uma consulta que mostre o nome dos professores o total de aulas que ministram por curso.*/

select p.nomeProf, sum(d.qtdAulas)
from professor p, disciplina d, profdisciplina pd
where (p.numProf = pd.numProf) and (pd.codDisc = d.codDisc)

/*(H) Crie uma consulta que mostre o nome do aluno, nome do curso, código e nome das disciplinas matriculadas de todos os alunos no ano de 2021.*/

select a.nomeAluno, d.nomeCurso, d.nomeDisc, m.codDisc
from aluno a, disciplina d, matricula m
where (a.numAluno = m.numAluno) and (m.codDisc = d.codDisc) and (m.ano = "2021")
