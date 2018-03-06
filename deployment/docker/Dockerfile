FROM jupyter/scipy-notebook:92fe05d1e7e5
USER root
RUN DOCKERVERSION=17.12.1-ce \
  && wget https://download.docker.com/linux/static/stable/x86_64/docker-${DOCKERVERSION}.tgz \
  && tar -xzvf docker-${DOCKERVERSION}.tgz \
  && mv docker/docker /usr/local/bin/ \
  && rm -r docker docker-${DOCKERVERSION}.tgz
USER 1000

# pin some packages to avoid unnecessary upgrades
RUN conda install -y openblas=0.2.19 numpy=1.12.1 numexpr pandas=0.19.2 geopandas=0.3.0 && conda clean -tipsy
RUN pip install --no-cache-dir download nbgitpuller
RUN jupyter serverextension enable --py nbgitpuller --sys-prefix
