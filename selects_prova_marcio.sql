select * from produto p
left join produto_pedido pd
on p.id_produto = pd.id_produto
where p.id_produto = 2
order by pd.dt_pedido desc;

select * from estoque
where dt_estoque > '2023-11-01';

select * from email
where id_cliente = 1;

select * from compra_produto
where id_produto = 4;

select * from movimenta_estoque
where dt_movimentacao > '2023-10-03'
order by saldo_movimentacao asc;

select * from pedido
where id_cliente = 10;

select * from funcionario 
where salario > 3300
order by salario desc;

select * from produto_pedido
order by dt_pedido desc;

select * from compra_produto
where qt_produto > 6;

select * from estoque
where qt_estoque <5;