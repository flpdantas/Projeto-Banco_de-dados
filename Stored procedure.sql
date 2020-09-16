/* Criar um stored procedure que exiba o ingresso e a forma de pagamento de cada ingresso */

create procedure spExibirFormaPagamento
as
select ingresso [dbo.festa], tipo [dbo.formaPagamento]
from dbo.festa join dbo.formaPagamento
on dbo.formaPagamento.codPagamento = dbo.festa.ingresso
exec spExibirFormaPagamento

