
#UTILIZANDO ORDER BY

SELECT sabor, embalagem FROM tabela_de_produtos;
SELECT * FROM tabela_de_produtos ORDER BY sabor, embalagem;
SELECT * FROM tabela_de_produtos ORDER BY PRECO_DE_LISTA, embalagem;
SELECT * FROM tabela_de_produtos ORDER BY sabor DESC;
SELECT * FROM tabela_de_produtos ORDER BY PRECO_DE_LISTA DESC;

-- QUAL OU QUAIS FORAM AS MAIORES VENDAS DO PRODUTO "Linha Refrescante - 1 Litro - Morango/Limão"
-- em QUANTIDADE E PREÇO 1101035

SELECT * FROM itens_notas_fiscais;
SELECT * FROM itens_notas_fiscais WHERE CODIGO_DO_PRODUTO = "1101035";
SELECT * FROM tabela_de_produtos WHERE NOME_DO_PRODUTO = "Linha Refrescante - 1 Litro - Morango/Limão";
SELECT * FROM itens_notas_fiscais where CODIGO_DO_PRODUTO = "1101035" order by QUANTIDADE DESC, PRECO DESC;

#agrupando os resultados (group by)

select ESTADO, SUM(LIMITE_DE_CREDITO) AS PRECO_TOTAL FROM tabela_de_clientes GROUP BY ESTADO;


