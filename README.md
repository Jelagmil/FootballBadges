FootballBadges
================
XY Plot using badges from ENG, ESP, GER, ITA and FRA
Jesús Lagos @Vdot_spain <jelagmil@gmail.com>
2019-09-10

<!-- README.md is generated from README.Rmd. Please edit that file -->
La libreria FootballBadge esta pensada para poder hacer gráficos XY con ggplot de una manera sencilla usando los escudos de los equipos de primera de división de las principales ligas europeas.

Para poder probar las funciones de la libreria se ha instalado en `..\R\R-3.5.1\library\soccergraphR\data` los siguientes ficheros:

-   Teams.Rdata Un fichero donde consultar el listado de paises, equipos y el código que tiene que tener tu dataframe para que pinte los logos
-   Spain.RData Es un fichero con 3 columnas, donde se tiene un campo con el código de Equipo, una variable X y una variable Y-
-   De la misma manera están los ficheros France, England, Italy, Germany. 
-   Una vez instalada la libreria puedes cargar los datos directamente con:

``` r
#Para que se abra en el navegador:
data(Spain)
data(Teams)
Teams
#También puedes ver la estructura de la tabla:
?Spain
```

Versiones
=========
Versión 0.1.0 
-------------
- Versión Inicial. 

Instalación y Ayuda
-------------------

Para instalar el paquete desde Github:

``` r
devtools::install_github('jelagmil/FootballBadges', build_opts = c("--no-resave-data", "--no-manual"))
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
