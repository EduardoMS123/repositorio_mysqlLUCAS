#sub query

#notas fiscais emitidas do Márcio Almeida Silva
select * from notas_fiscais where MATRICULA = (select MATRICULA from tabela_de_vendedores where nome = "Márcio Almeida Silva");

select * from notas_fiscais as NF inner join tabela_de_vendedores as TV on NF.MATRICULA = TV.MATRICULA;

