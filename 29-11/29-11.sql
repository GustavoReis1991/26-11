create database jogo;
use jogo;
create table categoria(
id bigint not null auto_increment,
classe varchar (20) not null,
atributo varchar(20) not null,
primary key(id)
);
insert into categoria (classe, atributo) values 
("Guerreiro", "Terra"), ("Guerreiro", "Fogo"),
("Guerreiro", "Água"), ("Guerrerio", "Escuridão"),
("Guerreiro", "Luz"), ("Monstro", "Terra"),
("Monstro", "Fogo"),("Monstro", "Água"), 
("Monstro", "Escuridão"), ("Guerreiro", "Luz");
select * from categoria;
create table personagem(
id bigint not null auto_increment,
nome varchar(20) not null,
ataque int(10) not null,
defesa int(10) not null,
nascimento date not null,
primary key (id)
);
insert into personagem (nome, ataque, defesa, nascimento) values
("Aquiles", 2200, 1700, "1987-7-21"),
("Sansão", 2400, 1900, "1978-3-21"),
("Hercules",2700, 1500, "1990-3-11"),
("Samurai", 2300, 2100, "1986-12-09"),
("Monje",1800, 3000, "1972-2-17"),
("Barbaro",2600, 1300, "1982-1-19"),
("Mago", 2100, 2300, "1950-3-14"),
("Vampiro", 2800, 2300, "1700-10-30"),
("Gabriel", 3300, 2700, "0-0-0"),
("Lucifer", 3200, 2800, "0-0-0"),
("Poseidon", 2700, 2400, "12-2-11"),
("Golem", 2100, 3500, "1912-2-13"),
("Lava", 3000, 1800, "1880-11-28");
select * from personagem;
alter table personagem add (
fk_categoria bigint,
foreign key (fk_categoria) references categoria(id)
);
select * from personagem;
update personagem set nome = "Sansao" where id =2 ;
select * from personagem;
update personagem set fk_categoria = 1 where id =2;
select * from personagem;
select * from personagem inner join categoria on personagem.fk_categoria = categoria.id;
select personagem.nome, personagem.ataque, personagem.defesa, categoria.classe, categoria.atributo 
from personagem inner join categoria on personagem.fk_categoria = categoria.id;
create table skin (
id bigint not null auto_increment,
espada varchar (20) not null,
escudo varchar (20) not null,
primary key (id)
);
update categoria set classe = "Monstro" where id = 10;
insert into skin (espada, escudo) values 
("Katana", "escudo de fogo"),
("Facão", "escudo de pedra"),
("Machado", "escudo de aço");
select * from skin;
select * from categoria inner join personagem on 
personagem.fk_categoria = categoria.id 
inner join skin on skin.id = categoria.id;
select * from personagem where ataque >2300;
select * from personagem where defesa < 2000 and
defesa > 1500;
select * from personagem where nome like "L%";
