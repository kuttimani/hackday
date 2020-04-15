FROM ubuntu:latest
RUN apt-get update && apt-get install python3 python3-pip vim curl -y
RUN pip3 install flask redis
ENV VERSION=0.2
ADD . /apps
WORKDIR /apps
CMD python3 app.py
