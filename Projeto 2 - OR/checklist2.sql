--lrac > 1,5,9,13,17,21,25,29
--prxc > 2,6,10,14,18,22,26,30
--jvsg > 3,7,11,15,19,23,27
--hlgs > 4,8,12,16,20,24,28

--Item 2
-- Tipo "tp_aluno" na criação possui o atributo "endereco" que é do tipo "tp_endereco"

--3
DROP TYPE tp_produto force;
DROP TYPE tp_fornecedor;

CREATE OR REPLACE TYPE tp_produto AS VARRAY(7) OF VARCHAR2(20);
/

CREATE OR REPLACE TYPE tp_fornecedor AS OBJECT(
	nome VARCHAR2(50),
	email VARCHAR2(50),
	produtos tp_produto
);
/

/* Novo tipo com um atributo VARRAY. */

--Item 4

CREATE OR REPLACE TYPE tp_local AS TABLE OF tp_endereco;
/
create or replace type tp_representante as object
(
cnpj INT,
logradouro tp_local
)NOT FINAL;
/ 

/* Novo tipo utilizando o Nested Table */

--Item 6
CREATE OR REPLACE TYPE BODY tp_empregado AS

MEMBER FUNCTION salarioAnual RETURN NUMBER IS

BEGIN
	RETURN (SELF.salario*13);
	--13º salario incluido
   END;
END;
/

SELECT A.salarioAnual() FROM tb_instrutor A;

DECLARE
	r NUMBER;
BEGIN
	SELECT A.salarioAnual() INTO r FROM tb_instrutor A WHERE A.cpf = 15;
	dbms_output.put_line('Salario Anual do Empregado do CPF : '||TO_CHAR(r));
END;
/

--DECLARE 
--	casa tp_endereco;
--BEGIN
--	casa := tp_endereco(998, 'Rua Azul');
--	dbms_output.put_line('Street: '|| casa.descricao);
--END;
--/

--7
CREATE OR REPLACE TYPE BODY tp_aluno AS
    MAP MEMBER FUNCTION imc RETURN NUMBER IS
    BEGIN
    	RETURN (SELF.peso/(SELF.altura*SELF.altura));
    END;
END;
/

SELECT A.imc() FROM tb_aluno A;

DECLARE
	r NUMBER;
BEGIN
	SELECT A.imc() INTO r FROM tb_aluno A WHERE A.cpf = 1;
	dbms_output.put_line(TO_CHAR(r));
END;
/

/* Metodo map que calcula o imc de um aluno. */

--Item 8

ALTER TYPE tp_aluno
	ADD ORDER MEMBER FUNCTION imc RETURN NUMBER cascade;

CREATE OR REPLACE TYPE BODY tp_aluno AS
    ORDER MEMBER FUNCTION imc RETURN NUMBER IS
    BEGIN
    	RETURN (SELF.peso/(SELF.altura*SELF.altura));
    END;
END;
/

SELECT A.imc() FROM tb_aluno A;

DECLARE
	r NUMBER;
BEGIN
	SELECT A.imc() INTO r FROM tb_aluno A WHERE A.cpf = 1;
	dbms_output.put_line(TO_CHAR(r));
END;
/

/* Utilizando ordem */

--10
--redefinicao de metodo do supertipo dentro do subtipo
--supondo que todo gerente ganha um 14º salario, precisamos reescrever o metedo salarioAnual
CREATE OR REPLACE TYPE BODY tp_gerente AS
		CONSTRUCTOR FUNCTION tp_gerente (x1 tp_empregado) 
		RETURN SELF AS RESULT IS

	BEGIN
		cpf := x1.cpf; nome:=x1.nome; salario:=x1.salario; email:=x1.email; telefone:=x1.telefone; RETURN;
	END;

	OVERRIDING MEMBER FUNCTION salarioAnual RETURN NUMBER IS

	BEGIN
		RETURN salario*14;
	END;
END;
/

SELECT A.salarioAnual() FROM tb_gerente A;


--14
--Alteracao de supertipo com propagação da mudanca
ALTER TYPE tp_equipamento
	MODIFY ATTRIBUTE status VARCHAR2(40) CASCADE;

--11 e 15
ALTER TYPE tp_equipamento ADD ATTRIBUTE cor VARCHAR2(20) INVALIDATE;

/* Adiciona o atributo cor no supertipo tp_equipamento e invalida a mudança para os subtipos. */

--12

alter type tp_equipamento modify attribute (cor VARCHAR2(30)) INVALIDATE;
/* modifica o atributo cor . */

--16 e 17

CREATE TABLE tb_empregado OF tp_empregado
(
	PRIMARY KEY(cpf),
	ref_supervisor WITH ROWID REFERENCES tb_empregado
);

/* Uso de referência e controle de integridade referencial and Restrição de escopo de referência . */

--18
--Criação de todas as tabela a partir de um tipo 
--Ja feito na criacao de tabelas


--19
SELECT I.ref_aluno.ref_plano.descricao FROM tb_instrui I WHERE I.ref_instrutor.cpf = 20;

/* Seleciona o plano dos alunos cujo instrutor tem cpf = 20. */

--20

select DEREF(preco) from tb_plano;

/*Seleciona preço da tabela tb_plano usando DEREF*/

--24

SELECT *
FROM tb_instrutor ca
WHERE ca.salario < ALL ( SELECT ca.salario
FROM tb_instrutor ca
WHERE ca.nome = 'Ana Maria Braga');
SELECT g.cpf, g.nome, g.salario
FROM tb_instrutor g
WHERE g.salario > ANY (	SELECT Salario
				FROM tb_instrutor ga
				WHERE ga.nome = 'Mainara Andrade');
/

--22 e 26

DROP TYPE tp_lista_fones_aluno force;
DROP TABLE tb_lista_fones_aluno;

CREATE OR REPLACE TYPE tp_lista_fones_aluno AS OBJECT (
	cpf NUMBER,
	fones tp_nt_telefone
);
/
CREATE TABLE tb_lista_fones_aluno OF tp_lista_fones_aluno NESTED TABLE fones STORE AS tb_lista_fones;
INSERT INTO tb_lista_fones_aluno VALUES (tp_lista_fones_aluno(1, tp_nt_telefone(1144,1133)));

--26
--Criação de uma consulta que exiba os dados de um NESTED TABLE
SELECT * FROM tb_lista_fones_aluno;
--22
--Criação de uma consulta com TABLE
SELECT * FROM TABLE(SELECT d.fones FROM tb_lista_fones_aluno d WHERE d.cpf = 1);

--23
SELECT I.nome FROM tb_instrutor I WHERE I.nome LIKE 'A%' ORDER BY I.salario DESC;

/* Seleciona o nome dos instrutores que começam com a letra "A", mostrando-os na ordem decrescente de salários. */

SELECT M.ref_funcman.nome FROM tb_manutencao M WHERE data BETWEEN '01/01/2017' AND '10/03/2017';

/* Seleciona o nome do funcionarios que realizaram manutenção entre tais datas. */

SELECT I.ref_aluno.sexo, avg(I.ref_aluno.altura) FROM tb_instrui I WHERE I.ref_instrutor.cpf = 18 GROUP BY I.ref_aluno.sexo HAVING avg(I.ref_aluno.altura) > 1.5;

/* Seleciona a media de altura dos alunos do instrutor de cpf = 18. As medias são separadas por sexo e tem que ser maior que 1.5. */

--27
SELECT T.ref_gerente.cpf, T.ref_gerente.nome FROM tb_transacao T WHERE EXISTS (SELECT * FROM tb_gerente G WHERE G.nome = 'Celine Dion');

/* Caso exista algum gerente chamado "Celine Dion", seleciona o cpf e o nome de todos os gerentes envolvidos com transações. */

--29 (FIZ PRA SER O 30, MAS ACHO QUE ISSO EH TRIGGER DE LINHA E NAO DE COMANDO, AI DEIXEI)
CREATE OR REPLACE TRIGGER proibidoCPF BEFORE UPDATE ON tb_aluno FOR EACH ROW
DECLARE
BEGIN
    IF (:NEW.cpf != :OLD.cpf) THEN
        RAISE_APPLICATION_ERROR(-20010,'É proibida a atualização do CPF do aluno.');
    END IF;
END proibidoCPF;
/

--30

CREATE OR REPLACE TRIGGER proibidoCompra BEFORE INSERT OR DELETE OR UPDATE ON tb_compra_nova
REFERENCING NEW AS NEW OLD AS OLD
BEGIN
    IF TO_NUMBER (TO_CHAR (SYSDATE, 'hh24')) NOT BETWEEN 9 AND 18
THEN
	RAISE_APPLICATION_ERROR(-20001,'Operação não pode ser executada fora do horário de expediente.');
	END IF;
END proibidoCompra;
/
