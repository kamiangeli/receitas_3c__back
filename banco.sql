CREATE TABLE if not exists usuario (
	id serial primary key,
	nome varchar(255) not null,
	ativo BOOLEAN default true,
	senha varchar(255) not null,
	criado_em timestamp default current_timestamp
);

create table if not exists receita (
	id serial primary key,
	nome varchar(255) not null,
	ingredientes text not null,
	instrucoes text not null,
	tempo_preparo_minutos integer not null,
	usuario_id integer not null references usuario(id) on delete cascade
);