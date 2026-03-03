
#USANDO A CONDIÇÃO DISTINCT
select sabor from tabela_de_produtos;
select distinct sabor from tabela_de_produtos;

select distinct embalagem, tamanho from tabela_de_produtos where sabor = 'Laranja';
select distinct embalagem, tamanho, sabor from tabela_de_produtos where sabor = 'Laranja';
select distinct embalagem, tamanho, sabor, PRECO_DE_LISTA from tabela_de_produtos where sabor = 'Laranja';

-- quais os bairros da cidade do rio de janeiro que possuem clientes? -- 

select * from tabela_de_clientes;
select distinct bairro, cidade, estado from tabela_de_clientes where cidade = 'Rio de Janeiro';

#TESTANDO A CONDIÇÃO LIMIT
select * from tabela_de_produtos limit 10;
select * from tabela_de_produtos limit 2,10;
 
-- obtenha as 10 primeiras vendas do dia 01/01/2017

select * from notas_fiscais;
select * from notas_fiscais where DATA_VENDA = '2017/01/01' limit 10;

