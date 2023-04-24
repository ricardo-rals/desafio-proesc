-- 1. O cliente gostaria de saber quantos produtos ele possui em cada categoria. Qual SQL você faria para realizar essa consulta?
SELECT categories.name AS Categoria, count(products.name) AS Quantidade FROM products, categories WHERE products.category_id = categories.id GROUP BY categories.id;

-- 2. Além disso, também quer saber a média de preços de cada categoria. Monte o SQL para essa solicitação
SELECT categories.name AS Categoria, AVG(products.price) AS Média FROM products, categories WHERE products.category_id = categories.id GROUP BY categories.id;

-- 3. Faça um SQL para atualizar todos os produtos da categoria Cremes e Geleias para a categoria Frutas
UPDATE products SET products.category_id = 1 WHERE products.category_id = 2;