FROM jupyter/scipy-notebook:92fe05d1e7e5
USER root
RUN DOCKERVERSION=17.12.1-ce \
  && wget https://download.docker.com/linux/static/stable/x86_64/docker-${DOCKERVERSION}.tgz \
  && tar -xzvf docker-${DOCKERVERSION}.tgz \
  && mv docker/docker /usr/local/bin/ \
  && rm -r docker docker-${DOCKERVERSION}.tgz
USER 1000
