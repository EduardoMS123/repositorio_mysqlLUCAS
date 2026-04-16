
#Juntando tabelas e consultas

select * from tabela_de_vendedores;
select * from notas_fiscais;

select * from tabela_de_vendedores as TV
inner join notas_fiscais as NF
on TV.MATRICULA = NF.MATRICULA;

#Quantas notas fiscais cada vendedor emitiu?
select TV.MATRICULA, TV.NOME, count(*) as total_NF
from tabela_de_vendedores as TV
inner join notas_fiscais as NF
on TV.MATRICULA = NF.MATRICULA
group by TV.MATRICULA, TV.NOME;

/*Obtenha o faturamento anual da empresa, levando em consideração que o valor financeiro
das vendas é obtido pela multiplicação da quantidade pelo preço*/

select year(NF.DATA_VENDA) as ANO, sum(INF.QUANTIDADE * INF.PRECO) from notas_fiscais as NF
inner join itens_notas_fiscais as INF
on NF.NUMERO = INF.NUMERO
group by ANO;



