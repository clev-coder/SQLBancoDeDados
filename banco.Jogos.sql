CREATE DATABASE db_game_online;

USE db_game_online;

CREATE TABLE tb_classe (
id bigint AUTO_INCREMENT not null , 
nome VARCHAR (255) NOT NULL,
habilidade  VARCHAR (255)NOT NULL,
arma  VARCHAR(255) NOT NULL ,
PRIMARY KEY (id)
); 

INSERT INTO tb_classe ( nome ,habilidade , arma)
VALUES ( "roobot", "visao noturna" ,"laiser");

INSERT INTO tb_classe ( nome ,habilidade , arma)
VALUES ( " arqueiro", "bola de neve" ,"flecha");

INSERT INTO tb_classe ( nome ,habilidade , arma)
VALUES ( "fire", "lava de fogo","cajado");

INSERT INTO tb_classe ( nome ,habilidade , arma)
VALUES ( "feiticeiro", "magia" ,"varinha");

INSERT INTO tb_classe ( nome ,habilidade , arma)
VALUES ( "invisible", "ficar oculto" ,"capa");

SELECT * FROM tb_classe ;

CREATE TABLE tb_personagens (
id bigint AUTO_INCREMENT not null , 
nome VARCHAR (255) NOT NULL,
nivel  INT (255)NOT NULL,
ataque  INT(255) NOT NULL ,
defesa INT,
classe_id bigint,
PRIMARY KEY (id),
FOREIGN KEY ( classe_id) REFERENCES tb_classe (id) 
); 


INSERT INTO tb_personagens (nome ,nivel , ataque ,defesa ,classe_id)
VALUES ( " jett " , 70 , 1000 , 3000, 1 );
INSERT INTO tb_personagens (nome ,nivel , ataque ,defesa ,classe_id)
 VALUES ( " raze " , 80 , 1000 , 600, 2 );
 
 
 INSERT INTO tb_personagens (nome ,nivel , ataque ,defesa ,classe_id)
VALUES ( " neon " , 90 , 2000 , 1200, 3);
INSERT INTO tb_personagens (nome ,nivel , ataque ,defesa ,classe_id)
 VALUES ( " caffit " , 80 , 1000 , 600, 4 );
 
 INSERT INTO tb_personagens (nome ,nivel , ataque ,defesa ,classe_id)
VALUES ( " dop " , 90 , 2000 , 6000, 4 );
INSERT INTO tb_personagens (nome ,nivel , ataque ,defesa ,classe_id)
 VALUES ( " prets " , 80 , 1000 , 600, 5 );
 
 INSERT INTO tb_personagens (nome ,nivel , ataque ,defesa ,classe_id)
VALUES ( " abraan " , 90 , 2000 , 2000, 4 );
INSERT INTO tb_personagens (nome ,nivel , ataque ,defesa ,classe_id)
 VALUES ( " goldem " , 80 , 1000 , 600, 3 );
 
 INSERT INTO tb_personagens (nome ,nivel , ataque ,defesa ,classe_id)
VALUES ( " robert " , 100 , 6000 , 500, 4 );
INSERT INTO tb_personagens (nome ,nivel , ataque ,defesa ,classe_id)
 VALUES ( " arigatu " , 80 , 1000 , 600, 3 );
 
 SELECT * FROM tb_personagens;
 
 
 SELECT * FROM  tb_personagens WHERE ataque >2000;
 
 SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000 AND 2000;
 
 SELECT * FROM tb_personagens WHERE nome LIKE "%c%"; 
 
 SELECT  * FROM tb_classe INNER JOIN tb_personagens
 ON tb_personagens.classe_id = tb_classe.id; 
 
  SELECT  * FROM tb_classe INNER JOIN tb_personagens
 ON tb_personagens.classe_id = tb_classe.id
 WHERE tb_classe.nome = "roobot"; 
 
 
 


