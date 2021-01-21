use cadastro;
show tables;
select * from pessoas;

/* Exercícios:
1) Uma lista com o nome de todas as mulheres
2) Uma lista com os dados de todos aqueles que nasceram entre 1/Jan/2000 e 31/Dez/2015.
3) Uma lista com o nome de todos os homens que trabalham como programadores.
4) Uma lista com os dados de todas as mulheres que nasceram no Brasil e que têm seu nome iniciando com a letra J.
5) Uma lista com o nome e nacionalidade de todos os homens que têm Silva no nome, não nasceram no Brasil e pesam menos de 100 Kg.
6) Qual é a maior altura entre os homens que moram no Brasil?
7) Qual é a média de peso de todas as pessaos cadastradas?
8) Qual é o menor peso entre as mulheres que nasceram fora do Brasil e entre 01/Jan/1990 e 31/Dez/2000?
9) Quantas mulheres tem mais de 1.90cm de altura?
*/

-- 1) retorna pessoas do sexo feminino;
select * from pessoas where sexo = 'F' order by nome;

-- 2) retorna pessoas nascidas entre 01/jan/2000 e 31/dez/2015;
select * from pessoas where nascimento between '2000-01-1' and '2015-12-31' order by nascimento;

-- 3) retorna apenas programadores;
select distinct profissao from pessoas;
select * from pessoas where profissao = 'programador' order by nome;

-- 4) retorna pessoas de nacionalidade brasileira e que o nome inicia com o caracter 'J';
select * from pessoas where nacionalidade = 'brasil' and nome like 'j%';

-- 5) retorna nome e nacionalidade de pessoas não-brasileiras, sobrenome 'silva' e peso menor que 100kg;
select nome, nacionalidade from pessoas where nacionalidade != 'brasil' and nome like '%_Silva' and peso < 100;

-- 6) retorna a maior altura de homens brasileiros cadastrados;
select max(altura) from pessoas where nacionalidade = 'brasil' and sexo = 'M';

-- 7) retorna a média do peso das pessoas cadastradas;
select avg(peso) from pessoas;

-- 8) retorna o menor peso de mulheres não-brasileiras nascidas entre 01/jan/1990 e 31/dez/2000;
select min(peso) from pessoas where sexo = 'F' and nacionalidade != 'brasil' and nascimento between '1990-01-01' and '2000-12-31';

-- 9) retorna a quantidade de mulheres que possuem altura maior que 1.90m;
select count(*) from pessoas where sexo = 'F' and altura > '1.90';