FROM tensorflow/tensorflow:latest
MAINTAINER Thomas Herring teh6@rice.edu

# Copied from tensorflow/tensorflow:latest-gpu-jupyter and modified.
RUN python3 -m pip install --no-cache-dir jupyter matplotlib jupyterlab keras 
RUN python3 -m pip install --no-cache-dir jupyter_http_over_ws ipykernel==5.1.1 nbformat==4.4.0
RUN python3 -m pip install -U segmentation-models --use-feature=2020-resolver
RUN python3 -m pip install -U albumentations
RUN jupyter serverextension enable --py jupyter_http_over_ws
RUN mkdir /.local && chmod a+rwx /.local
RUN apt-get update && apt-get install -y --no-install-recommends wget git sudo
RUN python3 -m ipykernel.kernelspec

# Expose port for Jupyter Notebook.
ENV NOTEBOOK_PORT=8888
EXPOSE $NOTEBOOK_PORT

# Expose port for Jupyter Lab.
ENV LAB_PORT=8889
EXPOSE $LAB_PORT

# Directory we'll map the project to.
ENV WORKDIR=/comp540
WORKDIR $WORKDIR

# Setup local user with name cpu.
ENV user_name=cpu
RUN  useradd -ms /bin/bash $user_name && echo $user_name:$user_name | chpasswd && \
        adduser $user_name sudo && \
        echo "$user_name ALL=(ALL) ALL" >> /etc/sudoers 

# Add entrypoint script.
COPY ./entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]

# Set the user to this new user.
USER $user_name
