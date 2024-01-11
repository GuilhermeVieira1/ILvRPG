create database ILvRPG;
use ILvRPG;

create table usuarios
(
	id int unsigned not null auto_increment primary key,
    usuario varchar(20) not null,
    email varchar(200) not null,
    senha varchar(100) not null,
    tipoDeConta varchar(8) not null,
    index idx_usuario(usuario),
    index idx_tipoDeConta(tipoDeConta)
);

select * from usuarios;

create table mapas
(
	id int unsigned not null auto_increment primary key,
    usuario_mapa varchar(20) not null,
    nomeMapa varchar(20) not null,
    descricaoMapa varchar(1000) not null,
    index idx_nomeMapa(nomeMapa),
    constraint fk_usuario_mapa foreign key(usuario_mapa) references usuarios(usuario)
);

select * from mapas;

create table fichas
(
	id int unsigned not null auto_increment primary key,
    usuario_ficha varchar(20) not null,
    nomeFicha varchar(20) not null,
    textoFicha varchar(2000) not null,
    index idx_nomeFicha(nomeFicha),
    constraint fk_usuario_ficha foreign key(usuario_ficha) references usuarios(usuario)
);

select * from fichas;

create table classes
(
	id int unsigned not null auto_increment primary key,
    usuario_classe varchar(20) not null,
    nomeClasse varchar(20) not null,
    descricaoClasse varchar(1000) not null,
    index idx_nomeClasse(nomeClasse),
    constraint fk_usuario_classe foreign key(usuario_classe) references usuarios(usuario)
);

select * from classes;

create table personagens
(
	id int unsigned not null auto_increment primary key,
    usuario_personagem varchar(20) not null,
    nomePersonagem varchar(20) not null,
    personagem_classe varchar(20) not null,
    descricaoPersonagem varchar(1000) not null,
    historiaPersonagem varchar(1000) not null,
    index idx_nomePersonagem(nomePersonagem),
    constraint fk_usuario_personagem foreign key(usuario_personagem) references usuarios(usuario),
    constraint fk_personagem_classe foreign key(personagem_classe) references classes(nomeClasse)
);

select * from personagens;

create table itens
(
	id int unsigned not null auto_increment primary key,
    usuario_item varchar(20) not null,
    nomeItem varchar(20) not null,
    descricaoItem varchar(1000) not null,
    index idx_nomeItem(nomeItem),
    constraint fk_usuario_item foreign key(usuario_item) references usuarios(usuario)
);

select * from itens;

create table campanhas
(
	id int unsigned not null auto_increment primary key,
    usuario_campanha varchar(20) not null,
    nomeCampanha varchar(20) not null,
    descricaoCampanha varchar(10000) not null,
    index idx_nomeCampanha(nomeCampanha),
    constraint fk_usuario_campanha foreign key(usuario_campanha) references usuarios(usuario)
);

select * from campanhas;