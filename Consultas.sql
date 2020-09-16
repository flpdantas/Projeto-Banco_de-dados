/* 1- Exibir o cpf e o nome de usuario relacionado */
select dbo.pessoaFisica.cpf, dbo.usuario.nome
from dbo.pessoaFisica
inner join dbo.usuario
on dbo.usuario.cpf = dbo.pessoaFisica.cpf
order by dbo.pessoaFisica.cpf

/* 2 - Exibir o cnpj de pessoa juridica e o seu cpf ordenado pelo cnpj*/
select dbo.usuario.nome, dbo.pessoaJuridica.cnpj, dbo.pessoaFisica.cpf
from dbo.pessoaJuridica
inner join dbo.pessoaFisica
on dbo.pessoaFisica.cpf = dbo.pessoaJuridica.cpf
inner join dbo.usuario
on dbo.pessoaFisica.cpf = dbo.usuario.cpf
order by dbo.usuario.nome

/* 3 - Exibir o contato, cnpj, inscEstadual e nome de pessoa juridica */
select dbo.pessoaJuridica.contato, dbo.pessoaJuridica.cnpj, dbo.pessoaJuridica.inscEstadual, dbo.usuario.nome
from dbo.pessoaJuridica
inner join dbo.usuario
on dbo.usuario.cpf = pessoaJuridica.cpf
order by dbo.usuario.nome

/* 4 - Exibir o nome de cada usuario e o seu tipo de pagamento  */
select dbo.usuario.nome, dbo.formaPagamento.tipo
from dbo.usuario
inner join dbo.formaPagamento
on dbo.formaPagamento.codPagamento = dbo.usuario.tipoPagamento
order by dbo.usuario.nome

/* 5 - Exibir a quantidade de pessoa por forma de pagamento */
select dbo.formaPagamento.tipo as Tipo_de_pagamento, count (dbo.usuario.nome) as Quantidade_de_usuario
from dbo.usuario
inner join dbo.formaPagamento
on dbo.formaPagamento.codPagamento = dbo.usuario.tipoPagamento
group by tipo
order by count (dbo.usuario.nome)

/* 6 - Exibir o nome do usuario e os ingressos relacionadas a esse usuario */
select dbo.usuario.nome, dbo.ingresso.codIngresso
from dbo.usuario
inner join dbo.ingresso
on dbo.ingresso.usuario = usuario.loginUsuario
order by dbo.usuario.nome

/* 7 - Exibir o ingresso, o local e o valor do ingresso */
select dbo.ingresso.codIngresso, dbo.festa.local , dbo.ingresso.preco
from dbo.festa
inner join dbo.ingresso
on dbo.ingresso.codIngresso = dbo.festa.ingresso
group by codIngresso, local, preco

/* 8 - Exibir codIngresso, nome do usuario, local, data e preco */
select dbo.ingresso.codIngresso, dbo.usuario.nome, dbo.festa.local, dbo.festa.data, dbo.ingresso.preco
from dbo.ingresso
inner join dbo.usuario
on dbo.usuario.loginUsuario = dbo.ingresso.usuario
inner join dbo.festa
on dbo.festa.codFesta = dbo.ingresso.festa
order by codIngresso

/* 9 - Exibir o nome de usuario e o seu genero */
select dbo.usuario.nome, dbo.pessoaFisica.genero
from dbo.usuario
inner join dbo.pessoaFisica
on dbo.pessoaFisica.cpf = dbo.usuario.cpf
order by dbo.usuario.nome

/* 10- Exibir os ingressos so de mulheres e seu nome */
select dbo.ingresso.codIngresso, dbo.usuario.nome, dbo.pessoaFisica.genero 
from dbo.ingresso
inner join dbo.usuario
on dbo.usuario.loginUsuario = dbo.ingresso.usuario
inner join dbo.pessoaFisica 
on dbo.pessoaFisica. cpf = dbo.usuario.cpf
where dbo.pessoaFisica.genero = 'F'
order by dbo.usuario.nome

