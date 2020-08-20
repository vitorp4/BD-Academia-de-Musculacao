DROP TYPE tp_compra_nova force;
DROP TYPE tp_manutencao force;
DROP TYPE tp_exercicio force;
DROP TYPE tp_instrui force;
DROP TYPE tp_ficha force;
DROP TYPE tp_moveis force;
DROP TYPE tp_maquina force;
DROP TYPE tp_equipamento force;
DROP TYPE tp_grupamento force;
DROP TYPE tp_funcman force;
DROP TYPE tp_transacao force;
DROP TYPE tp_gerente force;
DROP TYPE tp_instrutor force;
DROP TYPE tp_empregado force;
DROP TYPE tp_nt_telefone force;
DROP TYPE tp_aluno force;
DROP TYPE tp_plano force;
DROP TYPE tp_endereco force;

--telefones como TABLE (nested table): não é preciso estabelecer um limite de telefones
CREATE OR REPLACE TYPE tp_nt_telefone AS TABLE OF VARCHAR2 (9);
/

CREATE OR REPLACE TYPE tp_plano AS OBJECT (
		codigo NUMBER,
		preco NUMBER(6,2),
		descricao VARCHAR2(50),
		FINAL MAP MEMBER FUNCTION descricaoToString RETURN VARCHAR2
) FINAL; 
/

CREATE OR REPLACE TYPE tp_endereco AS OBJECT (
	cep NUMBER,
	descricao VARCHAR2(30)
) FINAL;
/

CREATE OR REPLACE TYPE tp_aluno AS OBJECT (
	    cpf NUMBER,
        nome VARCHAR2(50),
        sexo CHAR(1),
        altura NUMBER(3,2),
        peso NUMBER(6,3),
        email VARCHAR2(40),
        idade NUMBER,
        ref_plano REF tp_plano,
        endereco tp_endereco,
        telefone tp_nt_telefone,
        MAP MEMBER FUNCTION imc RETURN NUMBER
) FINAL; 
/

CREATE OR REPLACE TYPE tp_empregado AS OBJECT (
		cpf NUMBER,
        nome VARCHAR2(50),
        salario NUMBER(6,2),
        email VARCHAR2 (40),
        telefone tp_nt_telefone,
        ref_supervisor REF tp_empregado,
        MEMBER FUNCTION salarioAnual RETURN NUMBER
) NOT FINAL NOT INSTANTIABLE;
/

CREATE OR REPLACE TYPE tp_gerente under tp_empregado(
		grau NUMBER,
		CONSTRUCTOR FUNCTION tp_gerente (x1 tp_empregado) 
		RETURN SELF AS RESULT,
		OVERRIDING MEMBER FUNCTION salarioAnual RETURN NUMBER
) FINAL; 
/

CREATE OR REPLACE TYPE tp_instrutor under tp_empregado(
		CREF NUMBER
) FINAL; 
/

CREATE OR REPLACE TYPE tp_transacao AS OBJECT (
		codigo NUMBER,
		acao VARCHAR2 (30),
		valor NUMBER(7,2),
		data DATE,
		ref_gerente REF tp_gerente

) FINAL; 
/

CREATE OR REPLACE TYPE tp_funcman under tp_empregado(
		grau VARCHAR2(20)
		
) FINAL; 
/

CREATE OR REPLACE TYPE tp_grupamento AS OBJECT (
		codigo NUMBER,
		nome VARCHAR2(40),
		descricao VARCHAR2(150)

) FINAL; 
/

CREATE OR REPLACE TYPE tp_equipamento AS OBJECT (
		codigo NUMBER,
		nome VARCHAR2(40),
		status VARCHAR2(30),
		data_compra DATE
) NOT INSTANTIABLE NOT FINAL;
/

CREATE OR REPLACE TYPE tp_maquina under tp_equipamento(
		carga NUMBER
) FINAL; 
/

CREATE OR REPLACE TYPE tp_moveis under tp_equipamento(
		peso NUMBER
) FINAL; 
/

CREATE OR REPLACE TYPE tp_ficha AS OBJECT(
		codigo NUMBER,
		descricao VARCHAR2(200),
		restricao VARCHAR2(200),
		ref_aluno REF tp_aluno

) FINAL; 
/

CREATE OR REPLACE TYPE tp_instrui AS OBJECT(
		codigo NUMBER,
		ref_aluno REF tp_aluno,
		ref_instrutor REF tp_instrutor
) FINAL; 
/

CREATE OR REPLACE TYPE tp_exercicio AS OBJECT(
	    cod_ficha NUMBER,
        cod_grupamento NUMBER,
        cod_equipamento NUMBER,
		ref_cod_ficha REF tp_ficha,
		ref_grupamento REF tp_grupamento,
		ref_equipamento REF tp_equipamento

) FINAL; 
/

CREATE OR REPLACE TYPE tp_manutencao AS OBJECT(
		cpf_funcman NUMBER,
		cod_maquina NUMBER,
		data DATE,
		relatorio VARCHAR2(200),
		ref_funcman REF tp_funcman,
		ref_maquina REF tp_maquina
) FINAL; 
/

CREATE OR REPLACE TYPE tp_compra_nova AS OBJECT(
        cpf_funcman NUMBER,
        cod_maquina NUMBER,
        data DATE,
        cpf_gerente NUMBER,
		ref_manuntencao REF tp_manutencao,
		ref_gerente REF tp_gerente
) FINAL; 
/





