USE bdTrigger

SET IDENTITY_INSERT tbFabricante ON

INSERT INTO tbFabricante( codFabricante,nomeFabricante)
VALUES('1','SONY')
	,('2','MICROSOFT')
	,('3','NINTENDO')

SET IDENTITY_INSERT tbFabricante OFF

SET IDENTITY_INSERT tbFornecedor ON

INSERT INTO tbFornecedor( codFornecedor,nomeFornecedor,contatoFornecedor)
VALUES('1','SONY DELIVERY','Sony@Gmail.com')
	,('2','MICROSOFT DELIVER','Microsoft@Gmail.com')
	,('3','NINTENDO DELIVER','Nintendo@Gmail.com')

SET IDENTITY_INSERT tbFornecedor OFF

SET IDENTITY_INSERT tbProduto ON

INSERT INTO tbProduto( codProduto,descricaoProduto,valorProduto,quantidadeProduto,codFabricante,codFornecedor)
VALUES('1','PS5',4500,'10','1','1')
	,('2','XBOX S',2000,'20','2','2')
	,('3','NINTENDO SWITCH',3000,'30','3','3')

SET IDENTITY_INSERT tbProduto OFF

SET IDENTITY_INSERT tbCliente ON

INSERT INTO tbCliente( codCliente,nomeCliente,cpfCliente,emailCliente,sexoCliente,dataNascimentoCliente)
VALUES('1','Henrique','711.811.911-11','email@gmail.com','M','16/05/2002')
	,('2','Junior','711.811.911-11','email2@gmail.com','M','26/06/1985')
	,('3','Luciano','711.811.911-11','email3@gmail.com','M','11/04/1987')

SET IDENTITY_INSERT tbCliente OFF

SET IDENTITY_INSERT tbVenda ON

INSERT INTO tbVenda( codVenda,dataVenda,valorTotalVenda,codCliente)
VALUES('1','25/06/2023',4500,'1')
	,('2','25/06/2023',2000,'2')
	,('3','25/06/2023',3000,'3')

SET IDENTITY_INSERT tbVenda OFF

SET IDENTITY_INSERT tbItensVenda ON

INSERT INTO tbItensVenda( codItensVenda,quantidadeItensVenda,codProduto,codVenda)
VALUES('1',30,'1','1')
	,('2',40,'2','2')
	,('3',50,'3','3')

SET IDENTITY_INSERT tbItensVenda OFF

SET IDENTITY_INSERT tbEntradaProduto ON

INSERT INTO tbEntradaProduto( codEntradaProduto,dataEntradaProduto,quantidadeEntradaProduto,codProduto)
VALUES('1','23/06/2023',10,'1')
	,('2','24/06/2023',15,'2')
	,('3','25/06/2023',25,'3')

SET IDENTITY_INSERT tbEntradaProduto OFF

SET IDENTITY_INSERT tbSaidaProduto ON

INSERT INTO tbSaidaProduto( codSaidaProduto,dataSaidaProduto,quantidadeSaidaProduto,codProduto)
VALUES('1','26/06/2023',5,'1')
	,('2','27/06/2023',10,'2')
	,('3','28/06/2023',15,'3')

SET IDENTITY_INSERT tbSaidaProduto OFF