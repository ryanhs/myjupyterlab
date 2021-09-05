FROM jupyter/datascience-notebook:latest

# nodejs - essentials
RUN conda install -c conda-forge nodejs

# spreadsheet
RUN jupyter labextension install jupyterlab-spreadsheet

# ijavascript kernel
RUN npm i -g ijavascript && ijsinstall

# drawio
RUN jupyter labextension install jupyterlab-drawio

# ipywidgets & python pip...
RUN conda install -c conda-forge ipywidgets
RUN pip install iplotter
RUN pip install pandas
RUN pip install pymongo
RUN pip install ssh-pymongo
RUN conda install -c conda-forge ipyleaflet
RUN pip install ilua

# add tmp dir
RUN mkdir /home/jovyan/tmp
