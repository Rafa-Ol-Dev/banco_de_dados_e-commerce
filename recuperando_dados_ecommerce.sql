USE ecommerce;

-- Quantos pedidos foram feitos por cliente?
SELECT c.idCliente, c.Nome_Completo, COUNT(*) AS Numero_de_pedidos
FROM cliente AS c
INNER JOIN pedido AS p ON c.idCliente = p.IdPedidoCliente
GROUP BY idCliente;

-- Algum vendedor também é fornecedor?
SELECT v.Razao_social, v.Nome_fantasia, v.CPF_CNPJ, f.Razao_social, f.Nome_fantasia, f.CNPJ
FROM vendedor v, fornecedor f
WHERE v.CPF_CNPJ = f.CNPJ;

-- Relação de produtos e fornecedor:
SELECT idProduto, Nome, f.Razao_social, CNPJ
FROM produto
INNER JOIN produto_fornecedor ON idProduto = idFoProduto
INNER JOIN fornecedor f ON idFornecedor = idFoFornecedor;

-- Relação de produto e estoque:
SELECT idProduto, Nome, e.Responsavel, e.Local_estoque, pe.Quantidade_estoque
FROM produto
INNER JOIN produto_em_estoque pe ON idProduto = idEsProduto
INNER JOIN estoque e ON idEstoque = idEsEstoque
ORDER BY e.Local_estoque, Nome;

-- Relação de nomes dos fornecedores e nomes dos produtos:
SELECT f.Razao_social, p.Nome
FROM fornecedor f
INNER JOIN produto_fornecedor pf ON f.idFornecedor = pf.idFoFornecedor
INNER JOIN produto p ON pf.idFoProduto = p.idProduto;

-- Relação de nomes dos fornecedores, nomes dos produtos e preços:
SELECT f.Razao_social, p.Nome, p.Preco_unitario
FROM fornecedor f
INNER JOIN produto_fornecedor pf ON idFornecedor = idFoFornecedor
INNER JOIN produto p ON idProduto = idFoProduto
ORDER BY f.Razao_social, p.Nome;

-- Qual o valor total das vendas com esses clientes? 
SELECT c.Nome_Completo, po.Nome AS Nome_do_Produto, pp.Quantidade_produto, po.Preco_unitario,
       ROUND(po.Preco_unitario * pp.Quantidade_produto, 2) AS valor_da_compra, pe.Status_do_pedido,
       cd.Numero_carteira, cd.Valor_em_conta
FROM cliente c
INNER JOIN pedido pe ON c.idCliente = pe.idPedidoCliente
INNER JOIN produto_pedido pp ON pe.idPedido = pp.idPePedido
INNER JOIN produto po ON pp.idPeProduto = po.idProduto
INNER JOIN formas_pagamento fp ON pe.idPedidoFormas_pagamento = fp.idFormas_pagamento
INNER JOIN carteira_digital cd ON fp.idFormas_pagamento_carteira_digital = cd.idCarteira_digital
ORDER BY pe.Status_do_pedido, c.Nome_Completo, valor_da_compra;

-- Quantos clientes cadastrados?
SELECT COUNT(*) FROM cliente;

-- Quantos produtos cadastrados com preço maior que 500 reais?
SELECT COUNT(*) FROM produto WHERE Preco_unitario > 500;

-- Mostrar o nome e preço dos produtos com preço maior que 1000 reais
SELECT Nome, Categoria, Preco_unitario
FROM produto
HAVING Preco_unitario > 1000
ORDER BY Nome, Categoria;

-- Relação do Nome do Cliente, CPF com o numero da carteira digital
SELECT Nome_completo, CPF, Numero_carteira
FROM cliente c
INNER JOIN formas_pagamento ON idCliente = idFormas_pagamento_cliente
INNER JOIN carteira_digital ON idCarteira_digital = idFormas_pagamento_carteira_digital
ORDER BY Nome_completo;

-- Relação do Nome do Cliente, CPF com o numero da carteira digital de contas com saldo maior que 500 reais;
SELECT Nome_completo, CPF, Numero_carteira, Valor_em_conta
FROM cliente c
INNER JOIN formas_pagamento ON idCliente = idFormas_pagamento_cliente
INNER JOIN carteira_digital ON idCarteira_digital = idFormas_pagamento_carteira_digital
HAVING Valor_em_conta > 500
ORDER BY Nome_completo;

-- Relação do Nome do Produto com a quantidade em estoque, retornando somente os que tem menos que 100 produtos em estoque para que seja feita reposição;
SELECT p.Nome, pe.Quantidade_estoque
FROM produto p
INNER JOIN produto_em_estoque pe ON idProduto = idEsProduto
HAVING pe.Quantidade_estoque < 100
ORDER BY pe.Quantidade_estoque;

-- Qual o valor em reais de cada produto no estoque e o valor do estoque?
SELECT p.Nome, pe.Quantidade_estoque, p.Preco_unitario, ROUND(p.Preco_unitario * Quantidade_estoque, 2) AS Valor_estoque
FROM produto p
INNER JOIN produto_em_estoque pe ON idProduto = idEsProduto
ORDER BY pe.Quantidade_estoque;

-- Qual o valor total em reais do estoque?
SELECT SUM(ROUND(p.Preco_unitario * Quantidade_estoque, 2)) AS Valor_estoque
FROM produto p
INNER JOIN produto_em_estoque pe ON idProduto = idEsProduto;

-- Qual a empresa responsavel pela entrega em cada pedido, nome do cliente e endereço de entrega?
SELECT ef.Razao_social, ef.Responsavel, c.Nome_completo, p.Status_do_pedido, 
       CONCAT(Logradouro, ': ', Endereco, ', ', Numero_Residencial, ' - ', Bairro) AS Endereço,
       CONCAT(Cidade, '/', Estado) AS Cidade_Estado, CEP
FROM empresa_frete ef
INNER JOIN entrega e ON idEmpresa_frete = idEntregaEmpresa_frete
INNER JOIN pedido p ON idPedidoEntrega = idEntrega
INNER JOIN cliente c ON idCliente = idPedidoCliente
ORDER BY ef.Razao_social, Nome_completo;