-- Toda vez que for inserida um novo registro em responsavel_estoque
CREATE TRIGGER TRIGGER_ADD_ESTOQUE
ON responsavel_estoque
FOR INSERT
AS
BEGIN
	DECLARE
	@IDPRODUTO	INTEGER,
	@qtdEstoque 	INTEGER,
	@QTD_A_SOMAR	INTEGER
	
	-- Pega os dados do ultimo registro add a responsavel_estoque 
	SELECT @IDPRODUTO = idProduto, @QTD_A_SOMAR = qtd FROM INSERTED
	-- Pega a quantidade do estoque atual 
	SELECT @qtdEstoque = qtdEstoque FROM Produto WHERE idProduto = @IDPRODUTO
	-- Atualiza Estoque
	UPDATE Produto SET qtdEstoque = @qtdEstoque + @QTD_A_SOMAR WHERE idProduto = @idProduto
END
GO



-- Toda vez que for inserida um novo registro em faturamento
CREATE TRIGGER TRIGGER_SUBT_ESTOQUE
ON faturamento
FOR INSERT
AS
BEGIN
	DECLARE @IDPEDIDO	INTEGER;
	SELECT @IDPEDIDO = idPedido from inserted
	UPDATE produto SET qtdEstoque = qtdEstoque - p.quantidade from  pedido_item p where p.idPedido = @IDPEDIDO and p.idProduto = produto.idProduto

END
GO

-- Excluiu os pedido_item do pedido excluído
CREATE TRIGGER TRIGGER_PED_ITEM
ON pedido 
AFTER DELETE
AS
BEGIN
	DECLARE @IDPEDIDO INTEGER;
	SELECT @IDPEDIDO = idPedido from deleted
	DELETE FROM pedido_item WHERE pedido_item.idPedido = @IDPEDIDO
END
GO

-- Diminuiu a quantidade de estoque da tabela produto quando uma entrada de estoque é excluída
CREATE TRIGGER TRIGGER_ENT_EST_DEL
ON responsavel_estoque 
AFTER DELETE
AS
BEGIN
	DECLARE @IDENTRADA INTEGER;
	DECLARE @QTD INTEGER;
	DECLARE @IDPRODUTO INTEGER
	
	SELECT @IDENTRADA = idEntrada, @QTD = qtd, @IDPRODUTO = idProduto from deleted
	UPDATE produto SET qtdEstoque = qtdEstoque - @QTD WHERE produto.idProduto = @IDPRODUTO
END
GO
