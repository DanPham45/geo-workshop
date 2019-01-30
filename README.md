# geo-workshop

## Start by creating a new folder
mkdir geo-workshop

cd geo-workshop


## Install Docker
https://www.docker.com/get-started

## (Optional) Pull jupyter image 
docker pull jupyter/scipy-notebook

## Create Dockerfile
FROM jupyter/scipy-notebook

RUN pip install folium

## Build image
docker build --build-arg HTTP_PROXY=$HTTP_PROXY --build-arg HTTPS_PROXY=$HTTPS_PROXY -t georesearch .

## Prepare input data
### Create entry folders
mkdir work
mkdir work/data

### Download census data from Stats Canada. Unzip it to work/data folder
https://www12.statcan.gc.ca/census-recensement/2016/dp-pd/prof/details/download-telecharger/comp/page_dl-tc.cfm?Lang=E


## (Optional) Add .dockerignore to skip data folder
vi .dockerignore

data


## Start Jupyter Notebook

docker run -it --rm -e JUPYTER_ENABLE_LAB=yes -p 8888:8888 -v `pwd`/work:/home/jovyan/work georesearch
