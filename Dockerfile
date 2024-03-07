FROM python:3.8-slim-buster

RUN apt update && apt upgrade -y
RUN apt install git -y
COPY requirements.txt /requirements.txt

RUN cd /
RUN pip install -U pip && pip install -U -r requirements.txt
RUN mkdir /fwdbot
WORKDIR /fwdbot
COPY start.sh /start.sh
CMD ["/bin/bash", "/start.sh"] 
