-- Tabela CLIENTE
INSERT INTO CLIENTE (NM_CLIENTE, RUA, BAIRRO, CIDADE, CEP, NUM_TELEFONE)
VALUES
    ('Cliente 1', 'Rua A', 'Bairro X', 'Cidade 1', '12345-678', '(123) 456-7890'),
    ('Cliente 2', 'Rua B', 'Bairro Y', 'Cidade 2', '23456-789', '(234) 567-8901'),
    ('Cliente 3', 'Rua C', 'Bairro Z', 'Cidade 3', '34567-890', '(345) 678-9012'),
    ('Cliente 4', 'Rua D', 'Bairro X', 'Cidade 1', '12345-678', '(456) 789-0123'),
    ('Cliente 5', 'Rua E', 'Bairro Y', 'Cidade 2', '23456-789', '(567) 890-1234'),
    ('Cliente 6', 'Rua F', 'Bairro Z', 'Cidade 3', '34567-890', '(678) 901-2345'),
    ('Cliente 7', 'Rua G', 'Bairro X', 'Cidade 1', '12345-678', '(789) 012-3456'),
    ('Cliente 8', 'Rua H', 'Bairro Y', 'Cidade 2', '23456-789', '(890) 123-4567'),
    ('Cliente 9', 'Rua I', 'Bairro Z', 'Cidade 3', '34567-890', '(901) 234-5678'),
    ('Cliente 10', 'Rua J', 'Bairro X', 'Cidade 1', '12345-678', '(012) 345-6789');

-- Tabela EMAIL
INSERT INTO EMAIL (EMAIL, ID_CLIENTE)
VALUES
    ('cliente1@example.com', 1),
    ('cliente2@example.com', 2),
    ('cliente3@example.com', 3),
    ('cliente4@example.com', 4),
    ('cliente5@example.com', 5),
    ('cliente6@example.com', 6),
    ('cliente7@example.com', 7),
    ('cliente8@example.com', 8),
    ('cliente9@example.com', 9),
    ('cliente10@example.com', 10);

-- Tabela PEDIDO
INSERT INTO PEDIDO (DT_PEDIDO, VALOR_PEDIDO, ID_CLIENTE)
VALUES
    ('2023-10-01', 100.00, 1),
    ('2023-10-02', 75.50, 2),
    ('2023-10-03', 220.25, 3),
    ('2023-10-04', 45.75, 4),
    ('2023-10-05', 150.30, 5),
    ('2023-10-06', 98.60, 6),
    ('2023-10-07', 180.45, 7),
    ('2023-10-08', 65.90, 8),
    ('2023-10-09', 120.75, 9),
    ('2023-10-10', 200.00, 10);

-- Tabela PRODUTO
INSERT INTO PRODUTO (NM_PRODUTO, DESCRICAO, PRECO_VENDA)
VALUES
    ('Produto 1', 'Descrição do Produto 1', 19.99),
    ('Produto 2', 'Descrição do Produto 2', 29.99),
    ('Produto 3', 'Descrição do Produto 3', 9.99),
    ('Produto 4', 'Descrição do Produto 4', 39.99),
    ('Produto 5', 'Descrição do Produto 5', 49.99),
    ('Produto 6', 'Descrição do Produto 6', 14.99),
    ('Produto 7', 'Descrição do Produto 7', 24.99),
    ('Produto 8', 'Descrição do Produto 8', 34.99),
    ('Produto 9', 'Descrição do Produto 9', 4.99),
    ('Produto 10', 'Descrição do Produto 10', 59.99);

-- Tabela PRODUTO_PEDIDO
INSERT INTO PRODUTO_PEDIDO (QT_PRODUTO, DT_PEDIDO, VALOR_UNIT, ID_PEDIDO, ID_PRODUTO)
VALUES
    (3, '2023-10-01', 19.99, 1, 1),
    (2, '2023-10-02', 29.99, 2, 2),
    (5, '2023-10-03', 9.99, 3, 3),
    (1, '2023-10-04', 39.99, 4, 4),
    (4, '2023-10-05', 49.99, 5, 5),
    (2, '2023-10-06', 14.99, 6, 6),
    (3, '2023-10-07', 24.99, 7, 7),
    (1, '2023-10-08', 34.99, 8, 8),
    (6, '2023-10-09', 4.99, 9, 9),
    (2, '2023-10-10', 59.99, 10, 10);

-- Tabela FUNCIONARIO
INSERT INTO FUNCIONARIO (NM_FUNCIONARIO, CARGO, SALARIO, DT_CONTRATACAO)
VALUES
    ('Funcionário 1', 'Cargo 1', 3000.00, '2023-01-15'),
    ('Funcionário 2', 'Cargo 2', 3500.00, '2023-02-20'),
    ('Funcionário 3', 'Cargo 1', 3200.00, '2023-03-25'),
    ('Funcionário 4', 'Cargo 3', 4000.00, '2023-04-30'),
    ('Funcionário 5', 'Cargo 2', 3600.00, '2023-05-05'),
    ('Funcionário 6', 'Cargo 1', 3100.00, '2023-06-10'),
    ('Funcionário 7', 'Cargo 3', 4200.00, '2023-07-15'),
    ('Funcionário 8', 'Cargo 2', 3700.00, '2023-08-20'),
    ('Funcionário 9', 'Cargo 1', 3300.00, '2023-09-25'),
    ('Funcionário 10', 'Cargo 2', 3500.00, '2023-10-30');

-- Tabela COMPRA
INSERT INTO COMPRA (DT_COMPRA, VALOR_COMPRA, ID_PRODUTO, ID_FUNCIONARIO)
VALUES
    ('2023-10-01', 150.00, 1, 1),
    ('2023-10-02', 110.50, 2, 2),
    ('2023-10-03', 280.25, 3, 3),
    ('2023-10-04', 70.75, 4, 4),
    ('2023-10-05', 200.30, 5, 5),
    ('2023-10-06', 150.60, 6, 6),
    ('2023-10-07', 220.45, 7, 7),
    ('2023-10-08', 95.90, 8, 8),
    ('2023-10-09', 180.75, 9, 9),
    ('2023-10-10', 300.00, 10, 10);

-- Tabela COMPRA_PRODUTO
INSERT INTO COMPRA_PRODUTO (QT_PRODUTO, DT_COMPRA, VALOR_UNIT, ID_PRODUTO, ID_COMPRA)
VALUES
    (3, '2023-10-01', 19.99, 1, 1),
    (2, '2023-10-02', 29.99, 2, 2),
    (5, '2023-10-03', 9.99, 3, 3),
    (1, '2023-10-04', 39.99, 4, 4),
    (4, '2023-10-05', 49.99, 5, 5),
    (2, '2023-10-06', 14.99, 6, 6),
    (3, '2023-10-07', 24.99, 7, 7),
    (1, '2023-10-08', 34.99, 8, 8),
    (6, '2023-10-09', 4.99, 9, 9),
    (2, '2023-10-10', 59.99, 10, 10);

-- Tabela ESTOQUE
INSERT INTO ESTOQUE (QT_ESTOQUE, DT_ESTOQUE)
VALUES
    (100, '2023-10-01'),
    (150, '2023-10-02'),
    (200, '2023-10-03'),
    (50, '2023-10-04'),
    (300, '2023-10-05'),
    (120, '2023-10-06'),
    (180, '2023-10-07'),
    (75, '2023-10-08'),
    (250, '2023-10-09'),
    (130, '2023-10-10');

-- Tabela MOVIMENTA_ESTOQUE
INSERT INTO MOVIMENTA_ESTOQUE (SALDO_ATUAL, DT_MOVIMENTACAO, SALDO_MOVIMENTACAO, ID_PRODUTO, ID_COMPRA, ID_PEDIDO, ID_ESTOQUE)
VALUES
    (100.00, '2023-10-01', -3.00, 1, 1, null, 1),
    (150.00, '2023-10-02', 0.00, 2, 2, NULL, 2),
    (200.00, '2023-10-03', -5.00, 3, 3, NULL, 3),
    (50.00, '2023-10-04', 0.00, 4, 4, NULL, 4),
    (300.00, '2023-10-05', -4.00, 5, 5, NULL, 5),
    (120.00, '2023-10-06', 0.00, 6, 6, NULL, 6),
    (180.00, '2023-10-07', -3.00, 7, 7, NULL, 7),
    (75.00, '2023-10-08', 0.00, 8, 8, NULL, 8),
    (250.00, '2023-10-09', -6.00, 9, 9, NULL, 9),
    (130.00, '2023-10-10', 0.00, 10, 10, NULL, 10);