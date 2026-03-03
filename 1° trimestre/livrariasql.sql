create schema livraria;
use livraria;

create table CLIENTE(
ID_cliente int auto_increment primary key not null,
CPF varchar(11) not null,
RG varchar(9) not null,
Nome_cliente varchar(100) not null,
DT_nasc date not null,
idade int not null,
endereço varchar(50) ,
telefone varchar(15) ,
email varchar(100) 
);


insert into CLIENTE(CPF, RG, Nome_cliente, DT_nasc, idade, endereço, telefone, email) values
('12245623354','123348974','juninho','2000-02-20','26','rua juninhos ferreira','43933458222','juninhocacadordeporco@bmail.com'),
('11149021304','890083621','Aninha','1999-10-12','27','rua passaros brancos','54912314531','aninha1234567890@dominio.com'),
('13312144411','629120377','Jurema','1990-02-04','36','rua Chatonildo','12911672334','juremasantos.joca@outbook.com'),
('16755632255','920462823','Antônio Rocha Carlos','2000-02-01','26','rua boboquinha','89912321254','antonio.rocha.carlos@bmail.com'),
('19089948978','620462930','Mariana Clara','2001-02-25','25','rua Barros Sujos','43988901209','mariana.clara8900@bmail.com');

select * from CLIENTE
