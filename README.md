# rocker-opendp

[![Project Status: Active – The project has reached a stable, usable state and is being actively developed.](http://www.repostatus.org/badges/latest/active.svg)](http://www.repostatus.org/#active)
[![ci](https://github.com/mavelli/rocker-opendp/actions/workflows/main.yml/badge.svg)](https://github.com/mavelli/rocker-opendp/actions/workflows/main.yml)

## What is inside
This is a Docker Image for a RStudio environement based on 
[rocker/verse](https://hub.docker.com/r/rocker/verse/) from the awesome [Rocker Project](https://www.rocker-project.org/) 
with the following Tools added for differential privacy:
* [opendp](https://opendp.r-universe.dev/packages)


## How to use it
Since this image is based on [rocker/verse](https://hub.docker.com/r/rocker/verse/), I suggest their excellent documentation on how to use it:
[Using the RStudio image](https://github.com/rocker-org/rocker/wiki/Using-the-RStudio-image)

in a nutshell:

get the image from docker hub:
```bash
docker pull mavelli/rocker-opendp
```
run a container:
```bash
docker run -d -e PASSWORD=password -p 8787:8787 mavelli/rocker-opendp
```
connect to rstudio in a webbrowser at
```url
localhost:8787  
```
