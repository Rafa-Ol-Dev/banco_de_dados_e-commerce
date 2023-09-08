-- Criação do BD para cenário de E-commerce
CREATE DATABASE ecommerce;
USE ecommerce;

-- Criação das tabelas

-- Tabela de Cliente
CREATE TABLE cliente (
    idCliente INT AUTO_INCREMENT PRIMARY KEY,
    Nome_Completo VARCHAR(45),
    CPF CHAR(11) NOT NULL,
    CONSTRAINT unique_cpf_cliente UNIQUE (CPF),
    Data_de_nascimento DATE NOT NULL,
    Email VARCHAR(45) NOT NULL,
    Telefone_1 CHAR(11) NOT NULL,
    Telefone_2 CHAR(11),
    Logradouro CHAR(3) NOT NULL,
    Endereco VARCHAR(45) NOT NULL,
    Numero_Residencial INT,
    Bairro VARCHAR(45) NOT NULL,
    Complemento VARCHAR(45),
    Cidade VARCHAR(45) NOT NULL,
    Estado CHAR(2) NOT NULL,
    CEP CHAR(8)
);

-- Tabela de Produto
CREATE TABLE produto (
    idProduto INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(120),
    Categoria ENUM('Audio e Video','Automotivo','Bebês','Beleza e Perfumaria',
                  'Brinquedos','Cama, Mesa e Banho','Casa e Contrução',
                  'Celular e Smartphone','Decoração','Eletrodomésticos',
                  'Esporte e Lazer','Ferramentas','Games','Informática',
                  'Livros','Moda','Móveis','Papelaria','Pet Shop','Relógios',
                  'TVs') NOT NULL,
    Descricao VARCHAR(200) NOT NULL,
    Preco_unitario FLOAT NOT NULL,
    Possui_garantia_estendida ENUM('Sim','Não'),
    Avaliacao FLOAT DEFAULT 0,
    Dimensoes VARCHAR(25)
);

-- Tabela de Empresa de Frete
CREATE TABLE empresa_frete (
    idEmpresa_frete INT AUTO_INCREMENT PRIMARY KEY,
    Razao_social VARCHAR(45) NOT NULL,
    Nome_fantasia VARCHAR(45) NOT NULL,
    CNPJ CHAR(14) NOT NULL,
    CONSTRAINT unique_cnpj_empresa UNIQUE (CNPJ),
    Responsavel VARCHAR(45) NOT NULL,
    Email_1 VARCHAR(45) NOT NULL,
    Email_2 VARCHAR(45),
    Telefone_1 CHAR(11) NOT NULL,
    Telefone_2 CHAR(11)
);

-- Tabela de Entrega
CREATE TABLE entrega (
    idEntrega INT AUTO_INCREMENT PRIMARY KEY,
    idEntregaEmpresa_frete INT,
    Codigo_rastreio VARCHAR(45) NOT NULL,
    Status_entrega ENUM('Separado pelo fornecedor','Saiu do centro de distribuição', 
                       'A caminho da sua cidade','Na rota de entrega', 'Entregue') NOT NULL,
    Prazo_entrega DATE NOT NULL,
    Valor_frete FLOAT NOT NULL,
    CONSTRAINT fk_empresa_entrega FOREIGN KEY (idEntregaEmpresa_frete) REFERENCES empresa_frete(idEmpresa_frete)
);

-- Tabela de Carteira Digital
CREATE TABLE carteira_digital (
    idCarteira_digital INT AUTO_INCREMENT PRIMARY KEY,
    Numero_carteira VARCHAR(45) NOT NULL,
    CONSTRAINT unique_numero_carteira UNIQUE (Numero_carteira),
    Data_adesão DATE NOT NULL,
    Valor_em_conta FLOAT NOT NULL,
    Valor_de_cashback FLOAT NOT NULL
);

-- Tabela de Pagamento com Cartão
CREATE TABLE pagamento_cartao (
    idPagamento_cartao INT AUTO_INCREMENT PRIMARY KEY,
    Nome_completo_titular VARCHAR(60) NOT NULL,
    Numero_cartao CHAR(16) NOT NULL,
    Bandeira_cartao ENUM('VISA','MASTERCARD','ELO','MAESTRO','AMERICAN EXPRESS','HIPERCARD') NOT NULL,
    Data_validade DATE NOT NULL,
    CPF_CNPJ_titular VARCHAR(15)
);

-- Tabela de Conta
CREATE TABLE conta (
    idConta INT AUTO_INCREMENT PRIMARY KEY,
    idContaCliente INT,
    Tipo_conta VARCHAR(60) NOT NULL,
    CPF CHAR(11),
    CNPJ CHAR(14),
    Data_fundacao DATE,
    Data_aniversario DATE,
    Atividade_economica VARCHAR(60),
    Profissao VARCHAR(60),
    CONSTRAINT fk_conta_cliente FOREIGN KEY (idContaCliente) REFERENCES cliente(idCliente)
);

-- Tabela de Formas de Pagamento
CREATE TABLE formas_pagamento (
    idFormas_pagamento INT AUTO_INCREMENT PRIMARY KEY,
    idFormas_pagamento_cliente INT,
    idFormas_pagamento_pagamento_cartao INT,
    idFormas_pagamento_carteira_digital INT,
    Pix VARCHAR(45),
    Boleto VARCHAR(255),
    Transferencia_bancaria VARCHAR(255),
    CONSTRAINT fk_Formas_pagamento_cliente FOREIGN KEY (idFormas_pagamento_cliente) REFERENCES cliente(idCliente),
    CONSTRAINT fk_Formas_pagamento_cartao FOREIGN KEY (idFormas_pagamento_pagamento_cartao) REFERENCES pagamento_cartao(idPagamento_cartao),
    CONSTRAINT fk_Formas_carteira_digital FOREIGN KEY (idFormas_pagamento_carteira_digital) REFERENCES carteira_digital(idCarteira_digital)
);

-- Tabela de Pedido
CREATE TABLE pedido (
    idPedido INT AUTO_INCREMENT PRIMARY KEY,
    idPedidoCliente INT,
    idPedidoEntrega INT,
    idPedidoFormas_pagamento INT,
    Status_do_pedido ENUM('Cancelado','Em andamento','Processando','Enviado','Entregue') DEFAULT 'Processando',
    Descricao VARCHAR(120) NOT NULL,
    Data_do_pedido DATE NOT NULL,
    CONSTRAINT fk_pedido_cliente FOREIGN KEY (idPedidoCliente) REFERENCES cliente(idCliente),
    CONSTRAINT fk_pedido_entrega FOREIGN KEY (idPedidoEntrega) REFERENCES entrega(idEntrega),
    CONSTRAINT fk_pedido_formas_pagamento FOREIGN KEY (idPedidoFormas_pagamento) REFERENCES formas_pagamento(idFormas_pagamento)
);

-- Tabela de Estoque
CREATE TABLE estoque (
    idEstoque INT AUTO_INCREMENT PRIMARY KEY,
    Local_estoque VARCHAR(45) NOT NULL,
    Responsavel VARCHAR(45) NOT NULL,
    Email_1 VARCHAR(45) NOT NULL,
    Email_2 VARCHAR(45),
    Telefone_1 CHAR(11) NOT NULL,
    Telefone_2 CHAR(11)
);

-- Tabela de Fornecedor
CREATE TABLE fornecedor (
    idFornecedor INT AUTO_INCREMENT PRIMARY KEY,
    Razao_social VARCHAR(45) NOT NULL,
    Nome_fantasia VARCHAR(45) NOT NULL,
    CNPJ CHAR(14) NOT NULL,
    CONSTRAINT unique_fornecedor UNIQUE (CNPJ),
    Responsavel VARCHAR(45) NOT NULL,
    Endereco_fornecedor VARCHAR(100),
    Contato_email_1 VARCHAR(45) NOT NULL,
    Contato_email_2 VARCHAR(45),
    Contato_telefone_1 CHAR(11) NOT NULL,
    Contato_telefone_2 CHAR(11)
);

-- Tabela de Vendedor
CREATE TABLE vendedor (
    idVendedor INT AUTO_INCREMENT PRIMARY KEY,
    Razao_social VARCHAR(45) NOT NULL,
    Nome_fantasia VARCHAR(45),
    CPF_CNPJ VARCHAR(15) NOT NULL,
    CONSTRAINT unique_vendedor UNIQUE (CPF_CNPJ),
    Local_vendedor VARCHAR(45),
    Nome_vendedor VARCHAR(45) NOT NULL,
    Email_1 VARCHAR(45) NOT NULL,
    Email_2 VARCHAR(45),
    Telefone_1 CHAR(11) NOT NULL,
    Telefone_2 CHAR(11)
);

-- Tabela de Produto Pedido
CREATE TABLE produto_pedido (
    idPeProduto INT,
    idPePedido INT,
    Quantidade_produto INT DEFAULT 1,
    Status_pp ENUM('Disponivel', 'Sem estoque') DEFAULT 'Disponivel' NOT NULL,
    PRIMARY KEY (idPeProduto, idPePedido),
    CONSTRAINT fk_produto_vendedor FOREIGN KEY (idPeProduto) REFERENCES produto(idProduto),
    CONSTRAINT fk_produto_produto FOREIGN KEY (idPePedido) REFERENCES pedido(idPedido)
);

-- Tabela de Produto Vendedor
CREATE TABLE produto_vendedor (
    idVeVendedor INT,
    idVeProduto INT,
    Quantidade_produto INT DEFAULT 1,
    PRIMARY KEY (idVeVendedor, idVeProduto),
    CONSTRAINT fk_vendedor_vendedor FOREIGN KEY (idVeVendedor) REFERENCES vendedor(idVendedor),
    CONSTRAINT fk_vendedor_produto FOREIGN KEY (idVeProduto) REFERENCES produto(idProduto)
);

-- Tabela de Produto Fornecedor
CREATE TABLE produto_fornecedor (
    idFoFornecedor INT,
    idFoProduto INT,
    PRIMARY KEY (idFoFornecedor, idFoProduto),
    CONSTRAINT fk_fornecedor_fornecedor FOREIGN KEY (idFoFornecedor) REFERENCES fornecedor(idFornecedor),
    CONSTRAINT fk_fornecedor_produto FOREIGN KEY (idFoProduto) REFERENCES produto(idProduto)
);

-- Tabela de Produto em Estoque
CREATE TABLE produto_em_estoque (
    idEsEstoque INT,
    idEsProduto INT,
    Quantidade_estoque INT NOT NULL,
    PRIMARY KEY (idEsEstoque, idEsProduto),
    CONSTRAINT fk_estoque_estoque FOREIGN KEY (idEsEstoque) REFERENCES estoque(idEstoque),
    CONSTRAINT fk_estoque_produto FOREIGN KEY (idEsProduto) REFERENCES produto(idProduto)
);
