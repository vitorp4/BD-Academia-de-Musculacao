DROP TABLE compra_nova;
DROP TABLE manutencao;
DROP TABLE exercicio;
DROP TABLE instrui;
DROP TABLE ficha;
DROP TABLE moveis;
DROP TABLE maquina;
DROP TABLE equipamento;
DROP TABLE grupamento;
DROP TABLE funcman;
DROP TABLE transacao;
DROP TABLE gerente;
DROP TABLE instrutor;
DROP TABLE telefone_empregado;
DROP TABLE empregado;
DROP TABLE telefone_aluno;
DROP TABLE aluno;
DROP TABLE plano;

CREATE TABLE plano (
        codigo NUMBER,
        preco NUMBER(6,2) NOT NULL,
        descricao VARCHAR2(50) NOT NULL,
        CONSTRAINT plano_pk PRIMARY KEY (codigo)
);

CREATE TABLE aluno (
        cpf NUMBER,
        nome VARCHAR2(50) NOT NULL,
        sexo CHAR(1) NOT NULL,
        altura NUMBER(3,2) NOT NULL,
        peso NUMBER(6,3) NOT NULL,
        email VARCHAR2(40) NOT NULL UNIQUE,
        idade NUMBER NOT NULL,
        cep NUMBER NOT NULL,
        descricao VARCHAR2(30) NOT NULL,
        cod_plano NUMBER NOT NULL,
        CONSTRAINT aluno_pk PRIMARY KEY (cpf),
        CONSTRAINT aluno_fk FOREIGN KEY (cod_plano) REFERENCES plano (codigo)
);

CREATE TABLE telefone_aluno (
        cpf NUMBER,
        telefone NUMBER,
        CONSTRAINT telefone_aluno_pk PRIMARY KEY (cpf, telefone),
        CONSTRAINT telefone_aluno_fk FOREIGN KEY (cpf) REFERENCES aluno (cpf)
);

CREATE TABLE empregado (
        cpf NUMBER,
        nome VARCHAR2(50) NOT NULL,
        salario NUMBER(6,2) NOT NULL,
        email VARCHAR2(40) NOT NULL UNIQUE,
        cpf_supervisor NUMBER UNIQUE,
        CONSTRAINT empregado_pk PRIMARY KEY (cpf),
        CONSTRAINT empregado_fk FOREIGN KEY (cpf_supervisor) REFERENCES empregado (cpf)
);

CREATE TABLE telefone_empregado (
        cpf NUMBER,
        telefone NUMBER,
        CONSTRAINT telefone_empregado_pk PRIMARY KEY (cpf, telefone),
        CONSTRAINT telefone_empregado_fk FOREIGN KEY (cpf) REFERENCES empregado (cpf)
);

CREATE TABLE instrutor (
        cpf NUMBER,
        cref NUMBER NOT NULL UNIQUE,
        CONSTRAINT instrutor_pk PRIMARY KEY (cpf),
        CONSTRAINT instrutor_fk FOREIGN KEY (cpf) REFERENCES empregado (cpf)
);

CREATE TABLE gerente (
        cpf NUMBER,
        grau NUMBER NOT NULL,
        CONSTRAINT gerente_pk PRIMARY KEY (cpf),
        CONSTRAINT gerente_fk FOREIGN KEY (cpf) REFERENCES empregado (cpf)
);

CREATE TABLE transacao (
        codigo NUMBER,
        acao VARCHAR2(15) NOT NULL,
        valor NUMBER(7,2) NOT NULL,
        data DATE NOT NULL,
        cpf_gerente NUMBER NOT NULL,
        CONSTRAINT transacao_pk PRIMARY KEY (codigo),
        CONSTRAINT transacao_fk FOREIGN KEY (cpf_gerente) REFERENCES gerente (cpf)
);

CREATE TABLE funcman (
        cpf NUMBER,
        grau VARCHAR2(20) NOT NULL,
        CONSTRAINT funcman_pk PRIMARY KEY (cpf),
        CONSTRAINT funcman_fk FOREIGN KEY (cpf) REFERENCES empregado (cpf)
);

CREATE TABLE grupamento (
        codigo NUMBER,
        nome VARCHAR2(40) NOT NULL,
        descricao VARCHAR2(150),
        CONSTRAINT grupamento_pk PRIMARY KEY (codigo)
);

CREATE TABLE equipamento (
        codigo NUMBER,
        nome VARCHAR2(50) NOT NULL,
        status VARCHAR2(30),
        data_compra DATE NOT NULL,
        CONSTRAINT equipamento_pk PRIMARY KEY (codigo)
);

CREATE TABLE maquina (
        codigo NUMBER,
        carga NUMBER NOT NULL,
        CONSTRAINT maquina_pk PRIMARY KEY (codigo),
        CONSTRAINT maquina_fk FOREIGN KEY (codigo) REFERENCES equipamento (codigo)
);

CREATE TABLE moveis (
        codigo NUMBER,
        peso NUMBER NOT NULL,
        CONSTRAINT moveis_pk PRIMARY KEY (codigo),
        CONSTRAINT moveis_fk FOREIGN KEY (codigo) REFERENCES equipamento (codigo)
);

CREATE TABLE ficha (
        codigo NUMBER,
        descricao VARCHAR2(200) NOT NULL,
        restricao VARCHAR2(200),
        cpf_aluno NUMBER NOT NULL UNIQUE,
        CONSTRAINT ficha_pk PRIMARY KEY (codigo),
        CONSTRAINT ficha_fk FOREIGN KEY (cpf_aluno) REFERENCES aluno (cpf)
);

CREATE TABLE instrui (
        cpf_instrutor NUMBER,
        cpf_aluno NUMBER,
        CONSTRAINT instrui_pk PRIMARY KEY (cpf_instrutor, cpf_aluno),
        CONSTRAINT instrui_fk1 FOREIGN KEY (cpf_instrutor) REFERENCES instrutor (cpf),
        CONSTRAINT instrui_fk2 FOREIGN KEY (cpf_aluno) REFERENCES aluno (cpf)
);

CREATE TABLE exercicio (
        cod_ficha NUMBER,
        cod_grupamento NUMBER,
        cod_equipamento NUMBER,
        CONSTRAINT exercicio_pk PRIMARY KEY (cod_ficha, cod_grupamento, cod_equipamento),
        CONSTRAINT exercicio_fk1 FOREIGN KEY (cod_ficha) REFERENCES ficha (codigo),
        CONSTRAINT exercicio_fk2 FOREIGN KEY (cod_grupamento) REFERENCES grupamento (codigo),
        CONSTRAINT exercicio_fk3 FOREIGN KEY (cod_equipamento) REFERENCES equipamento (codigo)
);

CREATE TABLE manutencao (
        cpf_funcman NUMBER,
        cod_maquina NUMBER,
        data DATE,
        relatorio VARCHAR2(100),
        CONSTRAINT manutencao_pk PRIMARY KEY (cpf_funcman, cod_maquina, data),
        CONSTRAINT manutencao_fk1 FOREIGN KEY (cpf_funcman) REFERENCES funcman (cpf),
        CONSTRAINT manutencao_fk2 FOREIGN KEY (cod_maquina) REFERENCES maquina (codigo)
);

CREATE TABLE compra_nova (
        cpf_funcman NUMBER,
        cod_maquina NUMBER,
        data DATE,
        cpf_gerente NUMBER,
        CONSTRAINT compra_nova_pk PRIMARY KEY (cpf_funcman, cod_maquina, data, cpf_gerente),
        CONSTRAINT compra_nova_fk1 FOREIGN KEY (cpf_funcman, cod_maquina, data) REFERENCES manutencao (cpf_funcman, cod_maquina, data),
        CONSTRAINT compra_nova_fk2 FOREIGN KEY (cpf_gerente) REFERENCES gerente (cpf)
);