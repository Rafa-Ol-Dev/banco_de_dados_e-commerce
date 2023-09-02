-- Usa o banco de dados "ecommerce"
USE ecommerce;

-- Mostra as tabelas existentes
SHOW TABLES;

-- Descreve a estrutura da tabela "cliente"
DESC cliente;

-- Insere dados na tabela "cliente"
INSERT INTO cliente (Nome_Completo, CPF, Data_de_nascimento, Email, Telefone_1, Telefone_2, Logradouro, Endereco, Numero_Residencial, Bairro, Complemento, Cidade, Estado, CEP)
VALUES
    ('Maria da Silva', '12345678901', '1990-01-15', 'maria.silva@email.com', '41987654321', NULL, 'Rua das Flores', '123', 'Jardim Primavera', NULL, 'Casa 5', 'S�o Paulo', 'SP', '04567090'),
    ('Jos� Pereira', '98765432102', '1985-06-20', 'jose.pereira@email.com', '41998765432', NULL, 'Avenida Central', '456', 'Centro', 'Bloco 2, Ap 202', 'Rio de Janeiro', 'RJ', '20030050'),
    ('Ana Santos', '12345678903', '1992-11-12', 'ana.santos@email.com', '41987654323', NULL, 'Rua das Palmeiras', '789', 'Pinheiros', 'Casa 18', 'S�o Paulo', 'SP', '05467080'),
    ('Paulo Oliveira', '98765432104', '1980-09-28', 'paulo.oliveira@email.com', '41998765434', '51987654345', 'Avenida da Liberdade', '987', 'Liberdade', NULL, 'Salvador', 'BA', '40010040'),
    ('L�cia Ferreira', '12345678905', '1995-04-18', 'lucia.ferreira@email.com', '41987654325', NULL, 'Rua das Violetas', '321', 'Jardim Bot�nico', 'Apartamento 503', 'Curitiba', 'PR', '80210110'),
    ('Fernando Pereira', '98765432106', '1983-07-05', 'fernando.pereira@email.com', '41998765436', '51987654347', 'Alameda dos Ip�s', '654', 'Alphaville', 'Apartamento 105', 'Barueri', 'SP', '06455000'),
    ('Carla Oliveira', '12345678907', '1998-02-10', 'carla.oliveira@email.com', '41987654327', NULL, 'Rua dos Girass�is', '456', 'Vila Aurora', 'Casa 22', 'Porto Alegre', 'RS', '90540120'),
    ('Ricardo Santos', '98765432108', '1987-11-30', 'ricardo.santos@email.com', '41998765438', NULL, 'Avenida dos Bandeirantes', '753', 'Moema', 'Bloco 1, Ap 301', 'S�o Paulo', 'SP', '04108000'),
    ('Juliana Silva', '12345678909', '1994-05-15', 'juliana.silva@email.com', '41998765440', '51987654350', 'Rua das Orqu�deas', '852', 'Flamengo', NULL, 'Rio de Janeiro', 'RJ', '22011040'),
    ('Carlos Fernandes', '98765432110', '1982-08-05', 'carlos.fernandes@email.com', '41987654330', NULL, 'Avenida das Rosas', '987', 'Laranjeiras', 'Casa 7', 'Belo Horizonte', 'MG', '30160130'),
    ('Mariana Lima', '12345678911', '1996-03-28', 'mariana.lima@email.com', '41987654311', NULL, 'Rua das Azaleias', '654', 'Jardim Am�rica', 'Apartamento 205', 'Goi�nia', 'GO', '74670030'),
    ('Fernando Oliveira', '98765432112', '1984-12-10', 'fernando.oliveira@email.com', '41998765412', '51987654322', 'Alameda das Magn�lias', '456', 'Aldeota', NULL, 'Fortaleza', 'CE', '60170040'),
    ('Isabela Santos', '12345678913', '1991-07-22', 'isabela.santos@email.com', '41987654333', NULL, 'Rua dos Cravos', '753', 'Centro', 'Bloco 3, Ap 402', 'Bras�lia', 'DF', '70070900'),
    ('Lucas Pereira', '98765432114', '1988-09-05', 'lucas.pereira@email.com', '41998765444', '51987654355', 'Avenida das Beg�nias', '852', 'Itaim Bibi', 'Casa 1', 'S�o Paulo', 'SP', '04570020'),
    ('Helena Oliveira', '12345678915', '1993-04-18', 'helena.oliveira@email.com', '41987654365', NULL, 'Rua das Tulipas', '987', 'Alto da Gl�ria', NULL, 'Curitiba', 'PR', '80030070');

-- Descreve a estrutura da tabela "produto"
DESC produto;

-- Insere dados na tabela "produto"
INSERT INTO produto (Nome, Categoria, Descricao, Preco_unitario, Possui_garantia_estendida, Avaliacao, Dimensoes) values
    ('Fone De Ouvido Sem Fio Bluetooth', '�udio e V�deo', 'Fone De Ouvido Sem Fio Bluetooth com Cancelamento de Ru�do - Conforto e Qualidade Sonora', '129.99', 'Sim', '4.5', '19 x 15 x 6 cm'),
    ('Smart TV LED 55" 4K Ultra HD', 'Eletr�nicos', 'Smart TV LED 55" 4K Ultra HD com HDR e Dolby Vision - Controle de Voz e Streaming', '1899.00', 'Sim', '4.8', '124 x 75 x 9 cm'),
    ('Notebook Dell Inspiron 15', 'Inform�tica', 'Notebook Dell Inspiron 15 com Processador Intel Core i7, 16GB RAM e SSD de 512GB', '2999.00', 'Sim', '4.7', '36 x 24 x 2 cm'),
    ('C�mera DSLR Canon EOS 90D', 'Fotografia', 'C�mera DSLR Canon EOS 90D com Lente EF-S 18-55mm e 32GB de Cart�o SD', '1499.99', 'Sim', '4.6', '15 x 10 x 8 cm'),
    ('Console de Jogos Xbox Series X', 'Games', 'Console de Jogos Xbox Series X com 1TB de Armazenamento e Controle Sem Fio', '499.00', 'Sim', '4.9', '30 x 24 x 8 cm'),
    ('Geladeira Electrolux Frost Free', 'Eletrodom�sticos', 'Geladeira Electrolux Frost Free com 380 Litros de Capacidade e Dispenser de �gua', '1499.90', 'Sim', '4.5', '70 x 60 x 180 cm'),
    ('Sof� de Couro Leg�timo', 'M�veis', 'Sof� de Couro Leg�timo com 3 Lugares e Design Moderno - Dispon�vel em Cores Variadas', '1799.00', 'Sim', '4.7', '220 x 90 x 80 cm'),
    ('Bicicleta Mountain Bike', 'Esporte e Lazer', 'Bicicleta Mountain Bike Aro 29 com Suspens�o Dianteira e 21 Marchas - Ideal para Trilhas', '699.99', 'Sim', '4.6', '170 x 75 x 20 cm'),
    ('Rel�gio de Pulso Masculino', 'Rel�gios', 'Rel�gio de Pulso Masculino com Cron�grafo e Pulseira de Couro - Resistente � �gua', '99.90', 'Sim', '4.4', '25 x 5 x 1 cm'),
    ('M�quina de Lavar Roupas Electrolux', 'Eletrodom�sticos', 'M�quina de Lavar Roupas Electrolux com Capacidade de 12 Kg e Fun��o Econ�mica', '799.00', 'Sim', '4.8', '60 x 60 x 100 cm'),
    ('Fritadeira El�trica Air Fryer', 'Eletrodom�sticos', 'Fritadeira El�trica Air Fryer com Capacidade de 4 Litros e Timer Digital', '179.99', 'Sim', '4.5', '30 x 30 x 35 cm'),
    ('Panela de Press�o El�trica', 'Eletrodom�sticos', 'Panela de Press�o El�trica com Capacidade de 5 Litros e Fun��es Program�veis', '129.00', 'Sim', '4.6', '25 x 25 x 30 cm'),
    ('Kit de Ferramentas Profissional', 'Ferramentas', 'Kit de Ferramentas Profissional com 150 Pe�as - Ideal para Reparos Dom�sticos', '149.99', 'Sim', '4.7', '40 x 30 x 15 cm'),
    ('Mala de Viagem R�gida', 'Bagagem', 'Mala de Viagem R�gida com 4 Rodas e Capacidade de 28 Litros - Dispon�vel em Diversas Cores', '49.95', 'Sim', '4.4', '50 x 35 x 20 cm'),
    ('T�nis Esportivo Nike Air Max', 'Cal�ados', 'T�nis Esportivo Nike Air Max com Amortecimento - Dispon�vel em Diversas Cores', '129.00', 'Sim', '4.9', '30 x 15 x 10 cm'),
    ('Fralda Descart�vel Huggies', 'Beb�s', 'Fralda Descart�vel Huggies com 200 Unidades - Tamanho M (6-9 kg)', '59.99', 'Sim', '4.6', '40 x 30 x 20 cm'),
    ('Brinquedo Educativo Montessori', 'Brinquedos', 'Brinquedo Educativo Montessori de Madeira - Ideal para o Desenvolvimento Infantil', '39.90', 'Sim', '4.8', '20 x 20 x 10 cm'),
    ('Rel�gio Inteligente Smartwatch', 'Rel�gios', 'Rel�gio Inteligente Smartwatch com Monitor de Frequ�ncia Card�aca e Notifica��es', '89.99', 'Sim', '4.5', '25 x 5 x 1 cm'),
    ('Cadeira Gamer Ergon�mica', 'M�veis', 'Cadeira Gamer Ergon�mica com Apoio para P�s e Design Esportivo - Dispon�vel em Cores Variadas', '279.00', 'Sim', '4.7', '70 x 60 x 120 cm'),
    ('Aspirador de P� Port�til', 'Eletrodom�sticos', 'Aspirador de P� Port�til Recarreg�vel - Ideal para Carros e Pequenos Espa�os', '49.90', 'Sim', '4.5', '40 x 10 x 10 cm'),
    ('Rel�gio Feminino Rose Gold', 'Rel�gios', 'Rel�gio Feminino Rose Gold com Pulseira de Malha de A�o - Resistente � �gua', '69.95', 'Sim', '4.6', '20 x 5 x 1 cm'),
    ('Ventilador de Teto com Controle', 'Eletrodom�sticos', 'Ventilador de Teto com Controle Remoto e 3 Velocidades - Dispon�vel em Cores Variadas', '119.99', 'Sim', '4.8', '120 x 50 x 30 cm'),
    ('C�mera de Seguran�a Wi-Fi', 'Seguran�a', 'C�mera de Seguran�a Wi-Fi com Vis�o Noturna e Detec��o de Movimento - Controle pelo Smartphone', '69.00', 'Sim', '4.5', '10 x 10 x 10 cm'),
    ('Mochila Escolar Juvenil', 'Moda', 'Mochila Escolar Juvenil com Estampa Colorida - Ideal para Estudantes', '29.99', 'Sim', '4.4', '40 x 30 x 15 cm'),
    ('Colch�o de Casal Ortop�dico', 'M�veis', 'Colch�o de Casal Ortop�dico com Molas Ensacadas e Espuma de Alta Densidade', '599.00', 'Sim', '4.7', '190 x 140 x 25 cm'),
    ('Rel�gio de Parede Decorativo', 'Decora��o', 'Rel�gio de Parede Decorativo com Design Moderno - Dispon�vel em Diversas Cores', '29.95', 'Sim', '4.6', '30 x 30 x 4 cm'),
    ('M�quina de Caf� Expresso', 'Eletrodom�sticos', 'M�quina de Caf� Expresso com Moedor Integrado e Espuma de Leite - Prepara Cappuccinos e Lattes', '249.00', 'Sim', '4.8', '35 x 30 x 25 cm'),
    ('Ferro de Passar a Vapor', 'Eletrodom�sticos', 'Ferro de Passar a Vapor com Base Antiaderente - Leve e Pr�tico', '19.90', 'Sim', '4.5', '30 x 15 x 10 cm'),
    ('Kit de Maquiagem Profissional', 'Beleza e Perfumaria', 'Kit de Maquiagem Profissional com Paleta de Sombras e Pinc�is - Ideal para Maquiadores', '49.99', 'Sim', '4.7', '25 x 20 x 5 cm'),
    ('Batedeira Planet�ria Oster', 'Eletrodom�sticos', 'Batedeira Planet�ria Oster com Tigela de 4,5 Litros e 12 Velocidades', '119.00', 'Sim', '4.6', '35 x 30 x 25 cm'),
    ('Churrasqueira a Carv�o', 'Casa e Jardim', 'Churrasqueira a Carv�o com Grelha de 55 cm e Rodinhas - Ideal para Churrascos em Fam�lia', '149.99', 'Sim', '4.8', '70 x 50 x 30 cm'),
    ('T�nis de Corrida Asics Gel', 'Esporte e Lazer', 'T�nis de Corrida Asics Gel com Amortecimento e Design Esportivo - Dispon�vel em Diversas Cores', '89.90', 'Sim', '4.7', '30 x 20 x 10 cm'),
    ('M�quina de Cortar Cabelo Wahl', 'Beleza e Perfumaria', 'M�quina de Cortar Cabelo Wahl com 10 Pentes de Corte e L�mina em A�o Inoxid�vel', '49.95', 'Sim', '4.6', '20 x 10 x 5 cm'),
    ('Micro-ondas Electrolux', 'Eletrodom�sticos', 'Micro-ondas Electrolux com Capacidade de 20 Litros e Fun��o Descongelamento', '199.00', 'Sim', '4.5', '40 x 30 x 25 cm'),
    ('Teclado Mec�nico Gamer', 'Games', 'Teclado Mec�nico Gamer com Ilumina��o RGB e Teclas Anti-ghosting', '69.99', 'Sim', '4.8', '45 x 15 x 3 cm');


-- Descreve a estrutura da tabela "empresa_frete"
DESC empresa_frete;

-- Insere dados na tabela "empresa_frete"
INSERT INTO empresa_frete (Razao_social, Nome_fantasia, CNPJ, Responsavel, Email_1, Email_2, Telefone_1, Telefone_2) VALUES
    ('TransLog�stica Expressa Ltda', 'TransLog�stica Expressa', '12345678000100', 'Carolina Santos', 'carolina@translogistica.com', 'atendimento@translogistica.com', '11987654321', '11901234567'),
    ('R�pido Entregas R�pidas Ltda', 'R�pido Entregas R�pidas', '98765432000199', 'Felipe Oliveira', 'felipe@rapidoentregas.com', 'contato@rapidoentregas.com', '21987654321', '21901234567'),
    ('LogiExpresso Transportes', 'LogiExpresso', '56789012000188', 'Lucas Martins', 'lucas@logiexpresso.com', 'atendimento@logiexpresso.com', '41987654321', '41901234567'),
    ('�gilLog�stica Nacional Ltda', '�gilLog�stica Nacional', '34567890000177', 'Beatriz Silva', 'beatriz@agillogistica.com', 'contato@agillogistica.com', '51987654321', '51901234567');

-- Descreve a estrutura da tabela "entrega"
DESC entrega;

-- Insere dados na tabela "entrega"
INSERT INTO entrega (idEntregaEmpresa_frete, Codigo_rastreio, Status_entrega, Prazo_entrega, Valor_frete) VALUES
    ('1', 'A100001', 'Separado pelo fornecedor', '2022-10-25', '0'),
    ('2', 'A100002', 'Separado pelo fornecedor', '2022-10-31', '11.90'),
    ('2', 'A100003', 'Separado pelo fornecedor', '2022-10-24', '20.49'),
    ('4', 'A100004', 'Saiu do centro de distribui��o', '2022-10-27', '7.99'),
    ('4', 'B200001', 'Saiu do centro de distribui��o', '2022-10-25', '8.00'),
    ('3', 'B200002', 'Saiu do centro de distribui��o', '2022-10-22', '9.40'),
    ('1', 'B200003', 'A caminho da sua cidade', '2022-10-21', '0'),
    ('3', 'B200004', 'A caminho da sua cidade', '2022-10-21', '0'),
    ('1', 'C300001', 'A caminho da sua cidade', '2022-10-22', '0'),
    ('2', 'C300002', 'Na rota de entrega', '2022-10-20', '0'),
    ('1', 'C300003', 'Na rota de entrega', '2022-10-20', '22.90'),
    ('4', 'C300004', 'Na rota de entrega', '2022-10-20', '13.13'),
    ('2', 'D400001', 'Entregue', '2022-10-10', '13.00'),
    ('3', 'D400002', 'Entregue', '2022-10-07', '22.99'),
    ('1', 'D400003', 'Entregue', '2022-10-05', '25.40');

-- Seleciona todos os registros da tabela "empresa_frete"
SELECT * FROM empresa_frete;

-- Seleciona todos os registros da tabela "entrega"
SELECT * FROM entrega;

-- Descreve a estrutura da tabela "carteira_digital"
DESC carteira_digital;

-- Inserir dados na tabela "carteira_digital"
INSERT INTO carteira_digital (numero_carteira, Data_ades�o, Valor_em_conta, valor_de_cashback) VALUES
    ('123456', '2021-08-13', '0.00', '0.00'),
    ('123654', '2021-09-03', '190.00', '0.00'),
    ('125463', '2021-10-19', '1230.58', '0.00'),
    ('135245', '2021-11-29', '98.42', '0.00'),
    ('135456', '2021-12-12', '59.00', '0.00'),
    ('133254', '2022-01-15', '0.00', '0.00'),
    ('135684', '2022-02-18', '0.00', '231.00'),
    ('145635', '2022-03-05', '5000.00', '712.00'),
    ('145636', '2022-04-10', '72.81', '0.00'),
    ('149857', '2022-05-20', '604.59', '0.00'),
    ('153254', '2022-06-07', '231.09', '0.00'),
    ('153698', '2022-07-18', '259.14', '0.00'),
    ('159745', '2022-08-21', '0.00', '29.69');

-- Descreve a estrutura da tabela "pagamento_cartao"
DESC pagamento_cartao;

-- Inserir dados na tabela "pagamento_cartao"
INSERT INTO pagamento_cartao (Nome_completo_titular, Numero_cartao, Bandeira_cartao, Data_validade, CPF_CNPJ_Titular) VALUES
    ('Maria da Silva', '4020202020202020', 'VISA', '2025-06-30', '12345678901'),
    ('Jos� Pereira', '5123512351235123', 'MasterCard', '2024-09-30', '98765432109'),
    ('Ana Santos', '6010601060106010', 'ELO', '2023-12-30', '45678901234'),
    ('Paulo Oliveira', '7458745874587458', 'American Express', '2024-11-30', '78901234567'),
    ('L�cia Ferreira', '8255825582558255', 'VISA', '2025-08-30', '23456789012'),
    ('Fernando Pereira', '9320932093209320', 'MasterCard', '2026-03-30', '67890123456'),
    ('Carla Oliveira', '1010101010101010', 'ELO', '2024-02-30', '34567890123'),
    ('Ricardo Santos', '1122112211221122', 'MasterCard', '2023-07-30', '56789012345'),
    ('Juliana Silva', '1234123412341234', 'VISA', '2025-04-30', '89012345678'),
    ('Carlos Fernandes', '1345134513451345', 'ELO', '2024-05-30', '12345678901'),
    ('Mariana Lima', '1452145214521452', 'American Express', '2026-01-30', '98765432109'),
    ('Helena Oliveira', '1561156115611561', 'MasterCard', '2023-10-30', '45678901234');

-- Descreve a estrutura da tabela "conta"
DESC conta;

-- Inserir dados na tabela "conta"
INSERT INTO conta (idContaCliente, Tipo_conta, CPF, CNPJ, Data_fundacao, Data_aniversario, Atividade_economica, Profissao) VALUES
    ('1', 'Pessoa F�sica', '12345678912', null, '1980-03-15', '1975-05-20', 'Professor', 'Professor de Matem�tica'),
    ('2', 'Pessoa F�sica', '98765432198', null, '1992-08-10', '1988-11-14', 'Analista RH', 'Analista de Recursos Humanos'),
    ('3', 'Pessoa F�sica', '12378945665', null, '1975-11-26', '1972-02-05', 'Estudante', 'Estudante de Engenharia'),
    ('4', 'Pessoa F�sica', '32165498745', null, '1962-04-03', '1960-09-18', 'Cantor', 'Cantor de MPB'),
    ('5', 'Pessoa F�sica', '15948723619', null, '1958-09-12', '1956-07-02', 'Cantor', 'Cantor de Rock'),
    ('6', 'Pessoa F�sica', '23651948718', null, '1982-07-30', '1980-11-22', 'Jogador de Futebol', 'Atleta Profissional'),
    ('7', 'Pessoa F�sica', '32564197849', null, '1976-01-14', '1973-12-06', 'Cantor', 'Cantor de Samba'),
    ('8', 'Pessoa F�sica', '11133355598', null, '1963-02-28', '1960-06-10', 'Escritor', 'Escritor de Fic��o'),
    ('9', 'Pessoa F�sica', '12398765445', null, '1968-12-05', '1966-04-20', 'M�e de Santo', 'Religiosa'),
    ('10', 'Pessoa F�sica', '33211566487', null, '1977-03-19', '1974-08-30', 'Escritora', 'Escritora de Poesia'),
    ('11', 'Pessoa F�sica', '44266598791', null, '1965-05-08', '1962-10-18', 'Ator', 'Ator de Cinema'),
    ('12', 'Pessoa F�sica', '12365897469', null, '1987-07-25', '1985-03-15', 'Cantora', 'Cantora Pop'),
    ('13', 'Pessoa F�sica', '15648975631', null, '1972-11-11', '1970-06-26', 'Cantor', 'Cantor de Rock'),
    ('14', 'Pessoa F�sica', '32564198765', null, '1980-04-20', '1977-08-09', 'Escritora', 'Escritora de Romance'),
    ('15', 'Pessoa F�sica', '35798641852', null, '1978-03-30', '1975-09-05', 'Ge�grafo', 'Ge�grafo Ambiental');

-- Seleciona todos os registros da tabela "carteira_digital"
SELECT * FROM carteira_digital;

-- Seleciona todos os registros da tabela "pagamento_cartao"
SELECT * FROM pagamento_cartao;

-- Seleciona todos os registros da tabela "conta"
SELECT * FROM conta;

-- Descreve a estrutura da tabela "formas_pagamento"
DESC formas_pagamento;

-- Insere dados na tabela "formas_pagamento"
INSERT INTO formas_pagamento (idFormas_pagamento_cliente, idFormas_pagamento_pagamento_cartao, idFormas_pagamento_carteira_digital, Pix, Boleto, Transferencia_bancaria) VALUES
    (1, 1, 1, '1234567890', '', ''),
    (2, 2, 2, '9876543210', '', ''),
    (3, 3, 3, '5555666677778888', '', ''),
    (4, 4, 4, '4444333322221111', '', ''),
    (5, 5, 5, '7777666655554444', '', ''),
    (6, 6, 6, '1111222233334444', '', ''),
    (7, 7, 7, '9999888877776666', '', ''),
    (8, 8, 8, '8888999911112222', '', ''),
    (9, 9, 9, '3333444455556666', '', ''),
    (10, 10, 10, '6666555544443333', '', ''),
    (11, 11, 11, '2222111133334444', '', ''),
    (12, '', 12, '', '1234567890123456789012345678901234567890', ''),
    (13, '', 13, '', '9876543210987654321098765432109876543210', ''),
    (14, '', '', '', '', '1234567890'),
    (15, '', '', '', '', '9876543210');

-- Descreve a estrutura da tabela "pedido"
DESC pedido;

-- Insere dados na tabela "pedido"
INSERT INTO pedido(idPedidoCliente, idPedidoEntrega, idPedidoFormas_pagamento, Status_do_pedido, Descricao, Data_do_pedido) VALUES
    ('1', '1', '1', 'Cancelado', 'Compra pelo site', '2023-01-10'),
    ('2', '2', '2', 'Cancelado', 'Compra pelo Aplicativo', '2023-01-12'),
    ('3', '3', '3', 'Cancelado', 'Compra pelo site', '2023-01-15'),
    ('4', '4', '4', 'Em andamento', 'Compra pelo site', '2023-02-01'),
    ('5', '5', '5', 'Em andamento', 'Compra pelo site', '2023-02-05'),
    ('6', '6', '6', 'Em andamento', 'Compra pelo Aplicativo', '2023-02-08'),
    ('7', '7', '7', 'Em andamento', 'Compra pelo Aplicativo', '2023-02-10'),
    ('8', '8', '8', 'Processando', 'Compra pelo site', '2023-02-15'),
    ('9', '9', '9', 'Processando', 'Compra pelo site', '2023-02-20'),
    ('10', '10', '10', 'Processando', 'Compra na Loja', '2023-02-25'),
    ('11', '11', '11', 'Processando', 'Compra na Loja', '2023-03-01'),
    ('12', '12', '12', 'Processando', 'Compra pelo site', '2023-03-05'),
    ('13', '13', '13', 'Entregue', 'Compra pelo site', '2023-03-10'),
    ('14', '14', '14', 'Entregue', 'Compra pelo site', '2023-03-15'),
    ('15', '15', '15', 'Entregue', 'Compra pelo site', '2023-03-20');

-- Descreve a estrutura da tabela "estoque"
DESC estoque;

-- Insere dados na tabela "estoque"
INSERT INTO estoque (Local_estoque, Responsavel, Email_1, Email_2, Telefone_1, Telefone_2) VALUES
    ('Curitiba', 'Pedro Souza', 'cd-curitiba@estoque.com', NULL, '41998569632', '41998569630'),
    ('Rio de Janeiro', 'Jo�o da Silva', 'cd-riodejaneiro@estoque.com', NULL, '21998548962', '21998548960'),
    ('S�o Paulo', 'Jose dos Flores', 'cd-saopaulo@estoque.com', NULL, '11985478596', '11985478590'),
    ('Belo Horizonte', 'Maria Oliveira', 'cd-bh@estoque.com', NULL, '31987546982', '31987546980');

-- Descreve a estrutura da tabela "fornecedor"
DESC fornecedor;

-- Insere dados na tabela "fornecedor"
INSERT INTO fornecedor (Razao_social, Nome_fantasia, CNPJ, Responsavel, Endereco_fornecedor, Contato_email_1, Contato_email_2, Contato_telefone_1, Contato_telefone_2) VALUES
    ('Inova Suprimentos Ltda', 'Inova Suprimentos', '43156789000199', 'Mariana Silva', 'Rua das Ind�strias, Curitiba - Paran� / Brasil', 'contato@inovasuprimentos.com.br', 'vendas@inovasuprimentos.com.br', '41998887654', '41998887655'),
    ('Tech Gadget Emporium', 'Tech Gadget', '75248965000172', 'Rodrigo Santos', 'Avenida das Novas Tecnologias, S�o Paulo - S�o Paulo / Brasil', 'contato@techgadget.com.br', NULL, '11987765432', NULL),
    ('M�veis Elegantes SA.', 'M�veis Elegantes', '32567891000145', 'Ana Paula Ferreira', 'Rua dos M�veis Finos, Rio de Janeiro - Rio de Janeiro / Brasil', 'contato@moveiselegantes.com', 'vendas@moveiselegantes.com.br', '21987654321', '21987654322'),
    ('EletroTech Comunica��es', 'EletroTech', '89321654000127', 'Carlos Souza', 'Avenida das Comunica��es, Belo Horizonte - Minas Gerais / Brasil', 'contato@eletrotech.com', 'suporte@eletrotech.com', '31335548796', '31335548797');

-- Descreve a estrutura da tabela "vendedor"
DESC vendedor;

-- Insere dados na tabela "vendedor"
INSERT INTO vendedor (Razao_social, Nome_fantasia, CPF_CNPJ, Local_vendedor, Nome_vendedor, Email_1, Email_2, Telefone_1, Telefone_2) VALUES
    ('Loja de Decora��o e Design', 'DecoDesign', '98765432109876', 'S�o Paulo', 'Carlos Rodrigues', 'carlos@decodesign.com.br', 'atendimento@decodesign.com.br', '11985476213', '11985476214'),
    ('Suprimentos de Inform�tica SA.', 'InfoSupri', '45678901234567', 'Curitiba', 'L�cia Fernandes', 'lucia@infosupri.com', 'vendas@infosupri.com.br', '41987654321', '41987654322'),
    ('Loja de Roupas Elegantes', 'Elegance Fashion', '98765432100123', 'Belo Horizonte', 'Gustavo Lima', 'gustavo@elegancefashion.com.br', 'atendimento@elegancefashion.com.br', '31335476213', '31335476214'),
    ('Equipamentos Esportivos Ltda', 'Esporte Total', '12309876543210', 'Rio de Janeiro', 'Fernanda Souza', 'fernanda@esportetotal.com', 'vendas@esportetotal.com.br', '21987654321', '21987654322');

-- Descreve a estrutura da tabela "produto_pedido"
DESC produto_pedido;

-- Insere dados na tabela "produto_pedido"
INSERT INTO produto_pedido (idPeProduto, idPePedido, Quantidade_produto, Status_pp) VALUES
    (5, 1, 2, 'Dispon�vel'),
    (6, 2, 1, 'Dispon�vel'),
    (16, 3, 3, 'Dispon�vel'),
    (23, 4, 4, 'Sem estoque'),
    (34, 5, 1, 'Dispon�vel'),
    (7, 6, 2, 'Dispon�vel'),
    (12, 7, 3, 'Sem estoque'),
    (22, 8, 1, 'Sem estoque'),
    (10, 9, 4, 'Dispon�vel'),
    (32, 10, 2, 'Dispon�vel'),
    (17, 11, 3, 'Sem estoque'),
    (29, 12, 1, 'Dispon�vel'),
    (35, 13, 2, 'Dispon�vel'),
    (8, 14, 3, 'Sem estoque'),
    (19, 15, 4, 'Dispon�vel');

-- Descreve a estrutura da tabela "produto_vendedor"
DESC produto_vendedor;

-- Insere dados na tabela "produto_vendedor"
INSERT INTO produto_vendedor (idVeVendedor, idVeProduto, Quantidade_produto) VALUES
    (1, 31, 5),
    (2, 22, 3),
    (3, 13, 6),
    (1, 4, 2),
    (2, 25, 4),
    (3, 16, 5),
    (1, 7, 3),
    (2, 18, 1),
    (3, 9, 2),
    (1, 20, 4),
    (2, 11, 2),
    (3, 12, 5),
    (1, 33, 3),
    (2, 24, 1),
    (3, 15, 4);

-- Descreve a estrutura da tabela "produto_fornecedor"
DESC produto_fornecedor;

-- Inserir dados na tabela "produto_fornecedor"
INSERT INTO produto_fornecedor (idFoFornecedor, idFoProduto) VALUES
    (1, 7),
    (1, 14),
    (1, 19),
    (1, 21),
    (1, 33),
    (1, 5),
    (1, 6),
    (1, 28),
    (1, 32),
    (1, 35),
    (2, 8),
    (2, 9),
    (2, 13),
    (2, 15),
    (2, 17),
    (2, 18),
    (2, 22),
    (2, 25),
    (2, 26),
    (2, 27),
    (3, 10),
    (3, 12),
    (3, 20),
    (3, 24),
    (3, 31),
    (3, 34);

-- Descreve a estrutura da tabela "produto_em_estoque"
DESC produto_em_estoque;

-- Inserir dados na tabela "produto_em_estoque"
INSERT INTO produto_em_estoque (idEsEstoque, idEsProduto, Quantidade_estoque) VALUES
    (1, 1, 45),
    (1, 2, 37),
    (1, 3, 28),
    (1, 4, 50),
    (1, 5, 62),
    (1, 6, 74),
    (1, 7, 23),
    (1, 9, 18),
    (1, 10, 31),
    (1, 11, 42),
    (2, 13, 55),
    (2, 14, 62),
    (2, 15, 38),
    (2, 16, 47),
    (2, 18, 27),
    (2, 19, 33),
    (2, 20, 41),
    (2, 21, 59),
    (2, 24, 44),
    (2, 25, 52),
    (3, 26, 70),
    (3, 27, 64),
    (3, 28, 81),
    (3, 29, 93),
    (3, 30, 76),
    (3, 31, 58),
    (3, 32, 68),
    (3, 33, 80),
    (3, 34, 77),
    (3, 35, 69);

-- Contando o n�mero de clientes cadastrados:
SELECT COUNT(*) FROM cliente;

-- Recuperando os dados dos clientes que realizaram pedidos:
SELECT * FROM cliente c
INNER JOIN pedido p ON c.idCliente = p.idPedidoCliente;

SELECT nome_completo, idPedido, Status_do_pedido FROM cliente c
INNER JOIN pedido p ON c.idCliente = p.idPedidoCliente;

SELECT * FROM cliente c
INNER JOIN pedido p ON c.idCliente = p.idPedidoCliente
GROUP BY idPedido;

-- Recuperar quantos pedidos foram realizados pelos clientes:
SELECT c.idCliente, Nome_completo, COUNT(*) AS Numero_de_pedidos FROM cliente AS c
INNER JOIN pedido AS p ON c.idCliente = p.IdPedidoCliente
GROUP BY idCliente;
