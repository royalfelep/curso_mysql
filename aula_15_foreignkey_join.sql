use cadastro;
describe pessoas;
describe cursos;
select * from pessoas;
select * from cursos;

/* 
Constraint Foreign Key (column_name) - Torna a coluna um referente de outra tabela por meio da chave primária dela;
Não é possível apagar elementos interligados (se não houver nenhuma ligação, pode);
Clause Inner Join - Retorna os registros comuns entre as tabelas; usando o comando 'ON', relaciona-se os registros entre as tabelas;
Clause Outer Join - Retorna todos os registros das tabelas; (Left ou Right) Outer Join: Exibe todos os dados do lado especificado e os dados em comum comum da outra tabela;
Keyword AS - Apelida alguma tabela;
*/

alter table pessoas
add curso_preferido int;

alter table pessoas
add foreign key (curso_preferido) -- Adiciona chave estrangeira na coluna curso_preferido;
references cursos(idcurso); -- referencia de onde as chaves virão;

update pessoas set curso_preferido = '6' where id = '1';

select nome, curso_preferido from pessoas;

select nome, ano from cursos;

select pessoas.nome, pessoas.curso_preferido, cursos.nome, cursos.ano from pessoas join cursos on pessoas.curso_preferido = cursos.idcurso order by pessoas.nome;

select p.nome, p.curso_preferido, c.nome, c.ano from pessoas as p join cursos as c on p.curso_preferido = c.idcurso order by c.ano, p.nome;

select p.nome, p.curso_preferido, c.nome, c.ano from pessoas as p left outer join cursos as c on p.curso_preferido = c.idcurso;

select p.nome, p.curso_preferido, c.nome, c.ano from pessoas as p right join cursos as c on p.curso_preferido = c.idcurso;
