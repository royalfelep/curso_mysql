use cadastro;
show tables;
select * from cursos;

-- Keyword 'Group by' - Agrupa os registros da coluna especificada;
-- Keyword 'Having' - Mostra apenas grupos especificados;

-- agrupa e conta quantos registros cada grupo possui;
select totaulas, count(nome) from cursos
group by totaulas
order by totaulas;

-- agrupa e retorna quantos grupos possuem acima de 2 registros;
select carga, count(carga) from cursos
group by carga
having count(carga) > 2;

-- agrupa e retorna quantos grupos de cursos criados após 2015 possuem carga acima da média das cargas;
(select avg(carga) from cursos);
select carga, count(carga) from cursos where ano > '2015' group by carga having carga > (select avg(carga) from cursos);