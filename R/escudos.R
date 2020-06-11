#' Esta funcion crea un grafico scatter plot con los escudos de las principales ligas europeas
#'
#' @param df Un df
#' @param league Un literal que marca la liga que se quiere mostrar
#' @return El grafico a partir de la tabla \code{df} con los escudos
#' @examples
#' PlotXY_Badges(df,"ESP")
#' @export
#'
#' @import ggplot2
#' @import ggimage
#'
PlotXY_Badges <- function(df,league_code){

  names(df)<-c('Teams','Xaxis1','Yaxis1')

  #contar numero de columnas (tiene que tener 3)
  # la primera tiene que ser char y las otras numeric


  #Identificamos la liga
  if(league_code =="ESP"){
    liga <- "ESP_"}
  else if(league_code=="ENG"){
    liga <- "ENG_"}
  else if(league_code=="GER"){
    liga <- "GER_"}
  else if(league_code=="ITA"){
    liga <- "ITA_"}
  else if(league_code=="FRA"){
    liga <- "FRA_"}
  else{
    return(c("Por favor seleccione el nombre correcto de la liga/Please select the correct name of the ligue: ESP, ENG, GER, ITA, FRA"))
    }


Tit <- readline("Titulo/Title: ")
Stit <- readline("Subtitulo/Subtitle: ")
xaxis <- readline("Etiqueta Eje X / Label x axis: ")
yaxis <- readline("Etiqueta Eje Y / Label y axis: ")


df$badge <- paste(system.file(package="FootballBadges"),"/Badges/",liga,df$Teams ,".png",sep="")


p<-ggplot(data = df, aes(x = Xaxis1, y = Yaxis1)) +
  ggtitle(label = Tit ,subtitle = Stit) +
  geom_image(aes(image = badge), size = 0.03) +
  geom_segment(data = df,aes(x = median(Xaxis1), y = 0, xend = median(Xaxis1), yend = max(Yaxis1)), linetype="dashed",colour = "gray61",alpha=0.5) +
  geom_segment(data = df,aes(x = 0, y = median(Yaxis1), xend = max(Xaxis1), yend = median(Yaxis1)), linetype="dashed", colour = "gray61",alpha=0.5) +
  xlab(xaxis) +
  ylab(yaxis) +
  annotate(geom="text", x=max(df$Yaxis1)-0.1, y=median(df$Xaxis1)+0.05, label=paste("Median =",format(round(median(df$Xaxis1), 2), nsmall = 2)),
             color="gray",size=3) +
  annotate(geom="text", x=max(df$Xaxis1)+0.1, y=median(df$Yaxis1), label=paste("Median =",format(round(median(df$Yaxis1), 2), nsmall = 2)),
           color="gray",size=3) +
  theme(legend.position="none") +
  theme(plot.title = element_text(hjust = 0.5, face="bold.italic", size=14),
        plot.subtitle = element_text(hjust = 0.5, face="bold.italic", size=10),
        panel.background = element_blank(),
        panel.border = element_blank(),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(),
        axis.line = element_line(size = 0.5, linetype = "solid",
                                 colour = "gray"))

return(p)
}

