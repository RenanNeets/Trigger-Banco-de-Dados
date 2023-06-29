CREATE DATABASE bdTrigger

USE bdTrigger


CREATE TABLE tbFabricante(
	codFabricante INT PRIMARY KEY IDENTITY(1,1)
	,nomeFabricante VARCHAR(50)
)

CREATE TABLE tbFornecedor(
	codFornecedor INT PRIMARY KEY IDENTITY(1,1)
	,nomeFornecedor VARCHAR(50)
	,contatoFornecedor VARCHAR (20)
)

CREATE TABLE tbProduto(
	codProduto INT PRIMARY KEY IDENTITY(1,1)
	,descricaoProduto VARCHAR(50)
	,valorProduto MONEY
	,quantidadeProduto SMALLINT
	,codFabricante INT FOREIGN KEY REFERENCES tbFabricante (codFabricante)
	,codFornecedor INT FOREIGN KEY REFERENCES tbFornecedor (codFornecedor)
)

CREATE TABLE tbEntradaProduto(
	codEntradaProduto INT PRIMARY KEY IDENTITY(1,1)
	,dataEntradaProduto DATETIME
	,quantidadeEntradaProduto SMALLINT
	,codProduto INT FOREIGN KEY REFERENCES tbProduto (codProduto)
)

CREATE TABLE tbSaidaProduto(
	codSaidaProduto INT PRIMARY KEY IDENTITY(1,1)
	,dataSaidaProduto DATETIME
	,quantidadeSaidaProduto SMALLINT
	,codProduto INT FOREIGN KEY REFERENCES tbProduto (codProduto)
)

CREATE TABLE tbCliente(
	codCliente INT PRIMARY KEY IDENTITY(1,1)
	,nomeCliente VARCHAR (50)
	,cpfCliente CHAR (14)
	,emailCliente VARCHAR (50)
	,sexoCliente VARCHAR (1)
	,dataNascimentoCliente DATETIME
)

CREATE TABLE tbVenda(
	codVenda INT PRIMARY KEY IDENTITY(1,1)
	,dataVenda DATETIME
	,valorTotalVenda MONEY
	,codCliente INT FOREIGN KEY REFERENCES tbCliente (codCliente)
)

CREATE TABLE tbItensVenda(
	codItensVenda INT PRIMARY KEY IDENTITY(1,1)
	,quantidadeItensVenda SMALLINT
	,codProduto INT FOREIGN KEY REFERENCES tbProduto (codProduto)
	,codVenda INT FOREIGN KEY REFERENCES tbVenda (codVenda)
)