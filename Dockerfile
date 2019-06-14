FROM rocker/shiny:3.6.0

RUN apt-get update && apt-get --yes install libxml2-dev libopenjp2-7-dev r-cran-rjava libssl-dev libmariadbclient-dev libssl-dev openjdk-8-jdk libsasl2-dev 

RUN  R -e "install.packages(c('shiny' \
  ,'tidyverse' \
  ,'haven' \
  ,'RMySQL' \ 
  ,'jsonlite' \
  ,'mongolite' \
  ,'PKI' \
  ,'rio' \
  ,'doBy' \
  ,'DT' \ 
  ,'shiny' \
  ,'htmlwidgets' \
  ,'htmltools' \
  ,'shinymaterial' \
  ,'formattable' \
  ,'ggthemes' \
  ,'shinyFiles' \
  ,'ggmap' \
  ,'leaflet' \
  ,'geosphere' \
  ,'shinydashboard' \
  ,'shinythemes' \
  ,'colourpicker' \
  ,'httr' \
  ,'rmarkdown' \
  ,'knitr' \ 
  ,'timevis' \
  ,'ggalluvial' \
  ,'sendmailR' \
  ,'data.table' \
  ,'bit64' \
  ,'XML' \
  ,'lubridate' \
  ,'readxl' \
  ,'openxlsx' \
  ,'rjson' \
  ,'xlsx' \
  ,'latice' \
  ,'leaflet' \
  ))"


RUN  R -e "install.packages(c('lattice' \
  ,'sp' \
  ,'leaflet' \
  ,'nlme' \
  ,'broom' \
  ,'tidyverse' \
  ,'MASS' \
  ,'Matrix' \
  ,'doBy' \
  ))"


#COPY shiny.config /opt/shiny-server/config/default.config 
