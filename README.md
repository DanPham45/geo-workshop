# geo-workshop

## Prerequisites
### Install Docker
https://www.docker.com/get-started

## Instructions
### Start by creating a new folder
```
mkdir geo-workshop
cd geo-workshop
```

### (Optional) Pull jupyter image 
docker pull jupyter/scipy-notebook

### Create Dockerfile
```
FROM jupyter/scipy-notebook
RUN pip install folium
RUN pip install geopandas 
```

### Build image
docker build --build-arg HTTP_PROXY=$HTTP_PROXY --build-arg HTTPS_PROXY=$HTTPS_PROXY -t georesearch .

### Prepare input data
#### Create entry folders
```
mkdir work
mkdir work/data
```

#### Download census data from Stats Canada. Unzip it to work/data folder
##### 2016 Census
https://www12.statcan.gc.ca/census-recensement/2016/dp-pd/prof/details/download-telecharger/comp/page_dl-tc.cfm?Lang=E
##### Boundary files
https://www12.statcan.gc.ca/census-recensement/2011/geo/bound-limit/bound-limit-2016-eng.cfm

### (Optional) Add .dockerignore to skip data folder

### Start Jupyter Notebook
```
docker run -it --rm -e JUPYTER_ENABLE_LAB=yes -p 8888:8888 -v \`pwd\`/work:/home/jovyan/work georesearch
```
