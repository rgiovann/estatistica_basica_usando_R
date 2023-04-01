#============================================================================
# ESTATÍSTICA
# Versão 1.00 (2019) - 05.09.2019
# Autor: Prof. Giovanni Leopoldo Rozza (2019)
#
#============================================================================

dados <- c(2.56,2.50,2.62,2.52,2.69,2.53,2.65,2.63,2.61,2.57,2.55,2.59,2.54,2.64,2.68,2.68,2.71,2.74,2.75,2.62) 

# exemplo box plot

bpDados<-boxplot(dados,main = "Box Plot Diâmetro dos Pistões",xlab = "Centímetros (cm)",horizontal = TRUE,col="grey",notch = FALSE)

# bpDados$stats
# [,1]
# [1,] 2.500    - valor mínimo
# [2,] 2.555    - Q1
# [3,] 2.620    - Q2
# [4,] 2.680    - Q3
# [5,] 2.750    - Valor máximo
