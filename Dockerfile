FROM rocker/verse:latest
MAINTAINER Damir Perisa

RUN apt-get update \
 && apt-get install -y \
  curl build-essential gcc make cargo
  
RUN install2.r --error \
  --repos "https://stat.ethz.ch/CRAN/" \
  DT \
  binomialDP
  
RUN Rscript -e "install.packages('opendp', repos = c('https://opendp.r-universe.dev', 'https://cloud.r-project.org'))"
