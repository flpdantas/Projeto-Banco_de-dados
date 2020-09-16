insert into dbo.formaPagamento (codPagamento, tipo)
	values 
		(1, 'Credito'), 
		(2, 'Debito'),
		(3, 'Boleto'),
		(4, 'Cheque'),
		(5, 'Bitcoin');

insert into dbo.localAluguel (codLocalDeAluguel, capacidade, ambiente, precoAluguel, endereco)
	values
		(1, 20000, 'stadio', '10000', 'Campina Grande'),
		(2, 500, 'sitio', '1500', 'Lagoa Seca'),
		(3, 100, 'chacara', '200', 'Campina Grande'),
		(4, 90000, 'parque do povo', '20000', 'Campina Grande'),
		(5, 5000, 'stadio', '5000', 'Joao Pessoa'),
		(7, 20000, 'casa de show', '10000', 'Campina Grande'),
		(8, 15000, 'stadio', '10000', 'Sao Paulo'),
		(9, 100, 'pub', '500', 'Joao Pessoa'),
		(10, 50, 'casa', '300', 'Cabedelo'),
		(6, 150, 'casa', '1000', 'Joao Pessoa');

update  dbo.localAluguel
set ambiente = 'estadio'
where codLocalDeAluguel = 1;

update  dbo.localAluguel
set ambiente = 'estadio'
where codLocalDeAluguel = 5;

update  dbo.localAluguel
set ambiente = 'estadio'
where codLocalDeAluguel = 8;


insert into dbo.pessoaFisica (cpf, nascimento, rg, genero)
	values
		(123, '17/08/1993', 123, 'M'),
		(456, '24/09/1990', 123, 'F'), 
		(789, '13/10/1967', 123, 'F'),
		(147, '16/01/1994', 123, 'F'),
		(258, '16/02/1994', 123, 'F'),
		(369, '30/05/1993', 123, 'F'),
		(159, '05/08/1993', 123, 'M'), 
		(357, '24/08/1991', 123, 'M'),
		(486, '01/08/1980', 123, 'M'),
		(153, '25/11/1993', 123, 'M');

insert into dbo.pessoaJuridica (cnpj, cpf, contato, inscEstadual)
	values
		(111, 123, 9999-9999, 1),
		(222, 147, 9988-3696, 2),
		(333, 153, 8799-5899, 3);

/* Alterar valores da coluna contato da tabela dbo.pessoaJuridica */
update  dbo.pessoaJuridica 
set contato= 99999999
where cnpj = 111;

update  dbo.pessoaJuridica 
set contato= 99883696
where cnpj = 222;

update  dbo.pessoaJuridica 
set contato= 87995899
where cnpj = 333;
		

insert into dbo.usuario (loginUsuario, endereco, nome, email, telefone, cpf, tipoPagamento)
		values
			('ciceroma', 'Campina Grande', 'Cicero Alcantara', 'cicero@gmail.com', 99999999, 123, 2),
			('amanda123', 'Joao Pessoa', 'Amanda Silva', 'amanda@gmail.com', 96390066, 456, 1),
			('samia123', 'Campina Grande', 'Samia Arruda', 'samia@gmail.com', 33216559, 789, 2),
			('magaly123', 'Cabedelo', 'Magaly ALcantara', 'magaly@gmail.com', 99883696, 147, 4),
			('janaina123', 'Campina Grande', 'Janaina Alcantara', 'janaina@gmail.com', 99885577, 258, 2),
			('carla123', 'Santa Rita', 'CArla Almeida', 'carla@gmail.com', 96390066, 369, 1),
			('marcos123', 'Campina Grande', 'Marcos Ribeiro', 'marcos@gmail.com', 96390066, 159, 2),
			('antonio123', 'Joao Pessoa', 'Antonio Lisboa', 'antonio@gmail.com', 88552365, 357, 1),
			('luis123', 'Campina Grande', 'Luis Targino', 'luis@gmail.com', 97556841, 486, 3),
			('fabio123', 'Joao Pessoa', 'Fabio Nicacio', 'fabio@gmail.com', 87995899, 153, 1);

insert into dbo.festa (codFesta, local, ingresso, data, ambiente, capacidade)
	values
		(1, 'Campina Grande', 11, '12/08/2020', 'chacara', 100),
		(2, 'Lagoa Seca', 22, '02/05/2020', 'sitio', 500),
		(3, 'Campina Grande', 33, '03/06/2020', 'parque do povo', 90000),
		(4, 'Campina Grande', 44, '02/08/2020', 'estadio', 20000),
		(5, 'Joao Pessoa', 55, '12/08/2020', 'estadio', 5000),
		(6, 'Campina Grande', 66, '05/10/2020', 'casa de show', 20000),
		(7, 'Sao Paulo', 77, '12/08/2020', 'estadio', 15000),
		(8, 'Joao Pessoa', 88, '26/03/2020', 'pub', 100),
		(9, 'Cabedelo', 99, '24/12/2020', 'casa', 50),
		(10, 'Joao Pessoa', 1010, '31/12/2020', 'casa', 150); 

insert into dbo.ingresso (codIngresso, preco, formaPagamento, usuario, festa)
	values
		(11, 50, 2, 'ciceroma', 5), 
		(22, 50, 1, 'amanda123', 2),
		(33, 150, 1, 'fabio123', 7),
		(44, 20, 1, 'samia123', 9),
		(55, 20, 4, 'magaly123', 9),
		(66, 50, 2, 'janaina123', 1),
		(77, 30, 1, 'carla123', 8),
		(88, 120, 2, 'marcos123', 6),
		(99, 50, 1, 'antonio123', 10),
		(1010, 120, 1, 'luis123', 6);
