CREATE DATABASE db_pizzaria;

USE db_pizzaria;

CREATE TABLE tb_cateroria(
id bigint AUTO_INCREMENT not null , 
tipoSabor VARCHAR (255) NOT NULL,
primary key  (id)
);

INSERT INTO tb_categoria (tipoSabor)
VALUE("doce");

INSERT INTO tb_categoria (tipoSabor)
VALUE( "do chefe " );

INSERT INTO tb_categoria (tipoSabor)
VALUE( " especial " );

INSERT INTO tb_categoria (tipoSabor)
VALUE( "Tradicional" );


CREATE TABLE tb_pizzaria(
id bigint AUTO_INCREMENT not null , 
sabor VARCHAR (255) NOT NULL,
tipoSabor_id bigint,
tamanho VARCHAR(255),
valor DECIMAL (8,2),
primary key  (id),
FOREIGN KEY (tipoSabor_id) references tb_categoria(id)
);

INSERT INTO tb_pizza (sabor, tipoSabor_id, tamanho, valor)
VALUE ("brocolis", 4, "media", 34.90);

INSERT INTO tb_pizza (sabor, tipoSabor_id, tamanho, valor)
VALUE ("cachorro-quente", 3, "extra grande", 60.00);

INSERT INTO tb_pizza (sabor, tipoSabor_id, tamanho, valor)
VALUE ("baiana com bacon", 2, "grande ", 50.00);

INSERT INTO tb_pizza (sabor, tipoSabor_id, tamanho, valor)
VALUE ("brigadeiro", 1, "prquena ", 27.00);

INSERT INTO tb_pizza (sabor, tipoSabor_id, tamanho, valor)
VALUE ("frango ", 4, " broto", 27.00); 

SELECT * FROM tb_pizza;

SELECT* FROM tb_pizzaria WHERE valor > 45;
SELECT * FROM tb_pizzaria WHERE valor  BETWEEN 29 AND 60;
SELECT * FROM tb_pizzaria WHERE sabor LIKE "% c %";

SELECT * FROM tb_pizzaria INNER JOIN tb_categoria ON tb_pizzaria.tipoSabor_id = tb_categoria.id;

SELECT * FROM tb_pizzaria INNER JOIN tb_categoria ON tb_pizzaria.tipoSabor_id = tb_categoria.id WHERE tb_categoria.tipoSabor="doce";





