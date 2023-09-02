
# Projeto de Banco de Dados para E-commerce

Neste projeto, criei uma modelagem de banco de dados para um cenário de e-commerce, seguindo as diretrizes e refinamentos propostos no bootcamp __Potência Tech Powered By iFood | Ciência de Dados com Python__, dentro do módulo _Modelagem de Dados e Projetos Lógicos na Prática com SQL_.


## Aprendizados

Aqui, pude aplicar meus conhecimentos em modelagem de banco de dados e traduzir os requisitos do cenário em uma estrutura lógica coerente usando o MySQL.


## Diretrizes

+ Não há um mínimo de queries a serem realizadas;
+ Os tópicos supracitados devem estar presentes nas queries;
+ Elaborar perguntas que podem ser respondidas pelas consultas;
+ As cláusulas podem estar presentes em mais de uma query;
## Objetivo

_Refinar o modelo apresentado acrescentando os seguintes pontos:_

+ Cliente PJ e PF – Uma conta pode ser PJ ou PF, mas não pode ter as duas informações;
+ Pagamento – Pode ter cadastrado mais de uma forma de pagamento;
+ Entrega – Possui status e código de rastreio;

__Algumas das perguntas que podem ser feitas para embasar as queries SQL:__

+ Quantos pedidos foram feitos por cada cliente?
+ Algum vendedor também é fornecedor?
+ Relação de produtos fornecedores e estoques;
+ Relação de nomes dos fornecedores e nomes dos produtos;
## Estrutura do Banco de Dados

### Contexto do Modelo Lógico baseado no Conceitual construído

#### Projeto de Banco de Dados de E-commerce

**Contexto**: Levantamento de requisitos;

**Projeto Conceitual**: Modelo Entidade Relacionamento;

**Projeto Lógico**: Modelo Relacional.

#### Tabelas de Entidades
O banco de dados foi modelado considerando as seguintes tabelas principais:

+ **cliente**: Armazena informações sobre os clientes, que podem ser Pessoa Física (PF) ou Pessoa Jurídica (PJ);
- **produto**: Contém detalhes sobre os produtos disponíveis no e-commerce;
+ **empresa_frete**: Registra informações sobre empresas de entrega responsáveis pela entrega dos pedidos;
+ **entrega**: Armazena informações sobre os pedidos de entrega, incluindo o status e o código de rastreio;
+ **carteira_digital**: Mantém registros das carteiras digitais dos clientes;
+ **pagamento_cartao**: Registra informações sobre os pagamentos com cartão de crédito;
+ **conta**: Armazena informações sobre as contas dos clientes, relacionando-as com as contas PF/PJ;
+ **formas_pagamento**: Registra as formas de pagamento dos clientes, incluindo carteira digital e cartão de crédito;
+ **produto_pedido**: Relaciona produtos aos pedidos, incluindo a quantidade e o status;
+ **produto_vendedor**: Relaciona produtos aos vendedores, com informações sobre a quantidade;
+ **produto_fornecedor**: Estabelece a relação entre produtos e fornecedores;
+ **produto_em_estoque**: Mantém informações sobre os produtos disponíveis em estoque;
+ **estoque**: Contém informações sobre os locais de estoque, seus responsáveis e detalhes de contato;
+ **fornecedor**: Armazena informações sobre os fornecedores dos produtos;
+ **vendedor**: Registra informações sobre os vendedores;
+ **pedido**: Contém informações sobre os pedidos dos clientes, incluindo o status e a descrição.

#### Modelando o E-COMMERCE
**Produto**:
+ Os produtos são vendidos por uma única plataforma online. Contudo, estes podem ter vendedores distintos (terceiros);
+ Cada produto possui um fornecedor;
+ Um ou mais produtos podem compor o pedido.

**Cliente**:
+ O cliente pode se cadastrar no site com seu CPF ou CNPJ;
+ O endereço do cliente irá determinar o valor do frete;
+ Um cliente pode comprar mais de um pedido. Este tem um período de carência para devolução do produto.

**Pedido**:

+ O pedidos são criados por clientes e possuem informações de compra, endereço e status da entrega;
+ Um produto ou mais compõem o pedido;
+ O pedido pode ser cancelado.

#### Refinando e Apurando
+ **Cliente PJ|PF**: Uma conta pode ser PJ ou PF, mas não pode ter as duas informações;
+ **Pagamento**: Pode ser cadastrada mais de uma forma de pagamento;
+ **Entrega**: possui status e código de rastreio .
## Queries SQL

Aqui estão algumas queries SQL que podem ser utilizadas para obter informações do banco de dados:

- Quantos pedidos foram feitos por cada cliente?
~~~
SELECT c.idCliente, c.Nome_Completo, COUNT(*) AS Numero_de_pedidos
FROM cliente AS c
INNER JOIN pedido AS p ON c.idCliente = p.IdPedidoCliente
GROUP BY idCliente;
~~~

- Algum vendedor também é fornecedor?
~~~
SELECT v.Razao_social, v.Nome_fantasia, v.CPF_CNPJ, f.Razao_social, f.Nome_fantasia, f.CNPJ
FROM vendedor v, fornecedor f
WHERE v.CPF_CNPJ = f.CNPJ;
~~~
- Relação de produtos fornecedores e estoques:
~~~
SELECT p.idProduto, p.Nome, f.Razao_social, f.CNPJ, e.Local_estoque, pe.Quantidade_estoque
FROM produto p
INNER JOIN produto_fornecedor pf ON p.idProduto = pf.idFoProduto
INNER JOIN fornecedor f ON pf.idFoFornecedor = f.idFornecedor
INNER JOIN produto_em_estoque pe ON p.idProduto = pe.idEsProduto
INNER JOIN estoque e ON pe.idEsEstoque = e.idEstoque;
~~~
- Relação de nomes dos fornecedores e nomes dos produtos:
~~~
SELECT f.Razao_social, p.Nome
FROM fornecedor f
INNER JOIN produto_fornecedor pf ON f.idFornecedor = pf.idFoFornecedor
INNER JOIN produto p ON pf.idFoProduto = p.idProduto;
~~~
- Qual o valor total das vendas com esses clientes?
~~~
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
~~~
Essas são apenas algumas das queries possíveis que podem ser executadas neste banco de dados para obter informações valiosas para um e-commerce.

---

#### 💻 _Criado por Rafael Oliveira, 2023._