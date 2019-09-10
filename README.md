FootballBadges
================
XY Plot using badges from ENG, ESP, GER, ITA and FRA
Jesús Lagos @Vdot_spain <jelagmil@gmail.com>
2019-09-10

<!-- README.md is generated from README.Rmd. Please edit that file -->
La libreria soccergraphR esta pensada para todos aquellos que trabajen con los datos de OPTA y para que las personas que estén estudiando o quieran conocer los datos puedan analizarlos y hacer visualizaciones y análisis de los mismos. Con esta libreria podrás:

-   Parsear los xml de Opta (Hay 6 ficheros de ejemplo: f24, f28,2xpass,stats y srml)
-   Analizar los grafos de pases y gráficas de radar
-   Análizar las zonas de tiro
-   Mapas de calor de pases
-   Análisis de corners
-   Gráficas de radar según las estadísticas de una temporada
-   Analizar las posesiones y los eventos por zona
-   Analizar grafos de pases adelantados
-   Analizar las recuperaciones y los tiros asociados.

Para poder probar las funciones de la libreria se ha instalado en `..\R\R-3.5.1\library\soccergraphR\data` los siguientes ficheros:

-   f24. Es el XML de eventos de un partido
-   Pass1 y pass2. Los xml de pases de los 2 equipos del fichero f24
-   f28. Es el XML de posesiones
-   Stats. Es el XML con las estadísticas de toda la temporada de un equipo
-   SRML. Es el XMl con estadísticas de un partido

Versiones
=========
Versión 0.1.2 
-------------
- Se ha incluido la función para realizar mapas con xG y el campo de coordenadas.

Versión 0.1.1 
-------------
- Se corregido la leyenda de OptaMAPcontras 
- Se ha cambiado OptaMAPcorner por flechas 
- Se ha añadido la función OptaMAParrowpass para visualizar pases como flechas por jugador 
- Actualizado las viñetas, ayudas y Readme 
- Se ha mejorado OptaMAPshoot marcando el pie izquierdo y derecho del tirador 
- Se ha añadido la función OptaMAPshoot2 que visualiza los disparos desde una vista aérea 
- Se han ajustado los radar plot por posición

Instalación y Ayuda
-------------------

Para instalar el paquete desde Github:

``` r
devtools::install_github('jelagmil/soccergraphR', build_opts = c("--no-resave-data", "--no-manual"),build_vignettes = TRUE)
library(soccergraphR)
```

Una vez instalado puedes leer la explicación de la libreria ejecutando:

``` r
#Para que se abra en el navegador:
browseVignettes("soccergraphR")

#Para que se abra en la pestaña de Help de RStudio:
vignette("my-vignette")
```

Para conocer cada función y como se usa cada una también puedes usar "?" seguido de la función para mostrar la ayuda en la pestaña de Help de RStudio. Si apretas F1 con el cursor puesto en la función también se despliega en la ayuda:

``` r
?OptaMAParrowpass
?OptaMAPcontras
?OptaMAPcorner
?OptaMAPdfrontpass
?OptaMAPdirectpass
?OptaMAPheatMapFrom
?OptaMAPheatMapTo
?OptaMAPmatrixpass
?OptaMAPmatrixpasscluster
?OptaMAPposesion
?OptaMAPposesionzonal
?OptaMAPradarevent
?OptaMAPshoot
?OptaMAPshoot2
?OptaXMLeventos
?OptaXMLpassmatrix
?OptaXMLposesion
?OptaXMLstats
```

Se vería así: <img src="vignettes/21.png" width="100%" />

OptaXMLeventos
--------------

Con esta función `df<-OptaXMLeventos(ruta_fichero)` podrás pasar el xml f24 a un dataframe teniendo cada evento por linea y sus cualificadores por columna ademas de servirte para muchas de las funciones de esta libreria.

``` r
#Pon la ruta donde tengas instsalada la libreria en mi caso:
ruta_eventos<-c('C:/My Program Files/R/R-3.5.1/library/soccergraphR/data/f24.xml')
df<-OptaXMLeventos(ruta_eventos)
```

Y así quedaría:

<img src="vignettes/3.png" alt="A la izq XML de Opta, a la derecha convertido a dataframe" width="100%" />
<p class="caption">
A la izq XML de Opta, a la derecha convertido a dataframe
</p>
