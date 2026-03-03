create schema sucos_vendas;

use sucos_vendas;

select * from tabela_de_clientes;

select CPF, NOME from tabela_de_clientes;
select * from tabela_de_produtos where sabor = 'Manga' or not (EMBALAGEM = 'PET');
select * from tabela_de_produtos where sabor in ('Manga', 'Laranja');
select * from tabela_de_clientes where cidade in ('Rio de Janeiro', 'São Paulo') and idade >= 20;










