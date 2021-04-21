--lrac > 1,5,9,13,17,21,25,29,33,37,41,45,49,53,57,61,65,69,73,77,81,85,89
--prxc > 2,6,10,14,18,22,26,30,34,38,42,46,50,54,58,62,66,70,74,78,82,86,90
--jvsg > 3,7,11,15,19,23,27,31,35,39,43,47,51,55,59,63,67,71,75,79,83,87,91
--hlgs > 4,8,12,16,20,24,28,32,36,40,44,48,52,56,60,64,68,72,76,80,84,88

--2
SELECT *
FROM compra_nova
WHERE data BETWEEN '01/02/2017' AND '30/03/2017'

/*selecionar compras entre uma data / between com datas*/

--3
SELECT * 
FROM empregado E 
WHERE E.email LIKE 's%';

/* São selecionadas as linhas da tabela empregado em que o e-mail comece com a letra s. */

--4

SELECT descricao 
FrOM plano P
WHERE preco IN(
SELECT PRECO
FROM plano PL
WHERE preco
BETWEEN 100 AND 260);

/*Lista os tipos de planos entre os precos 100 a 260 rs */

--6

SELECT *
FROM transacao
ORDER BY valor DESC;

/* ordena as transacoes de compra e venda em valor descrescnte/ uso de ORDER BY*/

--7
CREATE OR REPLACE VIEW V_instrutor AS 
SELECT * 
FROM instrutor I 
WHERE cref < 444;

/* É criada uma view a partir da tabela instrutor, onde apenas participarão aqueles que possuirem cref menor que 444. */

--8
SELECT *
FROM v_INSTRUTOR;

/* Consulta e exibe a view*/

--10
ALTER TABLE ficha MODIFY codigo CHECK (codigo > 0);

/* só adciona codigos positivos a ficha /CRIAR CHECKs*/

--11

/* Já há uma criação de chave composta no arquivo de criação. */

--12

/* já atendida nas tabelas*/

--14

ALTER TABLE  manutencao MODIFY relatorio VARCHAR2(150);

/* modifica(aumenta) tamanho da variavel relatorio / ALTER TABLE p/ modificar coluna*/ 

--15
ALTER TABLE empregado 
ADD sexo CHAR(1);

/* A tabela empregado é alterada, de forma que uma coluna chamada sexo é acrescentada. */

--16

ALTER TABLE empregado
DROP COLUMN sexo;

--18
SELECT COUNT (aluno.cpf) "Total Alunos" 
FROM aluno;

/* retorna o total de alunos/ função de agregação sem GROUP BY */

--19
SELECT sexo, count(*) 
FROM aluno A 
GROUP BY sexo;

/* A partir da tabela aluno, são selecionados dados agrupados pelo sexo. São retornadas duas linhas, contendo o sexo e sua respectiva quantidade de individuos. */

--20

SELECT DISTINCT cod_plano FROM aluno;

/*retorna os codigos dos planos sem repetcoes*/

--22
SELECT cpf, avg(salario)
from empregado
GROUP BY cpf
having avg(salario) >   (select avg(salario)
                        FROM empregado
                        WHERE cpf = 23);
/* exibe os CPFS's e salarios dos funcionarios cujo o salário é maior que o do funcionario de cpf 23/ uso de HAVING com subconsulta */

--23
SELECT cpf, count(telefone) 
FROM telefone_aluno T 
WHERE T.cpf > 5 
GROUP BY cpf 
HAVING count(telefone) > 4;

/* A partir da tabela telefone_aluno são selecionados dados agrupados pelo cpf. De modo que apenas as pessoas com cpf > 5 e que possuem mais que 4 telefones são mostradas. */

--24

SELECT AL.nome, PL.descricao FROM aluno AL, plano PL WHERE AL.cod_plano = PL.codigo;

/* Cria uma tabela com a junção de outras duas.*/

--26

SELECT A1.codigo NUM_PLANO, COUNT(A2.nome) QUANTIDADE
FROM plano A1, aluno A2
WHERE A1.codigo = A2.cod_plano
GROUP BY A1.codigo 
ORDER BY A1.codigo ASC;

/* exibe os planos e a quantidade de pessoas que assinam esse plano / INNER JOIN */

--27
SELECT G.cpf, T.acao 
FROM gerente G 
LEFT OUTER JOIN transacao T 
ON G.cpf = T.cpf_gerente;

/* É feita uma junção à esquerda entre a tabela gerente e a tabela transação. O cpf do gerente e o tipo de ação (compra/venda) da transação que ele fez serão mostradas na 
seleção. Gerentes que não relizaram transações terão NULL na coluna de ação. */

--28
SELECT AL.cpf, PL.descricao FROM plano PL RIGHT OUTER JOIN aluno AL ON AL.cod_plano = PL.codigo;

/* É feita a junção a direita entre as tabelas plano com aluno. e a condição é */

--30

SELECT nome, salario 
FROM empregado E 
WHERE E.salario > SOME (SELECT salario 
                       FROM empregado B 
                       WHERE B.cpf_supervisor IS NULL);
/* A partir da tabela empregado, alguns nomes e salarios serão selecionados. Apenas aqueles que que tiverem salario menor que algum dos salarios da subconsulta serão retornados. A subconsulta seleciona salarios de empregados que não são supervisionados por outros empregados. */

--31
SELECT nome, salario 
FROM empregado E 
WHERE E.salario < ALL (SELECT salario 
                       FROM empregado B 
                       WHERE B.cpf_supervisor IS NULL);

/* A partir da tabela empregado, alguns nomes e salarios serão selecionados. Apenas aqueles que que tiverem salario menor que todos os salarios da subconsulta serão retornados.
A subconsulta seleciona salarios de empregados que não são supervisionados por outros empregados. */

--32
SELECT I.cpf, I.cref
FROM instrutor I
WHERE EXISTS (SELECT E.cpf FROM empregado E
WHERE I.cpf=E.cpf);

/*Liste todos os instrutor que são empregados.*/


--34
SELECT cpf 
FROM funcman
UNION (SELECT cpf 
           FROM aluno);
/* une cpf dos alunos e funcionarios numa lista só / UNION */

--35
SELECT cpf 
FROM funcman 
INTERSECT (SELECT cpf_funcman 
           FROM manutencao);

/* A partir de uma lista formada pelo cpf dos funcionarios e de uma lista com o cpf de funcionarios que realizaram manutenção, é feita uma interseção. */

--36
SELECT cpf
FROM empregado
MINUS (SELECT E.cpf
FROM empregado E, instrutor I
WHERE I.cpf=E.cpf);

/*lista todos empregados que ñ são instrutores*/


--38
UPDATE aluno A
SET A.cep = 555
WHERE A.cep = (SELECT min(cep) FROM aluno);
/* A subconsulta seleciona o menor cep. E entao atualiza o valor do cep pra 555 */

--39
DELETE FROM transacao T 
WHERE T.valor = (SELECT min(valor) 
                 FROM transacao);

/* A subconsulta seleciona o menor dos valores da tabela transação. E então, é deletada as linhas da tabela transação onde este valor mínimo esteja presente. */

--40

grant SELECT on empregado to PUBLIC;

/*concedendo privilegio de acesso*/

--42
SELECT nome, cpf, peso, idade, sexo
FROM (SELECT nome, cpf, idade, peso, sexo FROM aluno WHERE sexo = 'M')
WHERE peso > 65;
/* seleciona, primeiro, os alunos do sexo masculino. Apos, seleciona os que tem peso maior que 65/ subconsulta dentro de FROM (VIEW implicita) */

--43
SELECT sexo, count(*)/(SELECT count(*) FROM aluno) AS proporcao 
FROM aluno 
GROUP BY sexo;

/* A subconsulta retorna a quantidade de linhas da tabela aluno. A consulta principal agrupa dados da tabela aluno a partir do sexo, mostrando sua respectiva proporção à 
quantidade total de indivíduos. */

--44

select cpf, nome, salario from empregado where salario between (select avg(salario)*0.8 from empregado) and (select avg(salario)*1.2 from empregado);

/* verifica se o salario está contido entre dois limites*/


--46
SELECT *
FROM transacao
ORDER BY acao DESC, codigo ASC, valor ASC, data DESC;

/* seleciona a tabela transacao e ordena primeiro por codigo, dps por acao, valor e data / ORDER BY com mais de dois campos */

--47
SELECT * 
FROM compra_nova C 
WHERE EXISTS (SELECT cpf_gerente 
              FROM gerente G 
              WHERE G.grau = 2 
              INTERSECT (SELECT cpf_gerente FROM compra_nova N));

/* Caso exista um gerente de grau 2 (maior grau) que tenha feito a compra de alguma maquina nova, então mostra todas as compras da tabela compra_nova. */

--48

declare

        salario_novo empregado.salario%TYPE;

begin
	UPDATE empregado SET salario = 4010 WHERE cpf = 14;
end;
/

/* utilizando bloco anônimo atualizo salario*/

--50
DECLARE
    vend transacao%ROWTYPE;
BEGIN
    SELECT * INTO vend FROM transacao
    WHERE  valor = (SELECT MAX (valor) FROM transacao);

    IF vend.data > TO_DATE('01/01/2017', 'dd/mm/yyyy') THEN
                dbms_output.put_line('Transacao:' || vend.codigo);
    ELSE 
                dbms_output.put_line('Transacao nao ocorreu apos 01/01/2017');
    END IF;
END;
/

/*seleciona a venda de maior valor, e se ela for realizada apos uma data especifica, imprime na tela */

--51
DECLARE
    sal empregado.salario%TYPE;

BEGIN
    SELECT salario INTO sal FROM empregado 
    WHERE salario = (SELECT min(salario) FROM empregado); 
     
    IF(sal <= 800) THEN
        UPDATE empregado E SET E.salario = sal * 1.5 WHERE E.salario = sal;
    ELSIF (sal <= 1000) THEN
        UPDATE empregado E SET E.salario = sal * 1.6 WHERE E.salario = sal; 
    END IF;
END;
/

/* Seleciona o menor salario dentre os empregados e o guarda numa variável. O empregado com este menor salário terá reajuste de 50% ou 60% vide condições. */

--52
SELECT codigo, CASE acao
	WHEN 'Venda' THEN valor*1.1
	WHEN 'Compra' THEN valor*0.9
	ELSE valor
	END
"Novas Compras e Vendas", data
FROM transacao;

/* seta o valor de acordo com a descrição e codigo*/

--54
DECLARE 
    mass aluno%ROWTYPE;
    a number(2) := 1;
BEGIN
    WHILE a < 11 LOOP
        SELECT * INTO mass FROM aluno
        WHERE cpf = a;
        dbms_output.put_line('CPF:' || a || ' Pertence a ' || TO_CHAR(mass.nome));
        a := a+1;

    END LOOP;
END;
/

--55
DECLARE 
    CURSOR cur IS (SELECT * FROM aluno);
BEGIN
    FOR i IN cur 
    LOOP
        dbms_output.put_line('IMC = ' || TO_CHAR(i.peso/(i.altura*i.altura)));
    END LOOP;
END;
/
    
/* É criado um cursor através de um select na tabela aluno. Dentro do laço é printada uma mensagem contendo o imc (indice de massa corporal) de cada aluno */

--56

declare
		n_empreg int;

begin
	select count(*) into n_empreg from empregado;
	dbms_output.put_line(n_empreg);
end;
/

/*salva o numero de empregado*/

--58

DECLARE 
    alu aluno%ROWTYPE;
    b number(3) := 1;

BEGIN
    SELECT * INTO alu FROM aluno
    WHERE peso = (SELECT MAX(peso) FROM aluno);

    b := alu.peso;
    dbms_output.put_line('Aluno mais pesado:' || TO_CHAR(alu.nome) || ' Pesa ' || b || ' kg');
END;
/

/*seleciona a aluna mais pesada, salva seu peso na variavel b, imprime variavel e string nome*/

--59
DECLARE
    CURSOR C_trans IS (SELECT * FROM transacao WHERE acao = 'Venda');
    R_trans transacao%ROWTYPE;
    lucro transacao.valor%TYPE;

BEGIN
    lucro := 0;
    OPEN C_trans;
    LOOP
        FETCH C_trans INTO R_trans;
        lucro := lucro + R_trans.valor;
        EXIT WHEN C_trans%NOTFOUND;
    END LOOP;
    CLOSE C_trans;
    dbms_output.put_line('Lucro total = ' || TO_CHAR(lucro));
END;
/

/* Foi criado um cursor a partir das transações do tipo venda. A cada iteração do laço, uma linha do cursor é copiada para uma variável e é calculado o lucro de forma cumulativa. */

--60

DECLARE
    CURSOR C_reg IS (SELECT valor FROM transacao WHERE acao = 'Venda');
    TYPE R_reg IS RECORD (valor NUMBER(7,2));
    
    lucro transacao.valor%TYPE;
    myR_reg R_reg;

BEGIN
    lucro := 0;
    OPEN C_reg;
    LOOP
        FETCH C_reg INTO myR_reg.valor;
        lucro := lucro + myR_reg.valor;
        EXIT WHEN C_reg%NOTFOUND;
    END LOOP;
    CLOSE C_reg;
    dbms_output.put_line('Lucro total = ' || TO_CHAR(lucro));
END;
/

/*Versão da questão anterior usando Reg.*/


--62

DECLARE 
BEGIN
    FOR i IN (SELECT * FROM aluno)
    LOOP
        dbms_output.put_line('Altura do ALUNO: '|| TO_CHAR(i.nome) || ' == ' || TO_CHAR(i.altura) || 'm');
    END LOOP;
END;
/

/*usa cursor pra selecionar os alunos e imprimir suas alturas*/

--63
CREATE OR REPLACE PROCEDURE bem_vindo IS
BEGIN
    dbms_output.put_line('BEM VINDO.');
END;
/

/* Bloco de procedimento sem parâmetros que imprime uma mensagem de boas vindas quando chamado. */

--64

CREATE OR REPLACE PROCEDURE changeCEP (eNum IN aluno.cep%TYPE) AS
    eNome aluno%ROWTYPE;
BEGIN
    SELECT * INTO eNome FROM aluno WHERE cep = eNum;
        DBMS_OUTPUT.PUT_LINE(eNome.nome);
END;
/

/*captura o cep e imprime*/

--66
CREATE OR REPLACE PROCEDURE changeCEP (eNum IN OUT aluno.cep%TYPE) AS
    eNome aluno%ROWTYPE;
BEGIN
    SELECT * INTO eNome FROM aluno WHERE cep = eNum;
    eNum := eNum+1;
        DBMS_OUTPUT.PUT_LINE(eNome.nome);
END;
/
/*imprime o cep eNum e soma 1 em eNum*/

--67
<<boas_vindas>>
DECLARE 
BEGIN
    bem_vindo;
END;
/

/* Chamada de procedimento dentro de um bloco nomeado. */

--68

CREATE OR REPLACE  FUNCTION msg RETURN VARCHAR2 IS

	mensagem varchar2(50);
BEGIN


	mensagem := 'BEM VINDO.';
	
	RETURN mensagem;
  
END;
/

/*retorna uma mensagem sem parametro*/


--71
CREATE OR REPLACE FUNCTION porcento110 (x IN OUT transacao.valor%TYPE) RETURN transacao.valor%TYPE IS
    xAcao transacao.acao%TYPE;
BEGIN
    SELECT acao INTO xAcao FROM transacao T WHERE T.valor = x;
 
    IF (xAcao = 'Compra') THEN
        x := x * 1.1;
    END IF;
    RETURN x;

EXCEPTION 
    WHEN TOO_MANY_ROWS THEN
    RAISE_APPLICATION_ERROR(-20009,'Muitas linhas retornadas.');
END;
/

/* Função que atualiza o valor de um compra em 110% caso esta seja única. Como x é do tipo IN OUT, o valor contido em x antes da chamada da função poderá ser utilizado dentro 
da mesma. Após o termino da função, o valor resultante calculado será "retornado" tanto dentro do próprio x, quanto pelo RETURN. */  

--70
CREATE OR REPLACE FUNCTION idade (ib OUT aluno.idade%TYPE) 
    RETURN aluno.Nome%TYPE IS
    eNome aluno%ROWTYPE;
BEGIN
    SELECT * INTO eNome FROM aluno WHERE idade = (SELECT MAX(idade) FROM aluno);
        ib := eNome.idade;
        RETURN eNome.nome;
END;
/
/*funcao que retorna o nome do aluno mais velho e salva a idade dele na variavel ib*/

--74
CREATE OR REPLACE TRIGGER novoALUNO AFTER INSERT ON aluno
BEGIN
    DBMS_OUTPUT.PUT_LINE('VOCE ADCIONOU UM NOVO ALUNO');
END novoALUNO;
/
/*Trigger que exibe nome do aluno adcionado*/

--75
CREATE OR REPLACE TRIGGER proibidoplano BEFORE UPDATE ON aluno FOR EACH ROW
DECLARE
BEGIN
    IF (:NEW.cod_plano != :OLD.cod_plano) THEN
        RAISE_APPLICATION_ERROR(-20010,'É proibida a atualização do plano de alunos.');
    END IF;
END proibidoplano;
/

/* Trigger de linha que impede a alteração do codigo de plano nas instâncias da tabela aluno. */

/* Ação que ativa o trigger: UPDATE aluno SET cod_plano = 12 WHERE aluno.cpf = 11; */
 
--78
CREATE OR REPLACE TRIGGER novoFUNC AFTER INSERT ON empregado FOR EACH ROW
DECLARE
BEGIN
    IF (:NEW.salario > 10000.00) THEN
    DBMS_OUTPUT.PUT_LINE('O NOVO FUNCIONARIO GANHA MUITO DINHEIRO');
    END IF;
END novoFUNC;
/
/*Trigger que exibe mensagem para avisar que o salario do novo funcionario contratado é acima do orçamento*/

--79
CREATE OR REPLACE TRIGGER deltransacao AFTER DELETE ON transacao FOR EACH ROW
DECLARE
BEGIN
    IF (EXTRACT(year FROM :OLD.data) = EXTRACT(year FROM sysdate)) THEN
        dbms_output.put_line('Você deletou uma transação recente!');
    END IF;
END;
/ 

/* Trigger de linha que emite um alerta após uma linha da tabela transação é deletada. */

/* Ação que ativa o trigger: DELETE FROM transacao WHERE codigo = 2; */

--82
CREATE OR REPLACE TRIGGER up BEFORE UPDATE ON plano
DECLARE
BEGIN
    RAISE_APPLICATION_ERROR(-20011,'NAO É POSSIVEL MODIFICAR OS PLANOS JÁ EXISTENTES');
END;
/
/*Trigger que impede a atualizacao de um plano*/

--83
CREATE OR REPLACE TRIGGER del BEFORE DELETE ON equipamento
DECLARE
BEGIN
    RAISE_APPLICATION_ERROR(-20011,'É vetada a exclusão de instâncias desta tabela!');
END;
/

/* Trigger de comando que impede que instâncias da tabela equipamento sejam excluídas. */

/* Ação que ativa o trigger: DELETE FROM equipamento; */

--86
CREATE OR REPLACE TRIGGER del2 AFTER DELETE ON empregado FOR EACH ROW
DECLARE
BEGIN
    DELETE FROM telefone_empregado WHERE telefone_empregado.cpf = :OLD.cpf;
END;
/
/*deleta o telefone do empregado após o empregado ser deletado*/

--87
CREATE OR REPLACE FUNCTION vezes1_3 (x IN NUMBER) RETURN NUMBER IS
    y NUMBER;
BEGIN
    y := x * 1.3;
    RETURN y;
END;
/

SELECT acao, valor, vezes1_3(valor) FROM transacao;

/* O SELECT acima mostra a ação, o valor e o valor reajustado em 110% de todas as instâncias da tabela transação. */

--90
CREATE OR REPLACE PACKAGE pacote AS
    FUNCTION idade (ib OUT aluno.idade%TYPE) RETURN aluno.nome%TYPE;
    PROCEDURE imprimeNome (eNome IN aluno.nome%TYPE);
END pacote;
/
CREATE OR REPLACE PACKAGE BODY pacote AS
    
    FUNCTION idade (ib OUT aluno.idade%TYPE) 
        RETURN aluno.Nome%TYPE IS
        eNome aluno%ROWTYPE;
    BEGIN
        SELECT * INTO eNome FROM aluno WHERE idade = (SELECT MAX(idade) FROM aluno);
            ib := eNome.idade;
            RETURN eNome.nome;
    END;

    PROCEDURE imprimeNome (eNome IN aluno.nome%TYPE) IS
    BEGIN
        DBMS_OUTPUT.PUT_LINE('Nome do aluno eh: ' || TO_CHAR(eNome));
    END;
END pacote;
/
/*Cria o pacote com a funcao idade que retorna o nome do aluno mais velho e o procedimento imprimeNome que serve para imprimir o nome do aluno mais velho*/

--91
CREATE OR REPLACE VIEW V_plano AS SELECT * FROM plano;

CREATE OR REPLACE TRIGGER alertaview INSTEAD OF INSERT ON V_plano
BEGIN
    INSERT INTO plano VALUES (:NEW.codigo,:NEW.preco,:NEW.descricao);
    dbms_output.put_line('Não é possível inserir dados em views. Dados inseridos na tabela que gerou a view.');
END;
/

/* Trigger que redireciona um insert numa view para um insert na tabela que originou a view. */

/* Ação que ativa o trigger: INSERT INTO V_plano VALUES (24, 500, '2Anos'); */
