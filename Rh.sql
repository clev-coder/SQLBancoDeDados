CREATE DATABASE db_rh;
 USE db_rh;
 
 -- Criar tabela 
 CREATE TABLE tb_Funcionarios (
 id bigint AUTO_INCREMENT,
  nome varchar(255) NOT NULL ,
  salario decimal NOT NULL ,
  funcao varchar (255) NOT NULL ,
  setor varchar (255) NOT NULL,
  Re bigint ,
  PRIMARY KEY (id)
  );
  
   INSERT INTO tb_Funcionarios (nome, salario, funcao, setor , Re)
    VALUES ( "Cleverson" , 1800.00, "Analista" , "Dp", 2003 );
    
    INSERT INTO tb_Funcionarios (nome, salario, funcao, setor , Re)
    VALUES ( "Carlos" , 1800.00, "Auxiliar" , "Recrutamento", 2023 );
    
    INSERT INTO tb_Funcionarios (nome, salario, funcao, setor , Re)
    VALUES ( "Lucas " , 1200.00, "Estagiario" , "Dp", 2222 );
    
    INSERT INTO tb_Funcionarios(nome, salario, funcao, setor , Re)
    VALUES ( "Matheus" , 1350.00, "Analista" , "Dp", 1004 );
    
    INSERT INTO tb_Funcionarios (nome, salario, funcao, setor , Re)
    VALUES ( "Gustavo" , 4800.00, "Gerente " , "Geral", 2003 );
   
    
    SELECT *  FROM tb_Funcionarios;
    
    SELECT * FROM tb_Funcionarios WHERE salario > 2000;
    DELETE FROM tb_Funcionarios WHERE id= 6 ;
    SELECT * FROM tb_Funcionarios WHERE salario < 2000;
    UPDATE tb_Funcionarios SET salario = 1560 WHERE id =1;
        
   
        

    
    
