# intervalo de tempo
# número de acontecimentos

#Um call center recebe em média 100 ligações por hora. 
#Qual a probabilidade do call center receber 95 ligações em um hora?
media = 100
k = 95
dpois(x = k, lambda = media)

#Um caixa de supermercado atende em média 5 clientes em 30 minutos. 
#Qual a probabilidade de atender 4 clientes em 30 minutos?
media = 5;
k = 4;
dpois(k, media);

#Um antivírus protege um computador em média 100 ataques por dia. 
#Qual a probabilidade de receber 250 ataques em um dia?
media = 100;
k = 250;
dpois(k, media)