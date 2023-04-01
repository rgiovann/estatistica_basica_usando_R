#============================================================================
# CÁLCULO CORRELAÇÃO LINEAR DE PEARSON
# MODELO DE REGRESSÃO LINEAR SIMPLES
#
# Versão 1.00 (2019) - 11.10.2019
# Autor: Prof. Giovanni Leopoldo Rozza (2019)
#
#============================================================================
# EXEMPLO
#
# Mediu-se a quantidade de vendas e o número de visitas mensais de um determinado 
# grupo de vendedores:
#    x Visitas Mensais   Vendas (x1000 Reais)
#       80             20
#       94             35
#       135            58
#       168            74
#       87             23
#       158            62
#       92             32
#       117            45

# entrada de dados (x e y)

x<-c(80,94,135,168,87,158,92,117)
y<-c(20,35,58,74,23,62,32,45)

# imprime a estimativa do coef. de correlação linear de Pearson

# imprime no formato 9.999
linha<- sprintf("Estimação do coef. de correlação linear de Pearson entre x e y : % 5.3f",cor(x, y))  
print(linha) # imprime o texto na tela

# imprime os coeficiented do modelo de regressão linear
# Y = Bo + B1X
# Bo (intercept)

relacaoLinear <- lm(y~x)  # calcula o modelo de regressão linear baseado na relacao entre variáveis
print(relacaoLinear)

# Plota o gráfico de dispersão dos dados junto com a curva de regressão linear
plot(x,y,col = "blue",main = "Nr Visitas versus Vendas (x1000 R$)",
     abline(lm(y~x),col = "red",lwd=2),cex.main=0.9,cex = 1.2,pch=16,cex.lab=0.8,
     xlab = "Nr. Visitas",ylab = "Vendas (x1000 R$)",ylim=c(0,80),xlim=c(0,180))


# calcula os resíduos em relação ao MRLS (Modelo Regressão Linear Simples)
residuos.relacaoLinear <- resid(relacaoLinear)

windows()

#plota o gráfico dos resíduos
plot(c(1:length(x)),residuos.relacaoLinear, abline(0, 0),cex.main=0.9,cex = 0.9,pch=16,
     ylab="Resíduos", xlab="Amostra",main="Resíduos MRLS") 




