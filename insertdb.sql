
use ecommerce;
show tables;


desc Cliente;


insert into Cliente (nome, identificacao, Email)
	values('Maria','08812301202','maria.l@hotmail.com'),
		  ('José','12365483691','jose_marcos01@gmail.com'),
          ('Teresa Maria','98076524302','teresa-rodrigues@outlook.com'),
          ('Mario Paulo','44532188745','mpaulosantos@hotmail.com'),
          ('Alzira','90876543203','alzira_mattos@gmail.com');


desc Produto;
insert into Produto (Produto, Descricao, Categoria, Valor)
	values ('Fone de ouvido','Fone de ouvido. Bluetooth. Preto. JBL. Wave 200 TWS','Eletrônico',149.99),
		   ('Sofá retrátil','Sofá retrátil. Suede. Cinza. Linoforte. Benetton','Móveis', 1249.90),
           ('Jogo de prato','Jogo de prato com 6 peças. Porcelana. Branco. Duralex. Astral','Cozinha', 100.00);
           

desc Fornecedor;
insert into Fornecedor(Razao_social, Nome_fantasia, CNPJ, Telefone, Email)
	values ('Veste Bem ltda','Veste Bem','28528494000109','6139870011','contato@vestebem.com.br'),
		   ('Informática e Eletrônica ltda','Info Eletro','39857923000108','1134765643','vendas@infoeletro.com.br'),
           ('Casa Tudo ltda','','97597214000129','1199760011','contato@casatudo.com.br');


desc Estoque;
insert into Estoque(Estoque_id,localizacao)
	values (2,'São Paulo'),
			(5,'Curitiba'),
            (8,'Recife');


desc Terceiro_Vendedor;
insert into Vendedor(ID, Razao_social, Email)
	values (1,'Julian Vendas ME','julianvendas@outlook.com'),
		   (2,'Paula Lima ME', 'eletro_paula@gmail.com');
           

desc Terceiro_Vendedor_Produtos;
insert into Transportadora(idTerceiro, IdProduto, Quantidade)
	values (4, 5, 123),
			(9, 1, 321);
            


desc Produto_Pedido;          
insert into Pedido(Produto, Pedido, Quantidade)
	values('JBL', 3, 4),
		  ('CONTROLE', 4, 3),
          ('PILHA', 6, 5);


 
desc Produto_Has_Estoque;
insert into Estoque_disponivel(idProduto, idEstoque, quantidade)
	values(1, 1, 15),
		  (2, 1, 3),
          (3, 2, 5);
    

desc Fornecedor;
insert into Fornecimento(idFornecedor, Razao_social, CNPJ)
	values(1,'Fast Delivery', 25798410351),
		  (2, 'Comprou Chegou',28746321587),
          (3, 'Pagou levou',49630487125);



desc Produto_vendedor;
insert into Produto_vendedor(idVendedor, idProduto, quantidade)
	values(1,2,5),
		  (1,3,9),
          (2,1,7);
          

          

