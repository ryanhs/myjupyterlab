
#### .bashrc
```
alias jupyterlab_docker='docker run --rm \
  -p 8888:8888 \
  -e JUPYTER_ENABLE_LAB=yes \
  -v /mnt/d/tmp/jupyter:/home/jovyan/work \
  jupyter/datascience-notebook:latest
'
```

### build.sh

docker build -t myjupyterlab:latest .
