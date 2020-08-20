-- 5 elementos
INSERT INTO plano (codigo, preco, descricao) VALUES (1, 50, 'Mensal');
INSERT INTO plano (codigo, preco, descricao) VALUES (2, 100, 'Bimestral');
INSERT INTO plano (codigo, preco, descricao) VALUES (3, 150, 'Trimestral');
INSERT INTO plano (codigo, preco, descricao) VALUES (6, 260, 'Semestral');
INSERT INTO plano (codigo, preco, descricao) VALUES (12, 500, 'Anual');

-- 13 elementos
INSERT INTO aluno (cpf, nome, sexo, altura, peso, email, idade, cep, descricao, cod_plano) VALUES (1, 'Maria Eduarda', 'F', 1.52, 65, 'me@gmail.com', 25, 123, 'Rua Azul', 2);
INSERT INTO aluno (cpf, nome, sexo, altura, peso, email, idade, cep, descricao, cod_plano) VALUES (2, 'Vitor Nascimento', 'M', 1.72, 85, 'vn@gmail.com', 23, 144, 'Rua Verde', 2);
INSERT INTO aluno (cpf, nome, sexo, altura, peso, email, idade, cep, descricao, cod_plano) VALUES (3, 'Lidia Maria', 'F', 1.48, 67, 'lm@gmail.com', 33, 829, 'Rua Rosa', 6);
INSERT INTO aluno (cpf, nome, sexo, altura, peso, email, idade, cep, descricao, cod_plano) VALUES (4, 'Hugo Santos', 'M', 1.66, 73, 'hs@gmail.com', 16, 408, 'Rua Vermelha', 1);
INSERT INTO aluno (cpf, nome, sexo, altura, peso, email, idade, cep, descricao, cod_plano) VALUES (5, 'Karine Monteiro', 'F', 1.89, 74, 'km@gmail.com', 20, 874, 'Rua Amarela', 12);
INSERT INTO aluno (cpf, nome, sexo, altura, peso, email, idade, cep, descricao, cod_plano) VALUES (6, 'Otavio Augusto', 'M', 1.63, 82, 'oa@gmail.com', 34, 413, 'Rua Preta', 1);
INSERT INTO aluno (cpf, nome, sexo, altura, peso, email, idade, cep, descricao, cod_plano) VALUES (7, 'Tiago Cavalcanti', 'M', 1.90, 80, 'tc@gmail.com', 45, 908, 'Rua Branca', 1);
INSERT INTO aluno (cpf, nome, sexo, altura, peso, email, idade, cep, descricao, cod_plano) VALUES (8, 'Fernando Castor', 'M', 1.84, 69, 'fc@gmail.com', 37, 165, 'Rua Marrom', 1);
INSERT INTO aluno (cpf, nome, sexo, altura, peso, email, idade, cep, descricao, cod_plano) VALUES (9, 'Sabrina Silva', 'F', 1.62, 53, 'ss@gmail.com', 54, 817, 'Rua Roxa', 2);
INSERT INTO aluno (cpf, nome, sexo, altura, peso, email, idade, cep, descricao, cod_plano) VALUES (10, 'Gabriela Araujo', 'F', 1.87, 93, 'ga@gmail.com', 42, 829, 'Rua Laranja', 6);
INSERT INTO aluno (cpf, nome, sexo, altura, peso, email, idade, cep, descricao, cod_plano) VALUES (11, 'Patricia Poeta', 'F', 1.58, 78, 'pp@gmail.com', 19, 663, 'Rua Cinza', 6);
INSERT INTO aluno (cpf, nome, sexo, altura, peso, email, idade, cep, descricao, cod_plano) VALUES (12, 'Bruna Cassia', 'F', 1.47, 66, 'bc@gmail.com', 22, 433, 'Rua Lilas', 2);
INSERT INTO aluno (cpf, nome, sexo, altura, peso, email, idade, cep, descricao, cod_plano) VALUES (13, 'Carlos Francisco', 'M', 1.78, 73, 'cf@gmail.com', 18, 333, 'Rua Rosa', 12);

-- 27 elementos
INSERT INTO telefone_aluno (cpf, telefone) VALUES (1, 1122);
INSERT INTO telefone_aluno (cpf, telefone) VALUES (1, 1133);
INSERT INTO telefone_aluno (cpf, telefone) VALUES (2, 1144);
INSERT INTO telefone_aluno (cpf, telefone) VALUES (3, 1155);
INSERT INTO telefone_aluno (cpf, telefone) VALUES (4, 4411);
INSERT INTO telefone_aluno (cpf, telefone) VALUES (4, 1199);
INSERT INTO telefone_aluno (cpf, telefone) VALUES (4, 8844);
INSERT INTO telefone_aluno (cpf, telefone) VALUES (5, 8855);
INSERT INTO telefone_aluno (cpf, telefone) VALUES (6, 8866);
INSERT INTO telefone_aluno (cpf, telefone) VALUES (7, 8877);
INSERT INTO telefone_aluno (cpf, telefone) VALUES (8, 2233);
INSERT INTO telefone_aluno (cpf, telefone) VALUES (9, 5566);
INSERT INTO telefone_aluno (cpf, telefone) VALUES (9, 7788);
INSERT INTO telefone_aluno (cpf, telefone) VALUES (9, 8833);
INSERT INTO telefone_aluno (cpf, telefone) VALUES (9, 8844);
INSERT INTO telefone_aluno (cpf, telefone) VALUES (10, 1177);
INSERT INTO telefone_aluno (cpf, telefone) VALUES (10, 7711);
INSERT INTO telefone_aluno (cpf, telefone) VALUES (10, 8899);
INSERT INTO telefone_aluno (cpf, telefone) VALUES (10, 2288);
INSERT INTO telefone_aluno (cpf, telefone) VALUES (10, 9900);
INSERT INTO telefone_aluno (cpf, telefone) VALUES (11, 1100);
INSERT INTO telefone_aluno (cpf, telefone) VALUES (11, 2200);
INSERT INTO telefone_aluno (cpf, telefone) VALUES (12, 3300);
INSERT INTO telefone_aluno (cpf, telefone) VALUES (13, 4400);
INSERT INTO telefone_aluno (cpf, telefone) VALUES (13, 5500);
INSERT INTO telefone_aluno (cpf, telefone) VALUES (13, 6600);
INSERT INTO telefone_aluno (cpf, telefone) VALUES (13, 7700);

-- 13 elementos
INSERT INTO empregado (cpf, nome, salario, email, cpf_supervisor) VALUES (14, 'Sergio Alexandre', 4050.00, 'sa@gmail.com', NULL);
INSERT INTO empregado (cpf, nome, salario, email, cpf_supervisor) VALUES (15, 'Ana Maria Braga', 4100.00, 'amb@gmail.com', NULL);
INSERT INTO empregado (cpf, nome, salario, email, cpf_supervisor) VALUES (16, 'Daniel Malaquias', 2550.00, 'dm@gmail.com', 14);
INSERT INTO empregado (cpf, nome, salario, email, cpf_supervisor) VALUES (17, 'Amanda Batista', 3300.00, 'ab@gmail.com', 15);
INSERT INTO empregado (cpf, nome, salario, email, cpf_supervisor) VALUES (18, 'Mainara Andrade', 2850.00, 'ma@gmail.com', 16);
INSERT INTO empregado (cpf, nome, salario, email, cpf_supervisor) VALUES (19, 'Samanta Cintia', 2400.00, 'sc@gmail.com', 17);
INSERT INTO empregado (cpf, nome, salario, email, cpf_supervisor) VALUES (20, 'Arnaldo Coelho', 2350.00, 'ac@gmail.com', 18);
INSERT INTO empregado (cpf, nome, salario, email, cpf_supervisor) VALUES (21, 'Celine Dion', 1950.00, 'cd@gmail.com', 20);
INSERT INTO empregado (cpf, nome, salario, email, cpf_supervisor) VALUES (22, 'Jorge Amado', 1700.00, 'ja@gmail.com', 21);
INSERT INTO empregado (cpf, nome, salario, email, cpf_supervisor) VALUES (23, 'Tinia Marques', 1500.00, 'tm@gmail.com', 22);
INSERT INTO empregado (cpf, nome, salario, email, cpf_supervisor) VALUES (24, 'Paulo Sarnento', 1200.00, 'ps@gmail.com', 23);
INSERT INTO empregado (cpf, nome, salario, email, cpf_supervisor) VALUES (25, 'Liandro Victor', 1100.00, 'lv@gmail.com', 24);
INSERT INTO empregado (cpf, nome, salario, email, cpf_supervisor) VALUES (26, 'Sergio Marcos', 900.00, 'sm@gmail.com', 25);

-- 23 elementos
INSERT INTO telefone_empregado (cpf, telefone) VALUES (14, 1234);
INSERT INTO telefone_empregado (cpf, telefone) VALUES (14, 1211);
INSERT INTO telefone_empregado (cpf, telefone) VALUES (15, 1222);
INSERT INTO telefone_empregado (cpf, telefone) VALUES (15, 1233);
INSERT INTO telefone_empregado (cpf, telefone) VALUES (15, 1244);
INSERT INTO telefone_empregado (cpf, telefone) VALUES (16, 1255);
INSERT INTO telefone_empregado (cpf, telefone) VALUES (17, 1266);
INSERT INTO telefone_empregado (cpf, telefone) VALUES (18, 1277);
INSERT INTO telefone_empregado (cpf, telefone) VALUES (19, 1288);
INSERT INTO telefone_empregado (cpf, telefone) VALUES (19, 1299);
INSERT INTO telefone_empregado (cpf, telefone) VALUES (20, 1200);
INSERT INTO telefone_empregado (cpf, telefone) VALUES (20, 1232);
INSERT INTO telefone_empregado (cpf, telefone) VALUES (21, 1221);
INSERT INTO telefone_empregado (cpf, telefone) VALUES (14, 1231);
INSERT INTO telefone_empregado (cpf, telefone) VALUES (22, 1241);
INSERT INTO telefone_empregado (cpf, telefone) VALUES (23, 1251);
INSERT INTO telefone_empregado (cpf, telefone) VALUES (24, 1261);
INSERT INTO telefone_empregado (cpf, telefone) VALUES (24, 1271);
INSERT INTO telefone_empregado (cpf, telefone) VALUES (25, 1281);
INSERT INTO telefone_empregado (cpf, telefone) VALUES (26, 1219);
INSERT INTO telefone_empregado (cpf, telefone) VALUES (26, 1291);
INSERT INTO telefone_empregado (cpf, telefone) VALUES (26, 1281);
INSERT INTO telefone_empregado (cpf, telefone) VALUES (26, 1271);

-- 7 elementos
INSERT INTO instrutor (cpf, cref) VALUES (14, 111);
INSERT INTO instrutor (cpf, cref) VALUES (15, 222);
INSERT INTO instrutor (cpf, cref) VALUES (16, 333);
INSERT INTO instrutor (cpf, cref) VALUES (17, 444);
INSERT INTO instrutor (cpf, cref) VALUES (18, 555);
INSERT INTO instrutor (cpf, cref) VALUES (19, 666);
INSERT INTO instrutor (cpf, cref) VALUES (20, 777);

-- 3 elementos
INSERT INTO gerente (cpf, grau) VALUES (21, 1);
INSERT INTO gerente (cpf, grau) VALUES (22, 1);
INSERT INTO gerente (cpf, grau) VALUES (23, 2);

-- 9 elementos
INSERT INTO transacao (codigo, acao, valor, data, cpf_gerente) VALUES (1, 'Venda', 50.00, to_date ('02/02/2017', 'dd/mm/yyyy'), 23);
INSERT INTO transacao (codigo, acao, valor, data, cpf_gerente) VALUES (2, 'Venda', 150.00, to_date ('22/02/2017', 'dd/mm/yyyy'), 22);
INSERT INTO transacao (codigo, acao, valor, data, cpf_gerente) VALUES (3, 'Compra', 250.00, to_date ('24/02/2017', 'dd/mm/yyyy'), 22);
INSERT INTO transacao (codigo, acao, valor, data, cpf_gerente) VALUES (4, 'Compra', 50.00, to_date ('09/03/2017', 'dd/mm/yyyy'), 22);
INSERT INTO transacao (codigo, acao, valor, data, cpf_gerente) VALUES (5, 'Venda', 450.00, to_date ('09/03/2017', 'dd/mm/yyyy'), 23);
INSERT INTO transacao (codigo, acao, valor, data, cpf_gerente) VALUES (6, 'Compra', 50.00, to_date ('11/03/2017', 'dd/mm/yyyy'), 22);
INSERT INTO transacao (codigo, acao, valor, data, cpf_gerente) VALUES (7, 'Venda', 580.00, to_date ('15/04/2017', 'dd/mm/yyyy'), 23);
INSERT INTO transacao (codigo, acao, valor, data, cpf_gerente) VALUES (8, 'Venda', 50.00, to_date ('29/04/2017', 'dd/mm/yyyy'), 23);
INSERT INTO transacao (codigo, acao, valor, data, cpf_gerente) VALUES (9, 'Compra', 550.00, to_date ('03/05/2017', 'dd/mm/yyyy'), 23);

-- 3 elementos
INSERT INTO funcman (cpf, grau) VALUES (24, 'Tecnico');
INSERT INTO funcman (cpf, grau) VALUES (25, 'Tecnico');
INSERT INTO funcman (cpf, grau) VALUES (26, 'Superior');

-- 7 elementos
INSERT INTO grupamento (codigo, nome, descricao) VALUES (1, 'Biceps', 'Musculo encontrado na porcao anterior do braco');
INSERT INTO grupamento (codigo, nome, descricao) VALUES (2, 'Triceps', 'Musculo encontrado na porcao posterior do braco');
INSERT INTO grupamento (codigo, nome, descricao) VALUES (3, 'Gluteo', NULL);
INSERT INTO grupamento (codigo, nome, descricao) VALUES (4, 'Abdomen', NULL);
INSERT INTO grupamento (codigo, nome, descricao) VALUES (5, 'Peitoral', 'Ou musculo peitoral maior');
INSERT INTO grupamento (codigo, nome, descricao) VALUES (6, 'Trapezio', NULL);
INSERT INTO grupamento (codigo, nome, descricao) VALUES (7, 'Panturrilha', 'Ou triceps sural');

-- 10 elementos
INSERT INTO equipamento (codigo, nome, status, data_compra) VALUES (1, 'Leg Press', 'Novo' , to_date ('03/01/2017', 'dd/mm/yyyy'));           
INSERT INTO equipamento (codigo, nome, status, data_compra) VALUES (2, 'Alteres', 'Usado' , to_date ('04/01/2017', 'dd/mm/yyyy'));             
INSERT INTO equipamento (codigo, nome, status, data_compra) VALUES (3, 'Rosca Simultanea', 'Novo' , to_date ('05/01/2017', 'dd/mm/yyyy'));     
INSERT INTO equipamento (codigo, nome, status, data_compra) VALUES (4, 'Supino Reto', 'Novo', to_date ('06/01/2017', 'dd/mm/yyyy'));           
INSERT INTO equipamento (codigo, nome, status, data_compra) VALUES (5, 'Abdominal Paralelo', 'Novo' , to_date ('07/02/2017', 'dd/mm/yyyy'));   
INSERT INTO equipamento (codigo, nome, status, data_compra) VALUES (6, 'Esteira', 'Novo', to_date ('08/02/2017', 'dd/mm/yyyy'));               
INSERT INTO equipamento (codigo, nome, status, data_compra) VALUES (7, 'Barras Fixas', 'Novo', to_date ('09/02/2017', 'dd/mm/yyyy'));          
INSERT INTO equipamento (codigo, nome, status, data_compra) VALUES (8, 'Peck Deck', 'Novo', to_date ('10/02/2017', 'dd/mm/yyyy'));             
INSERT INTO equipamento (codigo, nome, status, data_compra) VALUES (9, 'Polia Alta', 'Novo', to_date ('11/02/2017', 'dd/mm/yyyy'));            
INSERT INTO equipamento (codigo, nome, status, data_compra) VALUES (10, 'Anilhas', 'Usado', to_date ('12/02/2017', 'dd/mm/yyyy'));             

-- 8 elementos
INSERT INTO maquina (codigo, carga) VALUES (1,50);
INSERT INTO maquina (codigo, carga) VALUES (3,60);
INSERT INTO maquina (codigo, carga) VALUES (4,70);
INSERT INTO maquina (codigo, carga) VALUES (5,50);
INSERT INTO maquina (codigo, carga) VALUES (6,90);
INSERT INTO maquina (codigo, carga) VALUES (7,100);
INSERT INTO maquina (codigo, carga) VALUES (8,110);
INSERT INTO maquina (codigo, carga) VALUES (9,110);

-- 2 elementos
INSERT INTO moveis (codigo, peso) VALUES (2, 40);
INSERT INTO moveis (codigo, peso) VALUES (10, 60);

-- 13 elementos
INSERT INTO ficha (codigo, descricao, restricao, cpf_aluno) VALUES (1, 'aaaa' , 'Problema cardiaco', 13);
INSERT INTO ficha (codigo, descricao, restricao, cpf_aluno) VALUES (2, 'bbbbb', NULL, 12);
INSERT INTO ficha (codigo, descricao, restricao, cpf_aluno) VALUES (3, 'ccccc', NULL, 11);
INSERT INTO ficha (codigo, descricao, restricao, cpf_aluno) VALUES (4, 'ddddd', 'Problema cardiaco', 1);
INSERT INTO ficha (codigo, descricao, restricao, cpf_aluno) VALUES (5, 'eeeee', 'Coluna fragilizada', 4);
INSERT INTO ficha (codigo, descricao, restricao, cpf_aluno) VALUES (6, 'fffff', NULL, 5);
INSERT INTO ficha (codigo, descricao, restricao, cpf_aluno) VALUES (7, 'ggggg', NULL, 8);
INSERT INTO ficha (codigo, descricao, restricao, cpf_aluno) VALUES (8, 'hhhhh', 'Coluna fragilizada', 2);
INSERT INTO ficha (codigo, descricao, restricao, cpf_aluno) VALUES (9, 'iiiii', NULL, 6);
INSERT INTO ficha (codigo, descricao, restricao, cpf_aluno) VALUES (10, 'jjjjj', 'Artrose pulso', 9);
INSERT INTO ficha (codigo, descricao, restricao, cpf_aluno) VALUES (11, 'kkkkk', 'Perna amputada', 10);
INSERT INTO ficha (codigo, descricao, restricao, cpf_aluno) VALUES (12, 'lllll', NULL, 3);
INSERT INTO ficha (codigo, descricao, restricao, cpf_aluno) VALUES (13, 'mmmmm', 'Problema cardiaco', 7);

-- 28 elementos
INSERT INTO instrui (cpf_instrutor, cpf_aluno) VALUES (14,1);
INSERT INTO instrui (cpf_instrutor, cpf_aluno) VALUES (20,2);
INSERT INTO instrui (cpf_instrutor, cpf_aluno) VALUES (18,3);
INSERT INTO instrui (cpf_instrutor, cpf_aluno) VALUES (19,4);
INSERT INTO instrui (cpf_instrutor, cpf_aluno) VALUES (15,5);
INSERT INTO instrui (cpf_instrutor, cpf_aluno) VALUES (16,6);
INSERT INTO instrui (cpf_instrutor, cpf_aluno) VALUES (17,7);
INSERT INTO instrui (cpf_instrutor, cpf_aluno) VALUES (17,8);
INSERT INTO instrui (cpf_instrutor, cpf_aluno) VALUES (18,9);
INSERT INTO instrui (cpf_instrutor, cpf_aluno) VALUES (19,10);
INSERT INTO instrui (cpf_instrutor, cpf_aluno) VALUES (20,11);
INSERT INTO instrui (cpf_instrutor, cpf_aluno) VALUES (14,12);
INSERT INTO instrui (cpf_instrutor, cpf_aluno) VALUES (14,13);
INSERT INTO instrui (cpf_instrutor, cpf_aluno) VALUES (17,1);
INSERT INTO instrui (cpf_instrutor, cpf_aluno) VALUES (19,2);
INSERT INTO instrui (cpf_instrutor, cpf_aluno) VALUES (15,2);
INSERT INTO instrui (cpf_instrutor, cpf_aluno) VALUES (15,10);
INSERT INTO instrui (cpf_instrutor, cpf_aluno) VALUES (16,9);
INSERT INTO instrui (cpf_instrutor, cpf_aluno) VALUES (17,10);
INSERT INTO instrui (cpf_instrutor, cpf_aluno) VALUES (18,2);
INSERT INTO instrui (cpf_instrutor, cpf_aluno) VALUES (19,8);
INSERT INTO instrui (cpf_instrutor, cpf_aluno) VALUES (14,5);
INSERT INTO instrui (cpf_instrutor, cpf_aluno) VALUES (20,4);
INSERT INTO instrui (cpf_instrutor, cpf_aluno) VALUES (15,1);
INSERT INTO instrui (cpf_instrutor, cpf_aluno) VALUES (16,13);
INSERT INTO instrui (cpf_instrutor, cpf_aluno) VALUES (19,13);
INSERT INTO instrui (cpf_instrutor, cpf_aluno) VALUES (18,6);
INSERT INTO instrui (cpf_instrutor, cpf_aluno) VALUES (14,8);

-- 31 elementos
INSERT INTO exercicio (cod_ficha, cod_grupamento, cod_equipamento) VALUES (1, 3, 1);
INSERT INTO exercicio (cod_ficha, cod_grupamento, cod_equipamento) VALUES (2, 1, 2);
INSERT INTO exercicio (cod_ficha, cod_grupamento, cod_equipamento) VALUES (8, 1, 3);
INSERT INTO exercicio (cod_ficha, cod_grupamento, cod_equipamento) VALUES (9, 5, 8);
INSERT INTO exercicio (cod_ficha, cod_grupamento, cod_equipamento) VALUES (10, 5, 8);
INSERT INTO exercicio (cod_ficha, cod_grupamento, cod_equipamento) VALUES (3, 1, 2);
INSERT INTO exercicio (cod_ficha, cod_grupamento, cod_equipamento) VALUES (4, 1, 10);
INSERT INTO exercicio (cod_ficha, cod_grupamento, cod_equipamento) VALUES (5, 2, 2);
INSERT INTO exercicio (cod_ficha, cod_grupamento, cod_equipamento) VALUES (11, 7, 6);
INSERT INTO exercicio (cod_ficha, cod_grupamento, cod_equipamento) VALUES (13, 2, 3);
INSERT INTO exercicio (cod_ficha, cod_grupamento, cod_equipamento) VALUES (6, 3, 1);
INSERT INTO exercicio (cod_ficha, cod_grupamento, cod_equipamento) VALUES (7, 4, 5);
INSERT INTO exercicio (cod_ficha, cod_grupamento, cod_equipamento) VALUES (12, 1, 2);
INSERT INTO exercicio (cod_ficha, cod_grupamento, cod_equipamento) VALUES (13, 6, 9);
INSERT INTO exercicio (cod_ficha, cod_grupamento, cod_equipamento) VALUES (1, 7, 2);
INSERT INTO exercicio (cod_ficha, cod_grupamento, cod_equipamento) VALUES (9, 4, 7);
INSERT INTO exercicio (cod_ficha, cod_grupamento, cod_equipamento) VALUES (6, 1, 2);
INSERT INTO exercicio (cod_ficha, cod_grupamento, cod_equipamento) VALUES (7, 5, 4);
INSERT INTO exercicio (cod_ficha, cod_grupamento, cod_equipamento) VALUES (12, 3, 1);
INSERT INTO exercicio (cod_ficha, cod_grupamento, cod_equipamento) VALUES (3, 4, 5);
INSERT INTO exercicio (cod_ficha, cod_grupamento, cod_equipamento) VALUES (4, 7, 1);
INSERT INTO exercicio (cod_ficha, cod_grupamento, cod_equipamento) VALUES (2, 1, 10);
INSERT INTO exercicio (cod_ficha, cod_grupamento, cod_equipamento) VALUES (1, 7, 6);
INSERT INTO exercicio (cod_ficha, cod_grupamento, cod_equipamento) VALUES (10, 7, 1);
INSERT INTO exercicio (cod_ficha, cod_grupamento, cod_equipamento) VALUES (11, 7, 2);
INSERT INTO exercicio (cod_ficha, cod_grupamento, cod_equipamento) VALUES (8, 4, 7);
INSERT INTO exercicio (cod_ficha, cod_grupamento, cod_equipamento) VALUES (10, 5, 4);
INSERT INTO exercicio (cod_ficha, cod_grupamento, cod_equipamento) VALUES (7, 7, 1);
INSERT INTO exercicio (cod_ficha, cod_grupamento, cod_equipamento) VALUES (2, 1, 3);
INSERT INTO exercicio (cod_ficha, cod_grupamento, cod_equipamento) VALUES (3, 2, 3);
INSERT INTO exercicio (cod_ficha, cod_grupamento, cod_equipamento) VALUES (12, 6, 9);

-- 7 elementos
INSERT INTO manutencao (cpf_funcman, cod_maquina, data, relatorio) VALUES (24, 1, to_date ('03/02/2017', 'dd/mm/yyyy'), 'Problema na peca x');
INSERT INTO manutencao (cpf_funcman, cod_maquina, data, relatorio) VALUES (24, 4, to_date ('06/02/2017', 'dd/mm/yyyy'), 'Problema na cabo y');
INSERT INTO manutencao (cpf_funcman, cod_maquina, data, relatorio) VALUES (26, 5, to_date ('07/03/2017', 'dd/mm/yyyy'), 'Problema no cabo x');
INSERT INTO manutencao (cpf_funcman, cod_maquina, data, relatorio) VALUES (24, 8, to_date ('10/03/2017', 'dd/mm/yyyy'), 'Ferrugem');
INSERT INTO manutencao (cpf_funcman, cod_maquina, data, relatorio) VALUES (26, 9, to_date ('11/03/2017', 'dd/mm/yyyy'), 'Problema na peca w');
INSERT INTO manutencao (cpf_funcman, cod_maquina, data, relatorio) VALUES (26, 3, to_date ('15/03/2017', 'dd/mm/yyyy'), 'Parafuso solto');
INSERT INTO manutencao (cpf_funcman, cod_maquina, data, relatorio) VALUES (26, 1, to_date ('03/04/2017', 'dd/mm/yyyy'), 'Ferrugem');

-- 3 elementos
INSERT INTO compra_nova (cpf_funcman, cod_maquina, data, cpf_gerente) VALUES (24, 1, to_date ('03/02/2017', 'dd/mm/yyyy'), 23);
INSERT INTO compra_nova (cpf_funcman, cod_maquina, data, cpf_gerente) VALUES (26, 5, to_date ('07/03/2017', 'dd/mm/yyyy'), 23);
INSERT INTO compra_nova (cpf_funcman, cod_maquina, data, cpf_gerente) VALUES (26, 3, to_date ('15/03/2017', 'dd/mm/yyyy'), 23);


