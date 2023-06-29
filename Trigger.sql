USE bdTrigger

--Criar uma trigger que atualiza a quantidade de produtos vendidos na tabela tbProduto após uma venda:

CREATE TRIGGER atualizarQuantidadeVenda
ON tbItensVenda
AFTER INSERT
AS
BEGIN
    UPDATE p
    SET quantidadeProduto = quantidadeProduto - i.quantidadeItensVenda
    FROM tbProduto p
    INNER JOIN inserted i ON p.codProduto = i.codProduto;
END;

--Criar uma trigger que, quando for inserida uma nova entrada de produtos na tbEntradaProduto, a quantidade desse produto seja atualizada e aumentada na tabela tbProduto;

CREATE TRIGGER atualizarQuantidadeEntrada
ON tbEntradaProduto
AFTER INSERT
AS
BEGIN
    UPDATE p
    SET quantidadeProduto = quantidadeProduto + i.quantidadeEntradaProduto
    FROM tbProduto p
    INNER JOIN inserted i ON p.codProduto = i.codProduto;
END;

--Criar uma trigger que, quando for feita uma venda de um determinado produto, seja feito um Insert na tbSaidaProduto.

CREATE TRIGGER registrarSaidaProduto
ON tbItensVenda
AFTER INSERT
AS
BEGIN
    DECLARE @codVenda INT;
    SELECT @codVenda = codVenda FROM inserted;

    INSERT INTO tbSaidaProduto (dataSaidaProduto, quantidadeSaidaProduto, codProduto)
    SELECT GETDATE(), i.quantidadeItensVenda, i.codProduto
    FROM inserted i
    WHERE i.codVenda = @codVenda;
END;
