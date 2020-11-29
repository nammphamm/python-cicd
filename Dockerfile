FROM ubuntu:18.04

WORKDIR /usr/app

RUN set -xe \
    && apt-get update \
    && apt-get -y install python-pip
COPY requirements.txt ./requirements.txt
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

COPY . .
#CMD ["bash"]