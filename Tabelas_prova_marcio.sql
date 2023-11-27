create table CLIENTE (
	ID_CLIENTE int primary key auto_increment,
    NM_CLIENTE varchar(60) not null unique,
    RUA varchar(100),
	BAIRRO varchar(50),
    CIDADE varchar(30),
    CEP varchar(9),
    NUM_TELEFONE varchar(16) not null
    );
    
create table EMAIL(
	ID_EMAIL int primary key auto_increment,
    EMAIL VARCHAR(50) not null unique,
    ID_CLIENTE int references CLIENTE(ID_CLIENTE)
); 

create table PEDIDO(
	ID_PEDIDO int primary key auto_increment,
    DT_PEDIDO date not null,
    VALOR_PEDIDO decimal(10,2) not null,
    ID_CLIENTE int references CLIENTE(ID_CLIENTE)
    );
 
 create table PRODUTO(
	ID_PRODUTO int primary key auto_increment,
    NM_PRODUTO varchar(60) not null unique,
    DESCRICAO varchar(100) not null, 
    PRECO_VENDA decimal(10,2) not null
    );
    
create table PRODUTO_PEDIDO(
	QT_PRODUTO int not null,
    DT_PEDIDO date not null, 
    VALOR_UNIT decimal(10,2) not null,
	ID_PEDIDO int references PEDIDO(ID_PEDIDO),
	ID_PRODUTO int references PRODUTO(ID_PRODUTO)
    );
 
 create table FUNCIONARIO(
	ID_FUNCIONARIO int primary key auto_increment,
    NM_FUNCIONARIO varchar(100) not null,
    CARGO varchar(60) not null,
	SALARIO decimal(10,2) not null,
	DT_CONTRATACAO date not null
    );
    
create table COMPRA(
	ID_COMPRA int primary key auto_increment,
    DT_COMPRA date,
    VALOR_COMPRA decimal(10,2),
    ID_PRODUTO int references PRODUTO(ID_PRODUTO),
    ID_FUNCIONARIO int references FUNCIONARIO(ID_FUNCIONARIO)
    );

create table COMPRA_PRODUTO(
	QT_PRODUTO int not null,
    DT_COMPRA date not null,
    VALOR_UNIT decimal(10,2),
    ID_PRODUTO int references PRODUTO(ID_PRODUTO),
    ID_COMPRA int references COMPRA(ID_COMPRA)
    );
    
create table ESTOQUE(
	ID_ESTOQUE int primary key auto_increment,
    QT_ESTOQUE int not null,
    DT_ESTOQUE date not null
    );
    
create table MOVIMENTA_ESTOQUE(
	SALDO_ATUAL decimal(10,2) not null,
    DT_MOVIMENTACAO date not null,
    SALDO_MOVIMENTACAO decimal(10,2) not null,
	ID_PRODUTO int references PRODUTO(ID_PRODUTO),
    ID_COMPRA int references COMPRA(ID_COMPRA),
    ID_PEDIDO int references PEDIDO(ID_PEDIDO),
    ID_ESTOQUE int references ESTOQUE(ID_ESTOQUE)
    );