select * from pessoas;
select * from cursos;
select * from pessoas_cursos;
 
 create table pessoas_cursos (
 id int unsigned auto_increment,
 data date,
 idpessoas int unsigned,
 idcursos int unsigned,
 primary key (id),
 foreign key (idpessoas) references pessoas (id),
 foreign key (idcursos) references cursos (idcurso)
 ) DEFAULT CHARSET=UTF8;
 
 desc pessoas_cursos;
 
insert into pessoas_cursos values (default, '2021-01-27','1','1');

select p.nome, c.nome from pessoas p  join pessoas_cursos pc on p.id = pc.idpessoas join cursos c on pc.idcursos = c.idcurso order by p.nome;

