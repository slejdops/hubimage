FROM wmit/jupyterhub-k8s-hub-casauth:v0.8.2-wm2

USER root
RUN pip3 install jupyterhub==1.0.0

USER jovyan
