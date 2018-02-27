#Calcula desvio das médias e probabilidades

#A renda média per capita de uma determinada cidade é de R$2.500,00? 
#Qual a probabilidade de um indivíduo possuir renda maior que R$5.000,00? (considerar desvio padrão = R$800,00)
renda_media = 2500
valor_buscado = 5000
desvio = 800
1 - pnorm(q = valor_buscado, mean = renda_media, sd = 800) #pnorm calcula a probabilidade até o valor buscado, 
                                                           # para calcular a probabilidade em caso de 'maior que', 
                                                           # diminui pela probabilidade completa, ou seja, 1.

