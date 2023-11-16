FROM pytorch/pytorch:1.13.1-cuda11.6-cudnn8-devel
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get -y update \
 && apt-get install -y --fix-missing wget vim curl pv unzip build-essential cmake pkg-config ca-certificates gedit x11-apps \
 && apt-get clean && rm -rf /tmp/* /var/tmp/* \
 && python3 -m pip install --upgrade pip \
 && python3 -m pip install --upgrade setuptools

RUN pip3 install --no-cache-dir -Iv notebook ipython ipykernel psutil==5.9.2