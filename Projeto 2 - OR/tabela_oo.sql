DROP TABLE tb_compra_nova;
DROP TABLE tb_manutencao;
DROP TABLE tb_exercicio;
DROP TABLE tb_instrui;
DROP TABLE tb_ficha;
DROP TABLE tb_moveis;
DROP TABLE tb_maquina;
DROP TABLE tb_grupamento;
DROP TABLE tb_funcman;
DROP TABLE tb_transacao;
DROP TABLE tb_gerente;
DROP TABLE tb_instrutor;
DROP TABLE tb_aluno;
DROP TABLE tb_plano;
--DROP TABLE tb_equipamento;

CREATE TABLE tb_plano OF tp_plano (
	PRIMARY KEY (codigo),
	preco NOT NULL,
	descricao NOT NULL
);

CREATE TABLE tb_aluno OF tp_aluno (
		PRIMARY KEY (cpf),
		FOREIGN KEY (ref_plano) REFERENCES tb_plano,
        nome NOT NULL,
        sexo NOT NULL,
        altura NOT NULL,
        peso NOT NULL,
        email NOT NULL UNIQUE,
        idade NOT NULL,
        endereco NOT NULL
) NESTED TABLE telefone STORE AS tb_telefone_aluno;

CREATE TABLE tb_instrutor OF tp_instrutor (
		PRIMARY KEY (cpf),
        nome NOT NULL,
        salario NOT NULL,
        email NOT NULL,
        CREF NOT NULL
) NESTED TABLE telefone STORE AS tb_telefone_inst;

CREATE TABLE tb_gerente OF tp_gerente (
		PRIMARY KEY (cpf),
        nome NOT NULL,
        salario NOT NULL,
        email NOT NULL,
        grau NOT NULL
) NESTED TABLE telefone STORE AS tb_telefone_ger;

CREATE TABLE tb_transacao OF tp_transacao (
		PRIMARY KEY (codigo),
		FOREIGN KEY (ref_gerente) REFERENCES tb_gerente,
		acao NOT NULL,
		valor NOT NULL,
		data NOT NULL
);

CREATE TABLE tb_funcman OF tp_funcman (
		PRIMARY KEY (cpf),
        nome NOT NULL,
        salario NOT NULL,
        email NOT NULL,
        grau NOT NULL
) NESTED TABLE telefone STORE AS tb_telefone_funcman;

CREATE TABLE tb_grupamento OF tp_grupamento (
		PRIMARY KEY (codigo),
		nome NOT NULL,
		descricao NOT NULL
);

CREATE TABLE tb_maquina OF tp_maquina (
		PRIMARY KEY (codigo),
		nome NOT NULL,
		data_compra NOT NULL,
		carga NOT NULL
);

CREATE TABLE tb_moveis OF tp_moveis (
		PRIMARY KEY (codigo),
		nome NOT NULL,
		data_compra NOT NULL,
		peso NOT NULL
);

CREATE TABLE tb_ficha OF tp_ficha (
		PRIMARY KEY (codigo),
		FOREIGN KEY (ref_aluno) REFERENCES tb_aluno
);

CREATE TABLE tb_instrui OF tp_instrui (
		PRIMARY KEY (codigo),
		FOREIGN KEY (ref_aluno) REFERENCES tb_aluno,
		FOREIGN KEY (ref_instrutor) REFERENCES tb_instrutor
);

CREATE TABLE tb_exercicio OF tp_exercicio (
		PRIMARY KEY (cod_ficha, cod_grupamento, cod_equipamento),
		FOREIGN KEY (ref_cod_ficha) REFERENCES tb_ficha,
		FOREIGN KEY (ref_grupamento) REFERENCES tb_grupamento
);

CREATE TABLE tb_manutencao OF tp_manutencao (
		PRIMARY KEY (cpf_funcman, cod_maquina, data),
		FOREIGN KEY (ref_funcman) REFERENCES tb_funcman,
		FOREIGN KEY (ref_maquina) REFERENCES tb_maquina
);

CREATE TABLE tb_compra_nova OF tp_compra_nova (
		PRIMARY KEY (cpf_funcman, cod_maquina, data, cpf_gerente),
		FOREIGN KEY (ref_manuntencao) REFERENCES tb_manutencao,
		FOREIGN KEY (ref_gerente) REFERENCES tb_gerente
);


