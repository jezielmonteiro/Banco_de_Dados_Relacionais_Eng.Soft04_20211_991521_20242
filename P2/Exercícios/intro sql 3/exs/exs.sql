/*Exercícios*/

/*(1) Quais são os programadores que programam em PHP (Nome e empresa em que trabalham).*/

select p.nome as Programadores, e.nome as Empresa
from programadores p
join empresas e on (p.id_empresa = e.id_empresa)
join programadores_linguagens pl on (p.id_programador = pl.id_programador) 
join linguagens l on (l.id_linguagens = pl.id_linguagens)
where (l.nome = "PHP")

/*(2) Exiba uma lista com todos os programadores e suas empresas independente se eles estão relacionados a uma empresa ou não.*/

select p.nome, e.nome
from programadores p
left join empresas e on (p.id_empresa = e.id_empresa)

/*(3) Exiba a lista de todas as empresas e seus programadores, independente se a empresa tem ou não programadores.*/
 
 select e.nome, p.nome
 from empresas e
 left join programadores p on (p.id_empresa = e.id_empresa)
 
/*(4) Liste o nome e o ID de todos os programadores da empresa ABC e as linguagens em que eles tem habilidades.*/

select p.nome, p.id_programador, l.nome
from programador p
join empresas e on (p.id_empresa = e.id_empresa)
join programador_linguagens pl on (p.id_programador = pl.id_programador)
join linguagens l on (l.id_linguagens = pl.id_linguagens)
where (e.nome = "ABC")
 