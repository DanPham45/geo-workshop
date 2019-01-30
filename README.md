# geo-workshop

## Start by creating a new folder
mkdir geo-workshop
cd geo-workshop

## Download census data from Stats Canada. Move unzip it to data folder
https://www12.statcan.gc.ca/census-recensement/2016/dp-pd/prof/details/download-telecharger/comp/page_dl-tc.cfm?Lang=E

## Install Docker
https://www.docker.com/get-started

## Pull jupyter image (Optional)
docker pull jupyter/scipy-notebook

## Create Dockerfile
FROM jupyter/scipy-notebook
RUN pip install folium

## Add .dockerignore to skip data folder during build
vi .dockerignore
data

## Build image
docker build -t georesearch .

## Start Jupyter Notebook
docker run -it --rm -p 8888:8888 -v `pwd`:/home/jovyan/work georesearch
