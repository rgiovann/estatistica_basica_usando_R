#============================================================================
# ESTATÍSTICA - MEDIDA DE CURTOSE 
# Versão 1.00 (2019) - 05.09.2019
# Autor: Prof. Giovanni Leopoldo Rozza (2019)
#============================================================================

#-------------------------------------------
# FUNCAO funcao_CalculaCurtose
#-------------------------------------------
# calcula a CURTOSE da distribuição retorna um valor
# a entrada sao os dados da amostra

funcao_CalculaCurtose <- function(dadosEntrada) 
{
  desvio_padrao<- sd(dadosEntrada)
  
  media<- mean(dadosEntrada)
  
  numerador   <-0
  for(nConta in seq_len(length(dadosEntrada)))
  {
    numerador   <- numerador + (dadosEntrada[nConta]- media)^4
  }
  numerador <-numerador/length(dadosEntrada)
  
  denominador <- desvio_padrao^4
  
  return(numerador/denominador - 3)
}

# DADOS DE ENTRADA (exemplos do pistao)
dados <- c(2.56,2.50,2.62,2.52,2.69,2.53,2.65,2.63,2.61,2.57,2.55,2.59,2.54,2.64,2.68,2.68,2.71,2.74,2.75,2.62) 

# executa a função que calcula a curtose do vetor de dados "dados"
linha<- sprintf("Medida de Curtose : % 8.3f",funcao_CalculaCurtose(dados))  # prepara o texto formatando a variável numérica para 99999.99
print(linha) # imprime o texto na tela



