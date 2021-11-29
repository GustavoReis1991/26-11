create database pizzaria_legal;
use pizzaria_legal;
create table categoria (
id bigint (10) not null auto_increment,
tamanho varchar (30) not null,
borda varchar (30) not null,
primary key (id)
);
insert into categoria (tamanho,borda) values
("Broto", "Borda Recheada"), ("Broto", "Borda Comum"),
("Grande", "Borda Recheada"), ("Grande", "Borda Comum"),
("Gigante", "Borda Recheada"), ("Gigante", "Borda Comum");
select * from categoria;
create table pizza (
id bigint (10) not null auto_increment,
sabor varchar (100) ,
refrigerante varchar (100) ,
observação varchar (255) ,
preço decimal (4.2),
id_cat bigint (10),
primary key (id),
foreign key (id_cat) references categoria(id)
);
insert into pizza (sabor, refrigerante, observação, preço,id_cat) values
("Mussarela", "Guarana"," ",30.5,3),
("Mussarela", "Não"," ",35.0,5),
("Mussarela", "Coca"," ",22.60,2),
("Mussarela", "Guarana"," Sem azeitona",40.8,4),
("Calabresa", "Guarana"," ",23.8,1),
("Calabresa", "Guarana"," ",50.6,6),
("Calabresa", "Não"," ",28.0,3),
("Calabresa", "Não"," ",17.0,2),
("Calabresa", "Guarana","Sem cebola",33.0,3);
select * from pizza;
select * from pizza where preço > 45.0;
alter table pizza add preço decimal (4,2);
update pizza set preço = 30.5 where id = 1;
update pizza set preço = 35.0 where id = 2;
update pizza set preço = 22.6 where id = 3;
update pizza set preço = 40.8 where id = 4;
update pizza set preço = 23.8 where id = 5;
update pizza set preço = 50.6 where id = 6;
update pizza set preço = 28.0 where id = 7;
update pizza set preço = 17.0 where id = 8;
update pizza set preço = 33.0 where id = 9;
select * from pizza;
select * from pizza where preço > 45.0;
select * from pizza where preço >29.0 and preço <60;
select * from pizza where sabor like "c%";
select * from pizza inner join categoria on pizza.id_cat = categoria.id;
select * from pizza inner join categoria on pizza.id_cat = categoria.id where categoria.tamanho = "Broto";