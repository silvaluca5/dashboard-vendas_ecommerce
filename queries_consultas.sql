USE ProjetoEcommerce;
GO

-- 1. Ver as primeiras 10 linhas da tabela para confirmar a estrutura
SELECT TOP 10
	Order_ID,
	Order_Date,
	Customer_Name,
	State,
	Category,
	Sales
FROM VendasEcommerce;

-- 2. Calcular o faturamento Total e a Quantidade Total de Vendas
SELECT
	COUNT(Order_ID) AS Total_Pedidos,
	SUM(Sales) AS Faturamento_Total
FROM VendasEcommerce;

-- 3. Descobrir o Faturamento por Categoria de Produto
SELECT
	Category,
	SUM(Sales) AS Faturamento_Categoria
FROM VendasEcommerce
GROUP BY Category
ORDER BY Faturamento_Categoria DESC;