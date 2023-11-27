insert into CLIENTE(NM_CLIENTE, RUA, BAIRRO, CIDADE, CEP, NUM_TELEFONE)
values ('José da Esquina', 'Rua Leandro', 'Shibuya', 'Toquio', '000-00000', '(12) 00000-3333');

update pedido
set valor_pedido = 500000.20
where id_pedido = 2;

select * from pedido where id_pedido = 2;
select * from cliente where id_cliente = 21;

delete from cliente 
where id_cliente = 20;

select * from cliente where id_cliente = 20;
