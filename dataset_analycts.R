data_petrobras <- read.csv("data/precos_petrobras.csv");
str(data_petrobras)

data_petrobras %>% 
  ggplot( aes( x = data, y = preco ) ) +
  geom_line()
  
