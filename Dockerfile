FROM python:3.6.9-alpine3.9

RUN mkdir /opt/app && pip install flask
COPY . /opt/app
WORKDIR /opt/app

ENTRYPOINT python main.py
