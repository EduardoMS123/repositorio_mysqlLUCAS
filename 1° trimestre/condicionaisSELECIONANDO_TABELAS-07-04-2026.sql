/*O  volume_de_compra (tabela_de_clientes) é a quantidade máxima (L)
que um cliente pode comprar por mês.
A quantidade (itens_notas_fiscais) é o campo que repressenta a 
quantidade do produto comprado.
A partir da comparação do volume de compras e da quantidade é 
possivel dizer se as vendas do mês foram válidas ou inválidas.*/

#Seleção das colunas de interesse
select TP.SABOR, NF.DATA_VENDA, INF.QUANTIDADE 
from tabela_de_produtos as TP
inner join itens_notas_fiscais as INF
on TP.CODIGO_DO_PRODUTO = INF.CODIGO_DO_PRODUTO
inner join notas_fiscais as NF
on NF.NUMERO = INF.NUMERO;

#alterar a coluna de data
select TP.SABOR, date_format(NF.DATA_VENDA, "%Y - %m") as DATA_VENDA, INF.QUANTIDADE 
from tabela_de_produtos as TP
inner join itens_notas_fiscais as INF
on TP.CODIGO_DO_PRODUTO = INF.CODIGO_DO_PRODUTO
inner join notas_fiscais as NF
on NF.NUMERO = INF.NUMERO;

#usando month
select TP.SABOR, month(NF.DATA_VENDA), INF.QUANTIDADE 
from tabela_de_produtos as TP
inner join itens_notas_fiscais as INF
on TP.CODIGO_DO_PRODUTO = INF.CODIGO_DO_PRODUTO
inner join notas_fiscais as NF
on NF.NUMERO = INF.NUMERO;

#Manipular a data (ano e mês)
select NF.CPF, DATE_FORMAT(NF.DATA_VENDA, '%Y-%m') as DATA_VENDA, INF.QUANTIDADE
from notas_fiscais as NF
inner join itens_notas_fiscais as INF
on NF.NUMERO = INF.NUMERO;

#Soma para obter a quantidade total
select NF.CPF,
DATE_FORMAT(NF.DATA_VENDA, '%Y-%m') as DATA_VENDA,
sum(INF.QUANTIDADE) as QUANTIDADE
from notas_fiscais as NF
inner join itens_notas_fiscais as INF
on NF.NUMERO = INF.NUMERO
group by NF.CPF, DATA_VENDA;

/*Obter o volume de compra da tabela clientes*/
select * from tabela_de_clientes;

select TC.CPF, TC.NOME, TC.VOLUME_DE_COMPRA as QNTD_LIMITE
FROM tabela_de_clientes AS TC;

select NF.CPF, TC.NOME, 
SUM(TC.VOLUME_DE_COMPRA) AS VOLUME_COMPRA,
DATE_FORMAT(NF.DATA_VENDA, '%Y-%m') as DATA_VENDA,
sum(INF.QUANTIDADE) as QUANTIDADE
from notas_fiscais as NF
inner join itens_notas_fiscais as INF
on NF.NUMERO = INF.NUMERO
INNER JOIN tabela_de_clientes AS TC
ON TC.CPF = NF.CPF
GROUP BY NF.CPF, DATA_VENDA;





