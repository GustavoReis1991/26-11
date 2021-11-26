create database db_generation_game_online;
use db_generation_game_online;
create table tb_personagem (
id int (4) auto_increment,
nome varchar (30) not null,
ataque integer (5) not null,
defesa integer (5) not null,
magia integer (5) not null,
primary key (id)
);
drop table tb_personagem;
create table tb_classe (
id int (4) auto_increment,
nome varchar (30) not null,
categoria varchar (30) not null,
primary key (id)
);
insert into tb_classe (nome, categoria) values ("Luz","Anjo");
insert into tb_classe (nome, categoria) values ("Escuridão","Demonio");
insert into tb_classe (nome, categoria) values ("Terra","Guerreiro");
use db_generation_game_online;
create table tb_personagem (
id int (4) auto_increment,
nome varchar (30) not null,
ataque integer (5) not null,
defesa integer (5) not null,
magia integer (5) not null,
tb_classe_id int not null,
primary key (id),
foreign key (tb_classe_id) references tb_classe (id)
);
insert into tb_personagem (nome, ataque, defesa, magia, tb_classe_id) values ("Miguel", 2800, 3200, 4500,1);
insert into tb_personagem (nome, ataque, defesa, magia, tb_classe_id) values ("Belzebu", 3300, 2200, 3500,2);
insert into tb_personagem (nome, ataque, defesa, magia, tb_classe_id) values ("Hercules", 3000, 2700, 3000,3);
select * from tb_personagem;
select nome, ataque, defesa,magia from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.tb_classe_id;