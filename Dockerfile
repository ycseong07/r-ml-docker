# building docker image to use R-Studio in a browser

# MAC env can't use cuda images
# FROM rocker/ml:4.2.0-cuda11.1
FROM rocker/ml:4.2.0

## copy files
COPY install_packages.R /install_packages.R

## install packages
# command RUN will be executed during build of the image

RUN R -e "install.packages('tidyverse', dependencies = T)"
RUN R -e "install.packages('dplyr', dependencies = T)"
RUN R -e "install.packages('ggthemes', dependencies = T)"
RUN R -e "install.packages('ggtext', dependencies = T)"
RUN R -e "install.packages('cowplot', dependencies = T)"
RUN R -e "install.packages('ggplotgui', dependencies = T)"
RUN R -e "install.packages('ggplotlyExtra', dependencies = T)"
RUN R -e "install.packages('ggplot2movies', dependencies = T)"
RUN R -e "install.packages('ggmap', dependencies = T)"
RUN R -e "install.packages('ggcorrplot', dependencies = T)"
RUN R -e "install.packages('ggalt', dependencies = T)"
RUN R -e "install.packages('flexdashboard', dependencies = T)"
RUN R -e "install.packages('shiny', dependencies = T)"
RUN R -e "install.packages('shinydashboard', dependencies = T)"
RUN R -e "install.packages('shinydashboardPlus', dependencies = T)"
RUN R -e "install.packages('shinyjs', dependencies = T)"
RUN R -e "install.packages('shinythemes', dependencies = T)"
RUN R -e "install.packages('servr', dependencies = T)"
RUN R -e "install.packages('broom', dependencies = T)"
RUN R -e "install.packages('tidygapminder', dependencies = T)"
RUN R -e "install.packages('gapminder', dependencies = T)"
RUN R -e "install.packages('caret', dependencies = T)"
RUN R -e "install.packages('ggExtra', dependencies = T)"
RUN R -e "install.packages('lubridate', dependencies = T)"
RUN R -e "install.packages('ReinforcementLearning', dependencies = T)"
RUN R -e "install.packages('magrittr', dependencies = T)"
RUN R -e "install.packages('plotly', dependencies = T)"
RUN R -e "install.packages('openssl', dependencies = T)"
RUN R -e "install.packages('rvest', dependencies = T)"
RUN R -e "install.packages('qdap', dependencies = T)"
RUN R -e "install.packages('stringr', dependencies = T)"
RUN R -e "install.packages('twitteR', dependencies = T)"
RUN R -e "install.packages('syuzhet', dependencies = T)"
RUN R -e "install.packages('scales', dependencies = T)"
RUN R -e "install.packages('reshape2', dependencies = T)"

RUN Rscript /install_packages.R

## docker run --name "ml-r" -p 8787:8787 -e USER=guest -e PASSWORD=guest -v /Users/ychan/git_repos/Shiny-Dashboard-Template:/home/guest/rstudio --restart always ycseong/r-ml:latest