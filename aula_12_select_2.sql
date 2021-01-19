-- Aula 12 - Select e Wildcards;

-- Wildcard '%': Substitui zero ou mais caracteres (posição importa);
-- Wildcard '_': Exige UM caracter;
-- Operador 'like' ou 'not like': Parecido, semelhante;
-- Keyword 'Distinct' -- retorna apenas valores distintos da coluna especificada;
-- Keyword 'Max' e 'Min' -- retorna valores máximos e mínimos da coluna especificada;
-- Keyword 'Sum' -- retorna o somatório de todos os valores da coluna especificada;
-- Keyword ' Avg' -- retorna a média do somatório de todos os valores da coluna especificada;
-- Statement 'Distinct' -- agrupa e retorna os diferentes valores especificados;

-- Palavras que começam com a letra 'P';
select * from cursos
where nome like 'P%'; -- operador 'like' e caracter coringa '%' 

-- Palavras que terminam com a letra 'A';
select * from cursos
where nome like '%A';

-- Palavras que contenham a letra 'A';
select * from cursos
where nome like '%A%'; -- procura a letra 'A' em qualquer posição

-- Palavras que começam com 'PH', e 'P' no meio;
select * from cursos
where nome like 'ph%p%';

-- Palavras que começam com 'PH', 'P' no meio e um caracter obrigatório no final;
select * from cursos
where nome like 'ph%p_';

-- Retorna apenas a nacionalidade das pessoas
select distinct nacionalidade from pessoas; -- retorna apenas valores distintos da coluna especificada;

-- retorna a quantidade de elementos na tabela cursos;
select count(*) from cursos;

-- retorna a quantidade de elementos da tabela cursos em que totaulas for maior que 18 e menor que 21 e apresentam o caracter 'h' no meio da string;
select count(*) from cursos where totaulas > 18 and totaulas < 21 and nome like '%h%';

-- retorna o maior valor da coluna 'carga' na tabela cursos;
select max(carga) from cursos;

-- retorna o maior valor da coluna 'totaulas' do 2016 na tabela cursos;
select max(totaulas) from cursos where ano = '2016';

-- retorna o menor valor da coluna 'totaulas' e o nome desse elemento do ano de 2016 na tabela cursos; -- em caso de dois elementos iguais, mostra o primeiro;
select nome, min(totaulas) from cursos where ano = '2016';

-- retorna o somatório de todos os valores da coluna 'totaulas' do ano de 2016 na tabela cursos;
select sum(totaulas) from cursos where ano = '2016';

-- retorna a média do somatório de todos os valores da coluna 'totaulas' na tabela cursos;
select avg(totaulas) from cursos;
