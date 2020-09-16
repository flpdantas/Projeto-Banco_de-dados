/* TRIGGERS */

create table dbo.usuarioBackup(
	codUsuaioBackup int not null identity(1, 1) primary key,
	loginUsuario varchar(15) not null,
	endereco varchar (80) not null,
	nome varchar (30) not null,
	email varchar (30) not null,
	telefone varchar (11) not null,
	cpf varchar (11) not null,
	tipoPagamento char (1) not null,
	dataInclusao datetime
);

create trigger tr_BackupUsuario
	on dbo.usuario
	for update
	as
		insert into dbo.usuarioBackup (loginUsuario, endereco, nome, email, telefone, cpf, tipoPagamento, dataInclusao)
		select loginUsuario, endereco, nome, email, telefone, cpf, tipoPagamento, getdate() from deleted;






create table dbo.enviarEmail (
	idEmail int identity (1,1) primary key,
	destinatario varchar (200) not null,
	assunto varchar (200) not null,
	corpo varchar (max) not null
);


create trigger tr_enviarEmailUsuario
	on dbo.usuario
	for insert
	as 
	begin
		declare
			@loginUsuario varchar (15),
			@email varchar (30);
		select 
			@loginUsuario = loginUsuario,
			@email = email
		from
			inserted
		insert into dbo.enviarEmail
		(
			destinatario,
			assunto,
			corpo
		)
		values
		(
			'' + @email,
			'Novo usuario cadastrado',
			'Foi cadastrado o usuario de login: ' + @loginUsuario
		)
	end




