FROM jupyter/scipy-notebook
RUN pip install --trusted-host pypi.org --trusted-host files.pythonhosted.org folium
RUN pip install --trusted-host pypi.org --trusted-host files.pythonhosted.org geopandas
