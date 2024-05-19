library(dplyr)
df_loan_mei_umur <- df_cabang_umur %>%
  inner_join(df_loan_mei, by = 'cabang')
df_loan_mei_umur
