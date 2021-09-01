
/*Comandos básicos MYSQL:*/
/*TODOS os comandos devem terminar com PONTO E VÍRGULA (;)*/

SHOW DATABASE; /*-Mostrar tabelas*/

CREATE DATABASE nomedobanco; /*-Criar um novo db*/

USE nomedobanco; /*-Passa a usar tal banco*/

SHOW TABLES; /*-Mostrar tabelas daquele banco*/


/*Criar tabela: Passa o nome da tabela, suas colunas e tipo de dados (além de outras configurações opcionais)*/
CREATE TABLE nometabela(
	nome VARCHAR(50),
	email VARCHAR(100),
	idade INT
);

DESCRIBE nometabela; /*-Ver a estrutura de uma tabela*/

/*Inserir dados em uma tabela - Passa o nome da tabela, os campos que receberão dados e os valores para cada campo informado, respeitando seu tipo*/ 
INSERT INTO nometabela(nome, email, idade) VALUES(
	"Flamarion Fagundes Pinto",
	"flamarionfp@gmail.com",
	18
);

/*Ver DADOS (Listar) -Passa os campos que deseja, from (de) nometabela (nome da tabela)*/
/* ASTERISCO (*) significa todos */

SELECT * FROM usuarios;

/*Especificando uma consulta (query) sql com WHERE*/
/*Listando os nomes dos usuários QUE TEM idade IGUAL (=) a 8*/
SELECT nome FROM usuarios WHERE idade = 18;


/*Listando TODOS OS CAMPOS da tabela usuário onde o nome seja IGUAL (=) a "Flamarion"*/
SELECT * FROM usuarios WHERE nome = "Flamarion";


/*Listando os usuários MENORES de IDADE*/
SELECT * FROM usuarios WHERE idade < 18;


/*Deletar Dados específicos*/
/*SEMPRE PASSAR O WHERE para não deletar tudo*/
/*Deletando o usuário que tiver o nome Carlos Peixoto*/
DELETE FROM usuarios WHERE nome = "Carlos Peixoto";

/*Editar dados*/
/*SEMPRE PASSAR O WHERE para não alterar tudo*/
/*Atualizando em usuários, os campos nome e email onde o nome estiver 'Arthur Cabral' e o email 'arthur@gmail.com'*/
UPDATE usuarios SET nome = 'Anderson Mathias', email = 'anderson@gmail.com' WHERE nome = 'Arthur Cabral' AND email = 'arthur@gmail.com';







