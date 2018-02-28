#Uma empresa tem 100 clientes devedores, a chance de sucesso na cobrança é de 30%,
#qual a probabilidade de que 35 clientes sejam cobrados com sucesso?


n = 100 #numero total
p = 0.3 #frequencia relativa do sucesso
k = 35 #valor a ser buscado na amostra

dbinom(x = k, size = n, prob = p);

#Uma maquina apresenta produtos defeituosos numa taxa de 5%. 
#Em lote com 10 unidades, qual a probabilidade de que nenhum produto apresente 
#defeito?

p = 0.05 #frequencia relativa de defeitos
k = 0 #valor a ser buscado na amostra
n = 10 #amostra
dbinom(x = k, size = n, prob = p)


# Uma faculdade possui uma evasão de 10% dos alunos.
#Entraram 500 calouros, qual a probabilidade de que 50 alunos desistam
#até o final do curso?
p = 0.10 #frequencia relativa de evasão
n = 500 #amostra total de alunos 
k = 50 #valor a ser buscado
dbinom(x = k, size = n, prob = p)

