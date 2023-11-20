# Base Image 가져오기
FROM pytorch/pytorch:1.13.1-cuda11.6-cudnn8-devel
# 설치시 사용자 입력을 요구하는 것을 방지하는 설정
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get -y update \
 # 연구가 아니라면 cmake와 pkg-config가 필요 없을수도 있습니다.
 && apt-get install --fix-missing -y wget vim curl pv unzip build-essential cmake pkg-config ca-certificates gedit x11-apps \
 # 패키지 캐시들을 삭제함
 && apt-get clean && rm -rf /tmp/* /var/tmp/* \
 && python3 -m pip install --upgrade pip \
 && python3 -m pip install --upgrade setuptools

# 로컬에 있는 requirements.txt를 복사할 때
# COPY requirements.txt /workspace/requirements.txt
# RUN pip3 install -r /workspace/requirements.txt

RUN pip3 install --no-cache-dir -Iv notebook ipython ipykernel psutil==5.9.2