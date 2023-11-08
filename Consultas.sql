
use ecommerce;


select pd.idPedido, pd.Status
from Pedido pd 
	inner join Produto pr on cp.idProduto=pr.idProduto;

select sum(e.quantidade) as 'Quantidade', p.Produto
from Produto_has_estoque e 
	inner join Produto p on p.idProduto=e.idProduto
group by p.Nome 
order by p.Nome;
    
select count(p.idPedido) as 'Quantidade'
from Pedido p 
group by p.idPedido;