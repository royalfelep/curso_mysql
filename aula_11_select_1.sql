-- Aula 11 - Operadores

-- Keyword 'Order by (asc and desc)' - ordena os elementos especificados;
-- Keyword 'Between and' - retorna elementos localizados apenas dentro do intervalo especificado;
-- Keyword 'In' - retorna elementos apenas nos valores especificados;

use database cursos;
show tables;
select * from cursos;

select * from cursos
order by nome; -- asc e desc;

select nome, carga, ano from cursos -- executa colunas na ordem especificada;
order by ano; -- organiza por ano

select ano, nome, carga from cursos -- executa colunas na ordem especificada;
order by ano, nome; -- organiza por ano e por nome; na sequencia especificada;

select nome, carga from cursos -- executa colunas na ordem especificada;
where ano = '2016' -- seleciona apenas onde especificado;
order by ano;

select nome, carga from cursos -- executa colunas na ordem especificada;
where ano <= '2016' -- seleciona apenas onde especificado; maior ou igual a 2016;
order by ano;

select nome, ano from cursos -- executa colunas na ordem especificada;
where ano between 2014 and 2016 -- seleciona apenas onde especificado; entre 2014 e 2016;
order by ano desc, nome; -- possível multiplos comandos com critérios;

select nome, descricao, ano from cursos -- executa colunas na ordem especificada;
where ano in (2014,2016) -- seleciona apenas onde especificado; apenas em 2014 e 2016;
order by ano desc, nome; -- possível multiplos comandos com critérios;

select nome, carga, totaulas from cursos -- executa colunas na ordem especificada;
where carga > 20 and totaulas < 25  -- seleciona apenas onde especificado; carga maior que 20 e totaulas menor que 25;
order by carga desc;

select nome, carga, totaulas from cursos -- executa colunas na ordem especificada;
where carga > 20 or totaulas < 25  -- seleciona apenas onde especificado; carga maior que 20 ou totaulas menor que 25;
order by carga desc;