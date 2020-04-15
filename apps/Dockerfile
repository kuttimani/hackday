FROM ubuntu:latest
RUN apt-get update && apt-get install python3 python3-pip vim curl -y
RUN pip3 install flask redis
ADD . /apps
WORKDIR /apps
ENV VERSION=0.1
CMD python3 app.py
