#============================================================================
# ESTATÍSTICA - HISTOGRAMAS NO R
# Versão 1.00 (2019) - 11.08.2019
# Autor: Prof. Giovanni Leopoldo Rozza (2019)
#
#============================================================================

# DADOS DE ENTRADA
dados <- c(2.56,2.50,2.62,2.52,2.69,2.53,2.65,2.63,2.61,2.57,2.55,2.59,2.54,2.64,2.68,2.68,2.71,2.74,2.75,2.62) 

# DEFINICAO DAS CLASSES
classes<-c(2.50,seq(2.57,2.78, 0.07)) 

# MONTA GRÁFICO DO HISTOGRAMA CHAMANDO A FUNÇÃO "hist()" do R
 
hist_info<-hist(dados,breaks= classes,main="Diâmetro dos Pistões (cm)", right = FALSE, 
                xlab="Centímetros",ylab="Frequência",border="azure4",ylim=c(0,8),col="azure",xaxt="n" )

# REARRANJA O EIXO X PARA IMPRIMIR OS PONTOS MEDIOS
axis(side=1,c(2.54,2.61,2.68,2.75))


# POLíGONO DE FREQUÊNCIAS USANDO GGPLOT2


library("ggplot2")                       # para instalar o pacote ggplot, escreva o comando install.packages("ggplot2")
                                         # no console do R-Studio ou do R

library("ggplot2")
x<-c(2.47,2.54,2.61,2.68,2.75,2.82)      # pontos médios exemplo pistões
y<-c(0,6,6,5,3,0)                        # frequencia de ocorrências por classes exemplo pistoes
xddf <- data.frame(x=x,y=y)              # cria dataframe (necessario para ggplot)
qplot(x,y,main="Polígono de Frequências",xlab="Centímetros",ylab="Frequ?ncia",data=xddf,geom="line",) +
      geom_ribbon(data=subset(xddf ,x>=2.47 & x<=2.82),aes(ymax=y),ymin=0,fill="red",alpha=0.3) +
      scale_x_continuous(breaks=c(2.47,2.54,2.61,2.68,2.75,2.82) ,
                     labels=c("2.47","2.54","2.61","2.68","2.75","2.82"))




