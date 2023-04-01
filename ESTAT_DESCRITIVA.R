#============================================================================
# ESTATÍSTICA
# CÁLCULO DE MEDIDAS DE TENDÊNCIA CENTRAL/DISPERSAO NO R
# MÉDIA,MEDIANA, QUARTIS, DESVIO PADRAO E COEF. VARIACAO
# Versão 1.00 (2019) - 05.09.2019
# Autor: Prof. Giovanni Leopoldo Rozza (2019)
#============================================================================

# DADOS DE ENTRADA (EXEMPLO DOS PISTÕES)
dados <- c(2.56,2.50,2.62,2.52,2.69,2.53,2.65,2.63,2.61,2.57,2.55,2.59,2.54,2.64,2.68,2.68,2.71,2.74,2.75,2.62) 

#MEDIA ARITMÉTICA
media<- mean(dados)   # calcula a média aritmética usando a funcao "mean()"
linha<- sprintf("Média Aritmética : % 8.3f",media)  # imprime o texto formatando a variável numérica para 99999.99
print(linha)

#resultado
#
# [1] "Média Aritmética :    2.619"
#

#MEDIANA (2o quartil)
mediana<- median(dados)   # calcula a mediana usando a funcao "median()"
linha<- sprintf("Mediana : % 8.3f",mediana)  # prepara o texto formatando a variável numérica para 99999.99
print(linha) # imprime o texto na tela

#resultado
#
#[1] "Mediana :    2.620"
#


#QUARTIS Q1, Q2(mediana), Q3
quartis<- quantile(dados)   # calcula os quartis usando a funcao "quantile()"
print(quartis) # imprime os valores na tela

# NOTA: os Quartis Q1, Q2, Q3 são os valores a 25%, 50% e 75% respectivamente, os valores a 0% são o valor mínimo e 100% o valor máximo
#resultado
#
#0%    25%    50%    75%   100% 
#2.5000 2.5575 2.6200 2.6800 2.7500 
#


#DESVIO PADRAO E COEFICIENTE DE VARIACAO 
desvio_padrao<- sd(dados)   # calcula o desvio padrão usando a função "sd()"
media<- mean(dados)   # calcula a média aritmética usando a funcao "mean()"
linha<- sprintf("Desvio Padrão : % 8.3f",desvio_padrao)  # imprime o texto formatando a variável numérica para 99999.99
print(linha)
linha<- sprintf("Coeficiente de Variação : % 8.3f%%",(desvio_padrao/media)*100)  # imprime o texto formatando a variável numérica para 99999.99
print(linha)
