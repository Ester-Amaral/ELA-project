CREATE database db_projeto;
use db_projeto;
CREATE TABLE tb_usuarios(
    ID int AUTO_INCREMENT not null,
    Username varchar(30) not null,
    email varchar(50) not null, 
    senha varchar(32) not null, 
    tipo varchar(30),
    PRIMARY KEY(ID));


create table tb_instituicoes(
    Id_institucao Int auto_increment,
    Nome Varchar(50) NOT Null,
    Telefone Varchar(30) NOT Null,
    Email Varchar(50) NOT NULL,
    Rua  Varchar(50),
    Cidade Varchar(30),
    Bairro Varchar(50),
    Estado Varchar(30),
    link_site Varchar(3000),
    Tipo Varchar(30),
    Primary key (Id_institucao)
);

create table tb_solicitacoes(
    Id_institucao Int auto_increment,
    Nome Varchar(50) NOT Null,
    Telefone Varchar(30) NOT Null,
    Email Varchar(50) NOT NULL,
    Rua  Varchar(50),
    Cidade Varchar(30),
    Bairro Varchar(50),
    Estado Varchar(30),
    link_site Varchar(3000),
    Tipo Varchar(30),
    Primary key (Id_institucao)
);
    
create table tb_curso(
    Id Int auto_increment,
    Id_institucao int NOT NULL,
    Nome Varchar(50) NOT Null,
    Descrição Varchar(200) NOT NULL,
    CONSTRAINT pk_id Primary key (Id)
    
);

ALTER TABLE tb_curso
ADD CONSTRAINT fk_id_instituicao FOREIGN KEY(Id_institucao) REFERENCES tb_instituicoes (Id_institucao);
 
INSERT into `tb_usuarios` (Username, email, senha, tipo) VALUES ('Administrador', 'admin@gmail.com', md5('111'), 'admin');
INSERT into `tb_usuarios` (Username, email, senha, tipo) VALUES ('Leticia', 'leticia@gmail.com', md5('123'), 'admin');
INSERT into `tb_usuarios` (Username, email, senha, tipo) VALUES ('Alandra', 'alandra@gmail.com', md5('123'), 'admin');
INSERT into `tb_usuarios` (Username, email, senha, tipo) VALUES ('Ester', 'ester@gmail.com', md5('123'), 'admin');
INSERT into `tb_usuarios` (Username, email, senha) VALUES ('Robson', 'robson@gmail.com', md5('326133'));


INSERT INTO `tb_instituicoes`( `Nome`, `Telefone`, `Email`, `Rua`, `Cidade`, `Bairro`, `Estado`, `link_site`, `Tipo`) VALUES ('Etec Bento Quirino','(19) 3252-3596','atendimento@etecbentoquirino.com.br','Orosimbo Maia','Campinas','Vila Itapura','São Paulo (SP)','https://etecbentoquirino.com.br/new/','Pública');
INSERT INTO `tb_instituicoes`( `Nome`, `Telefone`, `Email`, `Rua`, `Cidade`, `Bairro`, `Estado`, `link_site`, `Tipo`) VALUES ('IFMG Campus Ouro Branco','(31) 2137-5700','secretaria.ourobranco@ifmg.edu.br','Afonso Sardinha','Ouro Branco','Pioneiros','Minas Gerais (MG)','https://www.ifmg.edu.br/ourobranco','Pública');
INSERT INTO `tb_instituicoes`(`Nome`, `Telefone`, `Email`, `Rua`, `Cidade`, `Bairro`, `Estado`, `link_site`, `Tipo`) VALUES ('Green Tecnologia','(11) 3253-5299','atendimento@green.com.br',' Av. Paulista','São Paulo','Bela Vista','São Paulo (SP)','https://www.green.com.br/site/','Particular');