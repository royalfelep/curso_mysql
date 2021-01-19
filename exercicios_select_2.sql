use cadastro;
show tables;
select * from pessoas;

/* Exercícios:
1) Uma lista com as profissões das pessoas e suas respectivas quantidades;
2) Quantos homens e quantas mulheres nasceram após 01/jan/2005;
3) Lista com as pessoas que nasceram fora do Brasil, mostrando o país de origem e o total de pessoas nascidas lpa. Mostrar apenas países com mais de 3 pessoas registradas;

*/

-- 1) Retorna as profissões e suas quantidades em ordem ascendente;
select profissao, count(profissao) from pessoas group by profissao order by profissao;

-- 2) Retorna quantos homens e quantas mulheres nasceram após 01/jan/2005;
select sexo, count(sexo) from pessoas where nascimento > '2005-01-01' group by sexo;

-- 3)
