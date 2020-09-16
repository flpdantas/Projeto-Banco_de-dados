create table dbo.localAluguel 
(  
    codLocalDeAluguel int primary key not null, /* PK */
	capacidade varchar (5) not null,
	ambiente varchar (15) not null,
	precoAluguel money not null,
	endereco varchar (100) not null
);  

create table dbo.usuario
(
	loginUsuario varchar(15) primary key not null, /* PK */
	endereco varchar (80) not null,
	nome varchar (30) not null,
	email varchar (30) not null,
	telefone varchar (11) not null,
	cpf varchar (11) not null, /* FK pessoaFisica cpf*/
	tipoPagamento char (1) not null /* FK dbo.formaPagamento tipo */
);

/* 2 Chaves estrangeiras da tabela usuario */
alter table dbo.usuario
	add constraint fk_cpfUsuario foreign key (cpf) references dbo.pessoaFisica (cpf)
;
alter table dbo.usuario
	add constraint fk_tipoPagamentoUsuario foreign key (tipoPagamento) references dbo.formaPagamento (codPagamento)
;

create table dbo.pessoaFisica
(
	cpf varchar (11) primary key not null, /* PK */
	nascimento datetime not null,
	rg varchar (9) not null,
	genero char (1) not null,
);

create table dbo.pessoaJuridica
(
	cnpj varchar (14) primary key not null, /* PK */
	cpf varchar (11) not null, /* FK dbo.pessoaFisica cpf */
	contato varchar (20) not null,
	inscEstadual varchar not null
);
/* 1 Chave estrangeira da tabela pessoaJuridica */
alter table dbo.pessoaJuridica
	add constraint fk_cpfPessoaJuridica foreign key (cpf) references dbo.pessoaFisica (cpf)
;

create table dbo.ingresso
(
	codIngresso int primary key not null, /* PK */
	preco decimal (7,2) not null,
	formaPagamento char (1) not null, /* FK dbo.formaPagamento tipo */
	usuario varchar (15) not null, /* FK dbo.usuario loginUsuario */
	festa int not null /* FK dbo.festa codFesta */
);
/* 3 Chaves estrangeiras da tabela ingresso */
alter table dbo.ingresso
	add constraint fk_formaPagamentoIngresso foreign key (formaPagamento) references dbo.formaPagamento (codPagamento)
;
alter table dbo.ingresso
	add constraint fk_usuarioIngresso foreign key (usuario) references dbo.usuario (loginUsuario)
;
alter table dbo.ingresso
	add constraint fk_festaIngresso foreign key (festa) references dbo.festa (codFesta)
;

create table dbo.formaPagamento
(
	codPagamento char (1) primary key not null, /* PK */
	tipo varchar (10) not null
);

create table dbo.festa
(
	codFesta int primary key not null, /* PK */
	localFesta varchar (80) not null,
	ingresso int not null, /* FK dbo.ingresso codIngresso */
	data date not null,
	ambiente varchar (80) null,
	capacidade int not null
);
/* 1 Chave estrangeira da tabela festa */
alter table dbo.festa
	add constraint fk_ingressoFesta foreign key (ingresso) references dbo.ingresso (codIngresso)
;