-- 5 elementos
INSERT INTO tb_plano VALUES (1, 50, 'Mensal');

INSERT INTO tb_plano VALUES (2, 100, 'Bimestral');

INSERT INTO tb_plano VALUES (3, 150, 'Trimestral');

INSERT INTO tb_plano VALUES (6, 260, 'Semestral');

INSERT INTO tb_plano VALUES (12, 500, 'Anual');
 
-- 13 elementos
INSERT INTO tb_aluno VALUES (1, 'Maria Eduarda', 'F', 1.52, 65, 'me@gmail.com', 25, (SELECT REF(P) FROM tb_plano P WHERE P.codigo = 2), tp_endereco(123, 'Rua Azul'), tp_nt_telefone(1122,1133));
 
INSERT INTO tb_aluno VALUES (2, 'Vitor Nascimento', 'M', 1.72, 85, 'vn@gmail.com', 23, (SELECT REF(P) FROM tb_plano P WHERE P.codigo = 2), tp_endereco(144, 'Rua Verde'), tp_nt_telefone(1144));
 
INSERT INTO tb_aluno VALUES (3, 'Lidia Maria', 'F', 1.48, 67, 'lm@gmail.com', 33, (SELECT REF(P) FROM tb_plano P WHERE P.codigo = 6), tp_endereco(829, 'Rua Rosa'), tp_nt_telefone(1155));
 
INSERT INTO tb_aluno VALUES (4, 'Hugo Santos', 'M', 1.66, 73, 'hs@gmail.com', 16, (SELECT REF(P) FROM tb_plano P WHERE P.codigo = 1), tp_endereco(408, 'Rua Vermelha'), tp_nt_telefone(4411,1199,8844));
 
INSERT INTO tb_aluno VALUES (5, 'Karine Monteiro', 'F', 1.89, 74, 'km@gmail.com', 20, (SELECT REF(P) FROM tb_plano P WHERE P.codigo = 12), tp_endereco(874, 'Rua Amarela'), tp_nt_telefone(8855));
 
INSERT INTO tb_aluno VALUES (6, 'Otavio Augusto', 'M', 1.63, 82, 'oa@gmail.com', 34, (SELECT REF(P) FROM tb_plano P WHERE P.codigo = 1), tp_endereco(413, 'Rua Preta'), tp_nt_telefone(8866));
 
INSERT INTO tb_aluno VALUES (7, 'Tiago Cavalcanti', 'M', 1.90, 80, 'tc@gmail.com', 45, (SELECT REF(P) FROM tb_plano P WHERE P.codigo = 1), tp_endereco(908, 'Rua Branca'), tp_nt_telefone(8877));
 
INSERT INTO tb_aluno VALUES (8, 'Fernando Castor', 'M', 1.84, 69, 'fc@gmail.com', 37, (SELECT REF(P) FROM tb_plano P WHERE P.codigo = 1), tp_endereco(165, 'Rua Marrom'), tp_nt_telefone(2233));
 
INSERT INTO tb_aluno VALUES (9, 'Sabrina Silva', 'F', 1.62, 53, 'ss@gmail.com', 54, (SELECT REF(P) FROM tb_plano P WHERE P.codigo = 2), tp_endereco(817, 'Rua Roxa'), tp_nt_telefone(5566,7788,8833,8844));
 
INSERT INTO tb_aluno VALUES (10, 'Gabriela Araujo', 'F', 1.87, 93, 'ga@gmail.com', 42, (SELECT REF(P) FROM tb_plano P WHERE P.codigo = 6), tp_endereco(829, 'Rua Laranja'), tp_nt_telefone(1177,7711,8899,2288,9900));
 
INSERT INTO tb_aluno VALUES (11, 'Patricia Poeta', 'F', 1.58, 78, 'pp@gmail.com', 19, (SELECT REF(P) FROM tb_plano P WHERE P.codigo = 6), tp_endereco(663, 'Rua Cinza'), tp_nt_telefone(1100,2200));
 
INSERT INTO tb_aluno VALUES (12, 'Bruna Cassia', 'F', 1.47, 66, 'bc@gmail.com', 22, (SELECT REF(P) FROM tb_plano P WHERE P.codigo = 2), tp_endereco(433, 'Rua Lilas'), tp_nt_telefone(3300));
 
INSERT INTO tb_aluno VALUES (13, 'Carlos Francisco', 'M', 1.78, 73, 'cf@gmail.com', 18, (SELECT REF(P) FROM tb_plano P WHERE P.codigo = 12), tp_endereco(333, 'Rua Rosa'), tp_nt_telefone(4400,5500,6600,7700));
 
-- 7 elementos
INSERT INTO tb_instrutor VALUES (14, 'Sergio Alexandre', 4050.00, 'sa@gmail.com', tp_nt_telefone(1234,1211,1231), NULL, 111);
 
INSERT INTO tb_instrutor VALUES (15, 'Ana Maria Braga', 4100.00, 'amb@gmail.com', tp_nt_telefone(1222,1233,1244), NULL, 222);
 
INSERT INTO tb_instrutor VALUES (16, 'Daniel Malaquias', 2550.00, 'dm@gmail.com', tp_nt_telefone(1255), (SELECT REF(S) FROM tb_instrutor S WHERE S.cpf = 14), 333);
 
INSERT INTO tb_instrutor VALUES (17, 'Amanda Batista', 3300.00, 'ab@gmail.com', tp_nt_telefone(1266), (SELECT REF(S) FROM tb_instrutor S WHERE S.cpf = 15), 444);
 
INSERT INTO tb_instrutor VALUES (18, 'Mainara Andrade', 2850.00, 'ma@gmail.com', tp_nt_telefone(1277), (SELECT REF(S) FROM tb_instrutor S WHERE S.cpf = 16), 555);
 
INSERT INTO tb_instrutor VALUES (19, 'Samanta Cintia', 2400.00, 'sc@gmail.com', tp_nt_telefone(1288,1299), (SELECT REF(S) FROM tb_instrutor S WHERE S.cpf = 17), 666);
 
INSERT INTO tb_instrutor VALUES (20, 'Arnaldo Coelho', 2350.00, 'ac@gmail.com', tp_nt_telefone(1200,1232), (SELECT REF(S) FROM tb_instrutor S WHERE S.cpf = 18), 777);
 
-- 3 elementos
INSERT INTO tb_gerente VALUES (21, 'Celine Dion', 1950.00, 'cd@gmail.com', tp_nt_telefone(1221), (SELECT REF(S) FROM tb_instrutor S WHERE S.cpf = 20), 1);
 
INSERT INTO tb_gerente VALUES (22, 'Jorge Amado', 1700.00, 'ja@gmail.com', tp_nt_telefone(1241), (SELECT REF(S) FROM tb_gerente S WHERE S.cpf = 21), 1);
 
INSERT INTO tb_gerente VALUES (23, 'Tinia Marques', 1500.00, 'tm@gmail.com', tp_nt_telefone(1251), (SELECT REF(S) FROM tb_gerente S WHERE S.cpf = 22), 2);
 
-- 9 elementos
INSERT INTO tb_transacao VALUES (1, 'Venda', 50.00, to_date ('02/02/2017', 'dd/mm/yyyy'), (SELECT REF(G) FROM tb_gerente G WHERE G.cpf = 23));
 
INSERT INTO tb_transacao VALUES (2, 'Venda', 150.00, to_date ('22/02/2017', 'dd/mm/yyyy'), (SELECT REF(G) FROM tb_gerente G WHERE G.cpf = 22));
 
INSERT INTO tb_transacao VALUES (3, 'Compra', 250.00, to_date ('24/02/2017', 'dd/mm/yyyy'), (SELECT REF(G) FROM tb_gerente G WHERE G.cpf = 22));
 
INSERT INTO tb_transacao VALUES (4, 'Compra', 50.00, to_date ('09/03/2017', 'dd/mm/yyyy'), (SELECT REF(G) FROM tb_gerente G WHERE G.cpf = 22));
 
INSERT INTO tb_transacao VALUES (5, 'Venda', 450.00, to_date ('09/03/2017', 'dd/mm/yyyy'), (SELECT REF(G) FROM tb_gerente G WHERE G.cpf = 23));
 
INSERT INTO tb_transacao VALUES (6, 'Compra', 50.00, to_date ('11/03/2017', 'dd/mm/yyyy'), (SELECT REF(G) FROM tb_gerente G WHERE G.cpf = 22));
 
INSERT INTO tb_transacao VALUES (7, 'Venda', 580.00, to_date ('15/04/2017', 'dd/mm/yyyy'), (SELECT REF(G) FROM tb_gerente G WHERE G.cpf = 23));
 
INSERT INTO tb_transacao VALUES (8, 'Venda', 50.00, to_date ('29/04/2017', 'dd/mm/yyyy'), (SELECT REF(G) FROM tb_gerente G WHERE G.cpf = 23));
 
INSERT INTO tb_transacao VALUES (9, 'Compra', 550.00, to_date ('03/05/2017', 'dd/mm/yyyy'), (SELECT REF(G) FROM tb_gerente G WHERE G.cpf = 23));
 
--3 elementos
INSERT INTO tb_funcman VALUES (24, 'Paulo Sarnento', 1200.00, 'ps@gmail.com', tp_nt_telefone(1261,1271), (SELECT REF(S) FROM tb_gerente S WHERE S.cpf = 23), 'Tecnico');
 
INSERT INTO tb_funcman VALUES (25, 'Liandro Victor', 1100.00, 'lv@gmail.com', tp_nt_telefone(1281), (SELECT REF(S) FROM tb_funcman S WHERE S.cpf = 24), 'Tecnico');
 
INSERT INTO tb_funcman VALUES (26, 'Sergio Marcos', 900.00, 'sm@gmail.com', tp_nt_telefone(1219,1291,1281,1271), (SELECT REF(S) FROM tb_funcman S WHERE S.cpf = 25), 'Superior');
 
-- 7 elementos
INSERT INTO tb_grupamento VALUES (1, 'Biceps', 'Musculo encontrado na porcao anterior do braco');
 
INSERT INTO tb_grupamento VALUES (2, 'Triceps', 'Musculo encontrado na porcao posterior do braco');
 
INSERT INTO tb_grupamento VALUES (3, 'Gluteo', 'aaaaaaaaaaaaaaaaaaa');
 
INSERT INTO tb_grupamento VALUES (4, 'Abdomen', 'bbbbbbbbbb');
 
INSERT INTO tb_grupamento VALUES (5, 'Peitoral', 'Ou musculo peitoral maior');
 
INSERT INTO tb_grupamento VALUES (6, 'Trapezio', 'zzzzzzz');
 
INSERT INTO tb_grupamento VALUES (7, 'Panturrilha', 'Ou triceps sural');
 
-- 8 elementos
INSERT INTO tb_maquina VALUES (1, 'Leg Press', 'Novo' , to_date ('03/01/2017', 'dd/mm/yyyy'), 50);
 
INSERT INTO tb_maquina VALUES (3, 'Rosca Simultanea', 'Novo' , to_date ('05/01/2017', 'dd/mm/yyyy'), 60);
 
INSERT INTO tb_maquina VALUES (4, 'Supino Reto', 'Novo', to_date ('06/01/2017', 'dd/mm/yyyy'), 70);
 
INSERT INTO tb_maquina VALUES (5, 'Abdominal Paralelo', 'Novo' , to_date ('07/02/2017', 'dd/mm/yyyy'), 50);
 
INSERT INTO tb_maquina VALUES (6, 'Esteira', 'Novo', to_date ('08/02/2017', 'dd/mm/yyyy'), 90);
 
INSERT INTO tb_maquina VALUES (7, 'Barras Fixas', 'Novo', to_date ('09/02/2017', 'dd/mm/yyyy'), 100);
 
INSERT INTO tb_maquina VALUES (8, 'Peck Deck', 'Novo', to_date ('10/02/2017', 'dd/mm/yyyy'), 110);
 
INSERT INTO tb_maquina VALUES (9, 'Polia Alta', 'Novo', to_date ('11/02/2017', 'dd/mm/yyyy'), 110);
 
-- 2 elementos
INSERT INTO tb_moveis VALUES (2, 'Alteres', 'Usado' , to_date ('04/01/2017', 'dd/mm/yyyy'), 40);
 
INSERT INTO tb_moveis VALUES (10, 'Anilhas', 'Usado', to_date ('12/02/2017', 'dd/mm/yyyy'), 60);
 
--13 elementos
INSERT INTO tb_ficha VALUES (1, 'aaaa' , 'Problema cardiaco', (SELECT REF(A) FROM tb_aluno A WHERE A.cpf = 13));
 
INSERT INTO tb_ficha VALUES (2, 'bbbbb', NULL, (SELECT REF(A) FROM tb_aluno A WHERE A.cpf = 12));
 
INSERT INTO tb_ficha VALUES (3, 'ccccc', NULL, (SELECT REF(A) FROM tb_aluno A WHERE A.cpf = 11));
 
INSERT INTO tb_ficha VALUES (4, 'ddddd', 'Problema cardiaco', (SELECT REF(A) FROM tb_aluno A WHERE A.cpf = 1));
 
INSERT INTO tb_ficha VALUES (5, 'eeeee', 'Coluna fragilizada', (SELECT REF(A) FROM tb_aluno A WHERE A.cpf = 4));
 
INSERT INTO tb_ficha VALUES (6, 'fffff', NULL, (SELECT REF(A) FROM tb_aluno A WHERE A.cpf = 5));
 
INSERT INTO tb_ficha VALUES (7, 'ggggg', NULL, (SELECT REF(A) FROM tb_aluno A WHERE A.cpf = 8));
 
INSERT INTO tb_ficha VALUES (8, 'hhhhh', 'Coluna fragilizada', (SELECT REF(A) FROM tb_aluno A WHERE A.cpf = 2));
 
INSERT INTO tb_ficha VALUES (9, 'iiiii', NULL, (SELECT REF(A) FROM tb_aluno A WHERE A.cpf = 6));
 
INSERT INTO tb_ficha VALUES (10, 'jjjjj', 'Artrose pulso', (SELECT REF(A) FROM tb_aluno A WHERE A.cpf = 9));
 
INSERT INTO tb_ficha VALUES (11, 'kkkkk', 'Perna amputada', (SELECT REF(A) FROM tb_aluno A WHERE A.cpf = 10));
 
INSERT INTO tb_ficha VALUES (12, 'lllll', NULL, (SELECT REF(A) FROM tb_aluno A WHERE A.cpf = 3));
 
INSERT INTO tb_ficha VALUES (13, 'mmmmm', 'Problema cardiaco', (SELECT REF(A) FROM tb_aluno A WHERE A.cpf = 7));
 
-- 28 elementos
INSERT INTO tb_instrui VALUES (1, (SELECT REF(A) FROM tb_aluno A WHERE A.cpf = 1), (SELECT REF(I) FROM tb_instrutor I WHERE I.cpf = 14));
 
INSERT INTO tb_instrui VALUES (2, (SELECT REF(A) FROM tb_aluno A WHERE A.cpf = 2), (SELECT REF(I) FROM tb_instrutor I WHERE I.cpf = 20));
 
INSERT INTO tb_instrui VALUES (3, (SELECT REF(A) FROM tb_aluno A WHERE A.cpf = 3), (SELECT REF(I) FROM tb_instrutor I WHERE I.cpf = 18));
 
INSERT INTO tb_instrui VALUES (4, (SELECT REF(A) FROM tb_aluno A WHERE A.cpf = 4), (SELECT REF(I) FROM tb_instrutor I WHERE I.cpf = 18));
 
INSERT INTO tb_instrui VALUES (5, (SELECT REF(A) FROM tb_aluno A WHERE A.cpf = 5), (SELECT REF(I) FROM tb_instrutor I WHERE I.cpf = 15));
 
INSERT INTO tb_instrui VALUES (6, (SELECT REF(A) FROM tb_aluno A WHERE A.cpf = 6), (SELECT REF(I) FROM tb_instrutor I WHERE I.cpf = 16));
 
INSERT INTO tb_instrui VALUES (7, (SELECT REF(A) FROM tb_aluno A WHERE A.cpf = 7), (SELECT REF(I) FROM tb_instrutor I WHERE I.cpf = 17));
 
INSERT INTO tb_instrui VALUES (8, (SELECT REF(A) FROM tb_aluno A WHERE A.cpf = 8), (SELECT REF(I) FROM tb_instrutor I WHERE I.cpf = 17));
 
INSERT INTO tb_instrui VALUES (9, (SELECT REF(A) FROM tb_aluno A WHERE A.cpf = 9), (SELECT REF(I) FROM tb_instrutor I WHERE I.cpf = 18));
 
INSERT INTO tb_instrui VALUES (10, (SELECT REF(A) FROM tb_aluno A WHERE A.cpf = 10), (SELECT REF(I) FROM tb_instrutor I WHERE I.cpf = 19));
 
INSERT INTO tb_instrui VALUES (11, (SELECT REF(A) FROM tb_aluno A WHERE A.cpf = 11), (SELECT REF(I) FROM tb_instrutor I WHERE I.cpf = 20));
 
INSERT INTO tb_instrui VALUES (12, (SELECT REF(A) FROM tb_aluno A WHERE A.cpf = 12), (SELECT REF(I) FROM tb_instrutor I WHERE I.cpf = 14));
 
INSERT INTO tb_instrui VALUES (13, (SELECT REF(A) FROM tb_aluno A WHERE A.cpf = 13), (SELECT REF(I) FROM tb_instrutor I WHERE I.cpf = 14));
 
INSERT INTO tb_instrui VALUES (14, (SELECT REF(A) FROM tb_aluno A WHERE A.cpf = 1), (SELECT REF(I) FROM tb_instrutor I WHERE I.cpf = 17));
 
INSERT INTO tb_instrui VALUES (15, (SELECT REF(A) FROM tb_aluno A WHERE A.cpf = 2), (SELECT REF(I) FROM tb_instrutor I WHERE I.cpf = 19));
 
INSERT INTO tb_instrui VALUES (16, (SELECT REF(A) FROM tb_aluno A WHERE A.cpf = 2), (SELECT REF(I) FROM tb_instrutor I WHERE I.cpf = 15));
 
INSERT INTO tb_instrui VALUES (17, (SELECT REF(A) FROM tb_aluno A WHERE A.cpf = 10), (SELECT REF(I) FROM tb_instrutor I WHERE I.cpf = 15));
 
INSERT INTO tb_instrui VALUES (18, (SELECT REF(A) FROM tb_aluno A WHERE A.cpf = 9), (SELECT REF(I) FROM tb_instrutor I WHERE I.cpf = 16));
 
INSERT INTO tb_instrui VALUES (19, (SELECT REF(A) FROM tb_aluno A WHERE A.cpf = 10), (SELECT REF(I) FROM tb_instrutor I WHERE I.cpf = 17));
 
INSERT INTO tb_instrui VALUES (20, (SELECT REF(A) FROM tb_aluno A WHERE A.cpf = 2), (SELECT REF(I) FROM tb_instrutor I WHERE I.cpf = 18));
 
INSERT INTO tb_instrui VALUES (21, (SELECT REF(A) FROM tb_aluno A WHERE A.cpf = 8), (SELECT REF(I) FROM tb_instrutor I WHERE I.cpf = 19));
 
INSERT INTO tb_instrui VALUES (22, (SELECT REF(A) FROM tb_aluno A WHERE A.cpf = 5), (SELECT REF(I) FROM tb_instrutor I WHERE I.cpf = 14));
 
INSERT INTO tb_instrui VALUES (23, (SELECT REF(A) FROM tb_aluno A WHERE A.cpf = 4), (SELECT REF(I) FROM tb_instrutor I WHERE I.cpf = 20));
 
INSERT INTO tb_instrui VALUES (24, (SELECT REF(A) FROM tb_aluno A WHERE A.cpf = 1), (SELECT REF(I) FROM tb_instrutor I WHERE I.cpf = 15));
 
INSERT INTO tb_instrui VALUES (25, (SELECT REF(A) FROM tb_aluno A WHERE A.cpf = 13), (SELECT REF(I) FROM tb_instrutor I WHERE I.cpf = 16));
 
INSERT INTO tb_instrui VALUES (26, (SELECT REF(A) FROM tb_aluno A WHERE A.cpf = 13), (SELECT REF(I) FROM tb_instrutor I WHERE I.cpf = 19));
 
INSERT INTO tb_instrui VALUES (27, (SELECT REF(A) FROM tb_aluno A WHERE A.cpf = 6), (SELECT REF(I) FROM tb_instrutor I WHERE I.cpf = 18));
 
INSERT INTO tb_instrui VALUES (28, (SELECT REF(A) FROM tb_aluno A WHERE A.cpf = 8), (SELECT REF(I) FROM tb_instrutor I WHERE I.cpf = 14));
 
-- 31 elementos
INSERT INTO tb_exercicio VALUES (1, 3, 1, (SELECT REF(F) FROM tb_ficha F WHERE F.codigo = 1), (SELECT REF(G) FROM tb_grupamento G WHERE G.codigo = 3), (SELECT REF(E) FROM tb_maquina E WHERE E.codigo = 1));
 
INSERT INTO tb_exercicio VALUES (2, 1, 2, (SELECT REF(F) FROM tb_ficha F WHERE F.codigo = 2), (SELECT REF(G) FROM tb_grupamento G WHERE G.codigo = 1), (SELECT REF(E) FROM tb_moveis E WHERE E.codigo = 2));
 
INSERT INTO tb_exercicio VALUES (8, 1, 3, (SELECT REF(F) FROM tb_ficha F WHERE F.codigo = 8), (SELECT REF(G) FROM tb_grupamento G WHERE G.codigo = 1), (SELECT REF(E) FROM tb_maquina E WHERE E.codigo = 3));
 
INSERT INTO tb_exercicio VALUES (9, 5, 8, (SELECT REF(F) FROM tb_ficha F WHERE F.codigo = 9), (SELECT REF(G) FROM tb_grupamento G WHERE G.codigo = 5), (SELECT REF(E) FROM tb_maquina E WHERE E.codigo = 8));
 
INSERT INTO tb_exercicio VALUES (10, 5, 8, (SELECT REF(F) FROM tb_ficha F WHERE F.codigo = 10), (SELECT REF(G) FROM tb_grupamento G WHERE G.codigo = 5), (SELECT REF(E) FROM tb_maquina E WHERE E.codigo = 8));
 
INSERT INTO tb_exercicio VALUES (3, 1, 2, (SELECT REF(F) FROM tb_ficha F WHERE F.codigo = 3), (SELECT REF(G) FROM tb_grupamento G WHERE G.codigo = 1), (SELECT REF(E) FROM tb_moveis E WHERE E.codigo = 2));
 
INSERT INTO tb_exercicio VALUES (4, 1, 10, (SELECT REF(F) FROM tb_ficha F WHERE F.codigo = 4), (SELECT REF(G) FROM tb_grupamento G WHERE G.codigo = 1), (SELECT REF(E) FROM tb_maquina E WHERE E.codigo = 10));
 
INSERT INTO tb_exercicio VALUES (5, 2, 2, (SELECT REF(F) FROM tb_ficha F WHERE F.codigo = 5), (SELECT REF(G) FROM tb_grupamento G WHERE G.codigo = 2), (SELECT REF(E) FROM tb_moveis E WHERE E.codigo = 2));
 
INSERT INTO tb_exercicio VALUES (11, 7, 6, (SELECT REF(F) FROM tb_ficha F WHERE F.codigo = 11), (SELECT REF(G) FROM tb_grupamento G WHERE G.codigo = 7), (SELECT REF(E) FROM tb_maquina E WHERE E.codigo = 6));
 
INSERT INTO tb_exercicio VALUES (13, 2, 3, (SELECT REF(F) FROM tb_ficha F WHERE F.codigo = 13), (SELECT REF(G) FROM tb_grupamento G WHERE G.codigo = 2), (SELECT REF(E) FROM tb_maquina E WHERE E.codigo = 3));
 
INSERT INTO tb_exercicio VALUES (6, 3, 1, (SELECT REF(F) FROM tb_ficha F WHERE F.codigo = 6), (SELECT REF(G) FROM tb_grupamento G WHERE G.codigo = 3), (SELECT REF(E) FROM tb_maquina E WHERE E.codigo = 1));
 
INSERT INTO tb_exercicio VALUES (7, 4, 5, (SELECT REF(F) FROM tb_ficha F WHERE F.codigo = 7), (SELECT REF(G) FROM tb_grupamento G WHERE G.codigo = 4), (SELECT REF(E) FROM tb_maquina E WHERE E.codigo = 5));
 
INSERT INTO tb_exercicio VALUES (12, 1, 2, (SELECT REF(F) FROM tb_ficha F WHERE F.codigo = 12), (SELECT REF(G) FROM tb_grupamento G WHERE G.codigo = 1), (SELECT REF(E) FROM tb_moveis E WHERE E.codigo = 2));
 
INSERT INTO tb_exercicio VALUES (13, 6, 9, (SELECT REF(F) FROM tb_ficha F WHERE F.codigo = 13), (SELECT REF(G) FROM tb_grupamento G WHERE G.codigo = 6), (SELECT REF(E) FROM tb_maquina E WHERE E.codigo = 9));
 
INSERT INTO tb_exercicio VALUES (1, 7, 2, (SELECT REF(F) FROM tb_ficha F WHERE F.codigo = 1), (SELECT REF(G) FROM tb_grupamento G WHERE G.codigo = 7), (SELECT REF(E) FROM tb_moveis E WHERE E.codigo = 2));
 
INSERT INTO tb_exercicio VALUES (9, 4, 7, (SELECT REF(F) FROM tb_ficha F WHERE F.codigo = 9), (SELECT REF(G) FROM tb_grupamento G WHERE G.codigo = 4), (SELECT REF(E) FROM tb_maquina E WHERE E.codigo = 7));
 
INSERT INTO tb_exercicio VALUES (6, 1, 2, (SELECT REF(F) FROM tb_ficha F WHERE F.codigo = 6), (SELECT REF(G) FROM tb_grupamento G WHERE G.codigo = 1), (SELECT REF(E) FROM tb_maquina E WHERE E.codigo = 2));
 
INSERT INTO tb_exercicio VALUES (7, 5, 4, (SELECT REF(F) FROM tb_ficha F WHERE F.codigo = 7), (SELECT REF(G) FROM tb_grupamento G WHERE G.codigo = 5), (SELECT REF(E) FROM tb_maquina E WHERE E.codigo = 4));
 
INSERT INTO tb_exercicio VALUES (12, 3, 1, (SELECT REF(F) FROM tb_ficha F WHERE F.codigo = 12), (SELECT REF(G) FROM tb_grupamento G WHERE G.codigo = 3), (SELECT REF(E) FROM tb_maquina E WHERE E.codigo = 1));
 
INSERT INTO tb_exercicio VALUES (3, 4, 5, (SELECT REF(F) FROM tb_ficha F WHERE F.codigo = 3), (SELECT REF(G) FROM tb_grupamento G WHERE G.codigo = 4), (SELECT REF(E) FROM tb_maquina E WHERE E.codigo = 5));
 
INSERT INTO tb_exercicio VALUES (4, 7, 1, (SELECT REF(F) FROM tb_ficha F WHERE F.codigo = 4), (SELECT REF(G) FROM tb_grupamento G WHERE G.codigo = 7), (SELECT REF(E) FROM tb_maquina E WHERE E.codigo = 1));
 
INSERT INTO tb_exercicio VALUES (2, 1, 10, (SELECT REF(F) FROM tb_ficha F WHERE F.codigo = 2), (SELECT REF(G) FROM tb_grupamento G WHERE G.codigo = 1), (SELECT REF(E) FROM tb_moveis E WHERE E.codigo = 10));
 
INSERT INTO tb_exercicio VALUES (1, 7, 6, (SELECT REF(F) FROM tb_ficha F WHERE F.codigo = 1), (SELECT REF(G) FROM tb_grupamento G WHERE G.codigo = 7), (SELECT REF(E) FROM tb_maquina E WHERE E.codigo = 6));
 
INSERT INTO tb_exercicio VALUES (10, 7, 1, (SELECT REF(F) FROM tb_ficha F WHERE F.codigo = 10), (SELECT REF(G) FROM tb_grupamento G WHERE G.codigo = 7), (SELECT REF(E) FROM tb_maquina E WHERE E.codigo = 1));
 
INSERT INTO tb_exercicio VALUES (11, 7, 2, (SELECT REF(F) FROM tb_ficha F WHERE F.codigo = 11), (SELECT REF(G) FROM tb_grupamento G WHERE G.codigo = 7), (SELECT REF(E) FROM tb_moveis E WHERE E.codigo = 2));
 
INSERT INTO tb_exercicio VALUES (8, 4, 7, (SELECT REF(F) FROM tb_ficha F WHERE F.codigo = 8), (SELECT REF(G) FROM tb_grupamento G WHERE G.codigo = 4), (SELECT REF(E) FROM tb_maquina E WHERE E.codigo = 7));
 
INSERT INTO tb_exercicio VALUES (10, 5, 4, (SELECT REF(F) FROM tb_ficha F WHERE F.codigo = 10), (SELECT REF(G) FROM tb_grupamento G WHERE G.codigo = 5), (SELECT REF(E) FROM tb_maquina E WHERE E.codigo = 4));
 
INSERT INTO tb_exercicio VALUES (7, 7, 1, (SELECT REF(F) FROM tb_ficha F WHERE F.codigo = 7), (SELECT REF(G) FROM tb_grupamento G WHERE G.codigo = 7), (SELECT REF(E) FROM tb_maquina E WHERE E.codigo = 1));
 
INSERT INTO tb_exercicio VALUES (2, 1, 3, (SELECT REF(F) FROM tb_ficha F WHERE F.codigo = 2), (SELECT REF(G) FROM tb_grupamento G WHERE G.codigo = 1), (SELECT REF(E) FROM tb_maquina E WHERE E.codigo = 3));
 
INSERT INTO tb_exercicio VALUES (3, 2, 3, (SELECT REF(F) FROM tb_ficha F WHERE F.codigo = 3), (SELECT REF(G) FROM tb_grupamento G WHERE G.codigo = 2), (SELECT REF(E) FROM tb_maquina E WHERE E.codigo = 3));
 
INSERT INTO tb_exercicio VALUES (12, 6, 9, (SELECT REF(F) FROM tb_ficha F WHERE F.codigo = 12), (SELECT REF(G) FROM tb_grupamento G WHERE G.codigo = 6), (SELECT REF(E) FROM tb_maquina E WHERE E.codigo = 9));
 
-- 7 elementos
INSERT INTO tb_manutencao VALUES (24, 1, to_date ('03/02/2017', 'dd/mm/yyyy'), 'Problema na peca x', (SELECT REF(F) FROM tb_funcman F WHERE F.cpf = 24), (SELECT REF(M) FROM tb_maquina M WHERE M.codigo = 1));
 
INSERT INTO tb_manutencao VALUES (24, 4, to_date ('06/02/2017', 'dd/mm/yyyy'), 'Problema na cabo y', (SELECT REF(F) FROM tb_funcman F WHERE F.cpf = 24), (SELECT REF(M) FROM tb_maquina M WHERE M.codigo = 4));
 
INSERT INTO tb_manutencao VALUES (26, 5, to_date ('07/03/2017', 'dd/mm/yyyy'), 'Problema no cabo x', (SELECT REF(F) FROM tb_funcman F WHERE F.cpf = 26), (SELECT REF(M) FROM tb_maquina M WHERE M.codigo = 5));
 
INSERT INTO tb_manutencao VALUES (24, 8, to_date ('10/03/2017', 'dd/mm/yyyy'), 'Ferrugem', (SELECT REF(F) FROM tb_funcman F WHERE F.cpf = 24), (SELECT REF(M) FROM tb_maquina M WHERE M.codigo = 8));
 
INSERT INTO tb_manutencao VALUES (26, 9, to_date ('11/03/2017', 'dd/mm/yyyy'), 'Problema na peca w', (SELECT REF(F) FROM tb_funcman F WHERE F.cpf = 26), (SELECT REF(M) FROM tb_maquina M WHERE M.codigo = 9));
 
INSERT INTO tb_manutencao VALUES (26, 3, to_date ('15/03/2017', 'dd/mm/yyyy'), 'Parafuso solto', (SELECT REF(F) FROM tb_funcman F WHERE F.cpf = 26), (SELECT REF(M) FROM tb_maquina M WHERE M.codigo = 3));
 
INSERT INTO tb_manutencao VALUES (26, 1, to_date ('03/04/2017', 'dd/mm/yyyy'), 'Ferrugem', (SELECT REF(F) FROM tb_funcman F WHERE F.cpf = 26), (SELECT REF(M) FROM tb_maquina M WHERE M.codigo = 1));
 
-- 3 elementos
INSERT INTO tb_compra_nova VALUES (24, 1, to_date ('03/02/2017', 'dd/mm/yyyy'), 23, (SELECT REF(M) FROM tb_manutencao M WHERE M.cpf_funcman = 24 AND M.cod_maquina = 1 AND M.data = '03/02/2017'), (SELECT REF(G) FROM tb_gerente G WHERE G.cpf = 23));
 
INSERT INTO tb_compra_nova VALUES (26, 5, to_date ('07/03/2017', 'dd/mm/yyyy'), 23, (SELECT REF(M) FROM tb_manutencao M WHERE M.cpf_funcman = 26 AND M.cod_maquina = 5 AND M.data = '07/03/2017'), (SELECT REF(G) FROM tb_gerente G WHERE G.cpf = 23));
 
INSERT INTO tb_compra_nova VALUES (26, 3, to_date ('15/03/2017', 'dd/mm/yyyy'), 23, (SELECT REF(M) FROM tb_manutencao M WHERE M.cpf_funcman = 26 AND M.cod_maquina = 3 AND M.data = '15/03/2017'), (SELECT REF(G) FROM tb_gerente G WHERE G.cpf = 23));
