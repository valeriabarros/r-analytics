#Uso em associações de variáveis categóricas

#Associação entre variáveis categóricas: Deseja-se verificar a existência de associação entre escolaridade e
#renda(considerar df = 2).

qui = 10.1
1 - pchisq(q = qui, df = 2)

#Calcula a probabilidade de haver associação entre escolaridade e renda. Probabilidade muito baixa.