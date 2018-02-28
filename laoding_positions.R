dados_paises <- read_csv2("data/dados_1997_2011_paises_csv.csv", locale = locale(encoding = 'latin1'))

# min, max and mean by idh
# summarise aggregate values
dados_paises %>% 
  summarise(
    idh_min = min(idh),
    idh_max = max(idh),
    idh_medium = mean(idh),
    idh_moda = mlv(idh, method = 'mfv')$M,
    idh_0.10 = quantile(idh, probs = 0.1), # 10% da amostra é menor ou igual que o valor
    idh_0.90 = quantile(idh, probs = 0.90), # 90% da amostra é menor ou igual que o valor
    idh_q1 = quantile(idh, probs = 0.25), #25% da amostra é menor que o valor
    idh_q2 = quantile(idh, probs = 0.5), # 50% da amostra é menor que o valor
    idh_q3 = quantile(idh, probs = 0.75) # 75% da amostra é menor que o valor
  )

dados_paises %>% 
  filter(idh == min(idh))


#Calculate quartils from IDH to dataset
dados_paises %>%
  mutate(idh_quartil = 
           cut (
               idh, quantile(idh, c(0,0.25,0.5,0.75,1)),
               include.lowest = TRUE,
               labels = c('D', 'C', 'B', 'A')
             )
         )


#Calculate quartils from competitividade to dataset
dados_paises %>%
  mutate(quartil = 
           cut (
               competitividade_indice, quantile(competitividade_indice, c(0,0.25,0.5,0.75,1)),
               include.lowest = TRUE,
               labels = c('D', 'C', 'B', 'A')
             )
         ) %>% 
  ggplot(aes(x = pais, y = competitividade_indice, fill = quartil )) + geom_bar (stat = 'identity')




