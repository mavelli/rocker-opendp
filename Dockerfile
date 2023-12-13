FROM rocker/verse:latest
MAINTAINER Damir Perisa

RUN apt-get update \
 && apt-get install -y \
  curl build-essential gcc make
  
RUN sh -c curl https://sh.rustup.rs -sSf | sh -s -- -y --default-toolchain none

RUN Rscript -e "install.packages('opendp', repos = c('https://opendp.r-universe.dev', 'https://cloud.r-project.org'))"
