library(dplyr)
df_cabang_umur <- df_loan %>%
  group_by(cabang) %>% 
  summarise(pertama_cair = min(tanggal_cair)) %>% 
  mutate(umur = as.numeric(as.Date('2020-05-15') - as.Date(pertama_cair)) %/% 30) 
df_cabang_umur
