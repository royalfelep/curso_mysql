use cadastro;
show tables;
select * from pessoas;

/* Exercícios:
1) Uma lista com as profissões das pessoas e suas respectivas quantidades;
2) Quantos homens e quantas mulheres nasceram após 01/jan/2005;
3) Lista com as pessoas que nasceram fora do Brasil, mostrando o país de origem e o total de pessoas nascidas lá. Mostrar apenas países com mais de 3 pessoas registradas;
4) Uma lista agrupada pela altura das pessoas, mostrando quantas pessoas pesam mais de 100kg e que estão acima da média de altura de todos os cadastrados;
*/

-- 1) Retorna as profissões e suas quantidades em ordem ascendente;
select profissao, count(profissao) from pessoas group by profissao order by profissao;

-- 2) Retorna quantos homens e quantas mulheres nasceram após 01/jan/2005;
select sexo, count(sexo) from pessoas where nascimento > '2005-01-01' group by sexo;

-- 3) Retorna os países diferentes do brasil que possuem mais de 3 pessoas cadastradas e a quantidade de cadastros;
select nacionalidade, count(nacionalidade) from pessoas where nacionalidade != 'brasil' group by nacionalidade having count(nacionalidade) > 3;

-- 4) Retorna a quantidade de pessoas com a altura maior do que a média e peso maior que 100;
select avg(altura) from pessoas;
select altura, count(peso) from pessoas where peso > 100 group by altura having altura > (select avg(altura) from pessoas);

