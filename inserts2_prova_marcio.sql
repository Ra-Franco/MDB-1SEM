-- Tabela CLIENTE
INSERT INTO CLIENTE (NM_CLIENTE, RUA, BAIRRO, CIDADE, CEP, NUM_TELEFONE)
VALUES
    ('Cliente 11', 'Rua K', 'Bairro X', 'Cidade 1', '12345-678', '(111) 222-3333'),
    ('Cliente 12', 'Rua L', 'Bairro Y', 'Cidade 2', '23456-789', '(222) 333-4444'),
    ('Cliente 13', 'Rua M', 'Bairro Z', 'Cidade 3', '34567-890', '(333) 444-5555'),
    ('Cliente 14', 'Rua N', 'Bairro X', 'Cidade 1', '12345-678', '(444) 555-6666'),
    ('Cliente 15', 'Rua O', 'Bairro Y', 'Cidade 2', '23456-789', '(555) 666-7777'),
    ('Cliente 16', 'Rua P', 'Bairro Z', 'Cidade 3', '34567-890', '(666) 777-8888'),
    ('Cliente 17', 'Rua Q', 'Bairro X', 'Cidade 1', '12345-678', '(777) 888-9999'),
    ('Cliente 18', 'Rua R', 'Bairro Y', 'Cidade 2', '23456-789', '(888) 999-0000'),
    ('Cliente 19', 'Rua S', 'Bairro Z', 'Cidade 3', '34567-890', '(999) 000-1111'),
    ('Cliente 20', 'Rua T', 'Bairro X', 'Cidade 1', '12345-678', '(000) 111-2222');

-- Tabela EMAIL
INSERT INTO EMAIL (EMAIL, ID_CLIENTE)
VALUES
    ('cliente11@example.com', 11),
    ('cliente12@example.com', 12),
    ('cliente13@example.com', 13),
    ('cliente14@example.com', 14),
    ('cliente15@example.com', 15),
    ('cliente16@example.com', 16),
    ('cliente17@example.com', 17),
    ('cliente18@example.com', 18),
    ('cliente19@example.com', 19),
    ('cliente20@example.com', 20);

-- Tabela PEDIDO
INSERT INTO PEDIDO (DT_PEDIDO, VALOR_PEDIDO, ID_CLIENTE)
VALUES
    ('2023-11-01', 90.00, 11),
    ('2023-11-02', 110.75, 12),
    ('2023-11-03', 245.50, 13),
    ('2023-11-04', 75.25, 14),
    ('2023-11-05', 180.30, 15),
    ('2023-11-06', 105.60, 16),
    ('2023-11-07', 220.45, 17),
    ('2023-11-08', 68.90, 18),
    ('2023-11-09', 125.75, 19),
    ('2023-11-10', 198.00, 20);

-- Tabela PRODUTO
INSERT INTO PRODUTO (NM_PRODUTO, DESCRICAO, PRECO_VENDA)
VALUES
    ('Produto 11', 'Descrição do Produto 11', 29.99),
    ('Produto 12', 'Descrição do Produto 12', 39.99),
    ('Produto 13', 'Descrição do Produto 13', 9.99),
    ('Produto 14', 'Descrição do Produto 14', 49.99),
    ('Produto 15', 'Descrição do Produto 15', 59.99),
    ('Produto 16', 'Descrição do Produto 16', 14.99),
    ('Produto 17', 'Descrição do Produto 17', 24.99),
    ('Produto 18', 'Descrição do Produto 18', 34.99),
    ('Produto 19', 'Descrição do Produto 19', 4.99),
    ('Produto 20', 'Descrição do Produto 20', 64.99);

-- Tabela PRODUTO_PEDIDO
INSERT INTO PRODUTO_PEDIDO (QT_PRODUTO, DT_PEDIDO, VALOR_UNIT, ID_PEDIDO, ID_PRODUTO)
VALUES
    (2, '2023-11-01', 29.99, 11, 11),
    (3, '2023-11-02', 39.99, 12, 12),
    (4, '2023-11-03', 9.99, 13, 13),
    (1, '2023-11-04', 49.99, 14, 14),
    (5, '2023-11-05', 59.99, 15, 15),
    (2, '2023-11-06', 14.99, 16, 16),
    (3, '2023-11-07', 24.99, 17, 17),
    (1, '2023-11-08', 34.99, 18, 18),
    (6, '2023-11-09', 4.99, 19, 19),
    (2, '2023-11-10', 64.99, 20, 20);

-- Tabela FUNCIONARIO
INSERT INTO FUNCIONARIO (NM_FUNCIONARIO, CARGO, SALARIO, DT_CONTRATACAO)
VALUES
    ('Funcionário 11', 'Cargo 1', 3000.00, '2023-11-15'),
    ('Funcionário 12', 'Cargo 2', 3500.00, '2023-11-20'),
    ('Funcionário 13', 'Cargo 1', 3200.00, '2023-11-25'),
    ('Funcionário 14', 'Cargo 3', 4000.00, '2023-11-30'),
    ('Funcionário 15', 'Cargo 2', 3600.00, '2023-11-05'),
    ('Funcionário 16', 'Cargo 1', 3100.00, '2023-11-10'),
    ('Funcionário 17', 'Cargo 3', 4200.00, '2023-11-15'),
    ('Funcionário 18', 'Cargo 2', 3700.00, '2023-11-20'),
    ('Funcionário 19', 'Cargo 1', 3300.00, '2023-11-25'),
    ('Funcionário 20', 'Cargo 2', 3500.00, '2023-11-30');

-- Tabela COMPRA
INSERT INTO COMPRA (DT_COMPRA, VALOR_COMPRA, ID_PRODUTO, ID_FUNCIONARIO)
VALUES
    ('2023-11-01', 100.00, 11, 11),
    ('2023-11-02', 105.50, 12, 12),
    ('2023-11-03', 220.25, 13, 13),
    ('2023-11-04', 60.75, 14, 14),
    ('2023-11-05', 180.30, 15, 15),
    ('2023-11-06', 125.60, 16, 16),
    ('2023-11-07', 200.45, 17, 17),
    ('2023-11-08', 85.90, 18, 18),
    ('2023-11-09', 140.75, 19, 19),
    ('2023-11-10', 220.00, 20, 20);

-- Tabela COMPRA_PRODUTO
INSERT INTO COMPRA_PRODUTO (QT_PRODUTO, DT_COMPRA, VALOR_UNIT, ID_PRODUTO, ID_COMPRA)
VALUES
    (2, '2023-11-01', 29.99, 11, 21),
    (3, '2023-11-02', 39.99, 12, 22),
    (4, '2023-11-03', 9.99, 13, 23),
    (1, '2023-11-04', 49.99, 14, 24),
    (5, '2023-11-05', 59.99, 15, 25),
    (2, '2023-11-06', 14.99, 16, 26),
    (3, '2023-11-07', 24.99, 17, 27),
    (1, '2023-11-08', 34.99, 18, 28),
    (6, '2023-11-09', 4.99, 19, 29),
    (2, '2023-11-10', 64.99, 20, 30);

-- Tabela ESTOQUE
INSERT INTO ESTOQUE (QT_ESTOQUE, DT_ESTOQUE)
VALUES
    (110, '2023-11-01'),
    (130, '2023-11-02'),
    (180, '2023-11-03'),
    (70, '2023-11-04'),
    (250, '2023-11-05'),
    (130, '2023-11-06'),
    (220, '2023-11-07'),
    (100, '2023-11-08'),
    (200, '2023-11-09'),
    (110, '2023-11-10');

-- Tabela MOVIMENTA_ESTOQUE
INSERT INTO MOVIMENTA_ESTOQUE (SALDO_ATUAL, DT_MOVIMENTACAO, SALDO_MOVIMENTACAO, ID_PRODUTO, ID_COMPRA, ID_PEDIDO, ID_ESTOQUE)
VALUES
    (110.00, '2023-11-01', -2.00, 11, 31, NULL, 11),
    (130.00, '2023-11-02', 0.00, 12, 32, NULL, 12),
    (180.00, '2023-11-03', -4.00, 13, 33, NULL, 13),
    (70.00, '2023-11-04', -1.00, 14, 34, NULL, 14),
    (250.00, '2023-11-05', -5.00, 15, 35, NULL, 15),
    (130.00, '2023-11-06', 0.00, 16, 36, NULL, 16),
    (220.00, '2023-11-07', -4.00, 17, 37, NULL, 17),
    (100.00, '2023-11-08', -1.00, 18, 38, NULL, 18),
    (200.00, '2023-11-09', -6.00, 19, 39, NULL, 19),
    (110.00, '2023-11-10', 0.00, 20, 40, NULL, 20);