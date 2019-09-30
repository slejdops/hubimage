FROM wmit/jupyterhub-k8s-hub-casauth:v0.8.2-wm2

USER root
RUN pip3 install jupyterhub==1.0.0
RUN rm -f /usr/local/bin/cull_idle_servers.py

ADD cull_idle_servers.py /usr/local/bin/cull_idle_servers.py
RUN chmod 0775 /usr/local/bin/cull_idle_servers.py
USER jovyan
