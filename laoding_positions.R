dados_paises <- read_csv2("data/dados_1997_2011_paises_csv.csv", locale = locale(encoding = 'latin1'))

# min, max and mean by idh
# summarise create a table with the values
dados_paises %>% 
  summarise(
    idh_min = min(idh),
    idh_max = max(idh),
    idh_medium = mean(idh),
    idh_moda = mlv(idh, method = 'mfv')$M
  )

dados_paises %>% 
  filter(idh == min(idh))

