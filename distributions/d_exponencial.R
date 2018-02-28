#O tempo de vida de um transistor é de 500 horas. Qual a probabilidade de que ele dure somente até 400 horas?
duracao = 400
mediaVida = 500
dexp(x = duracao, rate = 1/mediaVida) #Calcula a chance que o transistor dure exatamente 400 horas.
pexp(q = duracao, rate = 1/mediaVida) #Calcula a chance que o transistor dure até 400 horas (intervalo maior)


#O tempo médio de um paciente em um leito de um hospital é de 3 dias. 
#Qual a probabilidade dele ficar entre 3 a 7 dias?
duracaoMax = 7
duracaoMedium = 3;
mediaInternacao = 3
prob7 <- pexp(q = duracao, rate = 1/mediaInternacao) #Calcula a probabilidade do paciente ficar internado por até 7 dias 
prob3 <- pexp(q = duracaoMedium, rate = 1/mediaInternacao)
result <- prob7 - prob3
result

#O tempo médio de entrega de produtos de uma determinada loja é de 20 minutos. 
#Qual a probabilidade que uma determinada entrega tenha mais de 30 minutos?
medio = 20
duracao = 30
pexp(q = duracao, rate = 1/medio)