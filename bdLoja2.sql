CREATE DATABASE bdLoja2

USE bdLoja2

CREATE TABLE tbFabricante(
	codFabricante INT PRIMARY KEY IDENTITY(1,1)
	,nomeFabricante VARCHAR(20)
)
CREATE TABLE tbFornecedor(
	codFornecedor INT PRIMARY KEY IDENTITY(1,1)
	,nomeFornecedor VARCHAR(20)
	,contatoFornecedor VARCHAR(20)
)
CREATE TABLE tbProduto(
	codProduto INT PRIMARY KEY IDENTITY(1,1)
	,descricaoProduto VARCHAR(50)
	,valorProduto MONEY
	,quantidadeProduto BIGINT
	,codFornecedor INT FOREIGN KEY REFERENCES tbFornecedor (codFornecedor)
	,codFabricante INT FOREIGN KEY REFERENCES tbFabricante (codFabricante)
)
CREATE TABLE tbCliente(
	codCliente INT PRIMARY KEY IDENTITY(1,1)
	,nomeCliente  VARCHAR(50)
	,cpfCliente CHAR(14)
	,emailCliente VARCHAR(50)
	,sexoCliente CHAR(1)
	,dataNascimentoCliente DATE
)
CREATE TABLE tbVenda(
	codVenda INT PRIMARY KEY IDENTITY(1,1)
	,dataVenda DATETIME
	,valorTotalVenda MONEY
	,codCliente INT FOREIGN KEY REFERENCES tbCliente (codCliente)
)
CREATE TABLE tbItemVenda(
	codItemVenda INT PRIMARY KEY IDENTITY(1,1)
	,quantidadeItemVenda BIGINT
	,subTotalItemVenda MONEY
	,codVenda INT FOREIGN KEY REFERENCES tbVenda (codVenda)
	,codProduto INT FOREIGN KEY REFERENCES tbProduto (codProduto)
)
CREATE TABLE tbSaidaProduto(
	codSaidaProduto INT PRIMARY KEY IDENTITY(1,1)
	,dataSaidaProduto DATE
	,quantidadeSaidaProduto BIGINT
	,codProduto INT FOREIGN KEY REFERENCES tbProduto (codProduto)
)
CREATE TABLE tbEntradaProduto(
	codEntradaProduto INT PRIMARY KEY IDENTITY(1,1)
	,dataEntradaProduto DATE
	,quantidadeEntradaProduto BIGINT
	,codProduto INT FOREIGN KEY REFERENCES tbProduto (codProduto)
)
