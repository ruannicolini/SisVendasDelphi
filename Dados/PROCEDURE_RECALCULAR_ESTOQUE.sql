CREATE PROCEDURE IncrementaEstoque (@idProd int, @qtdIncrementa int) AS
BEGIN
	SELECT qtdEstoque FROM produto WHERE idProduto = @idProd
	
	UPDATE produto SET qtdEstoque = qtdEstoque + @qtdIncrementa WHERE idProduto = @idProd
END

CREATE PROCEDURE DecrementaEstoque(@idProd int, @qtdDecrementa int, @idPedido int) AS
BEGIN
	SELECT qtdEstoque FROM produto WHERE idProduto = @idProd
	
	UPDATE produto SET qtdEstoque = qtdEstoque - @qtdDecrementa WHERE idProduto = @idProd
END

CREATE PROCEDURE RecalcularEstoque AS
BEGIN
	-- Declarando variáveis que serão utilizadas pelos cursores
	DECLARE
	@idProd	AS INT,
	@idEntrada AS BIGINT,
	@qtdEntrada AS INT,
	@qtdIncrementa AS INT,
	@idProduto	AS INT,
	@idPedido	AS INT,
	@qtdSaida	AS INT,
	@qtdDecrementa AS INT
	
	-- Esvaziar o estoque
	DECLARE CursorEsvaziar CURSOR FOR
		SELECT idProduto FROM Produto
	
	OPEN CursorEsvaziar 
	
	FETCH NEXT FROM CursorEsvaziar INTO @idProd
	WHILE @@FETCH_STATUS = 0
	BEGIN
		UPDATE produto SET qtdEstoque = 0 WHERE idProduto = @idProd
		
		FETCH NEXT FROM CursorEsvaziar INTO @idProd
	END
	
	CLOSE CursorEsvaziar
	DEALLOCATE CursorEsvaziar
	
	-- Incrementar o estoque
	DECLARE CursorIncrementa CURSOR FOR
		SELECT idEntrada, idProduto, qtd FROM responsavel_estoque
	
	OPEN CursorIncrementa
	
	FETCH NEXT FROM CursorIncrementa INTO @idEntrada, @idProd, @qtdEntrada
	WHILE @@FETCH_STATUS = 0
	BEGIN
		EXEC IncrementaEstoque @idProd = @idProd, @qtdIncrementa = @qtdEntrada
		
		FETCH NEXT FROM CursorIncrementa INTO @idEntrada, @idProd, @qtdEntrada
	END
	
	CLOSE CursorIncrementa
	DEALLOCATE CursorIncrementa
	
	
	-- Decrementar o estoque
	DECLARE CursorDecrementa CURSOR FOR
		SELECT 
			pi.idProduto, pi.quantidade, pi.idPedido FROM pedido_item pi, pedido p
		WHERE
			pi.idPedido = p.idPedido
		AND
			p.faturado = 1
	
	OPEN CursorDecrementa
	
	FETCH NEXT FROM CursorDecrementa INTO @idProd, @qtdSaida, @idPedido
	WHILE @@FETCH_STATUS = 0
	BEGIN
		EXEC DecrementaEstoque @idProd = @idProd, @qtdDecrementa = @qtdSaida, @idPedido = @idPedido
		
		FETCH NEXT FROM CursorDecrementa INTO @idProd, @qtdSaida, @idPedido
	END	
	
	CLOSE CursorDecrementa
	DEALLOCATE CursorDecrementa
	
END
