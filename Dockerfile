FROM python:3.9-alpine
MAINTAINER  CreatorGhost
ENV PYTHONUNBUFFERED 1
COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt
RUN mkdir /app
COPY ./app /app
WORKDIR /app
RUN adduser -D creator
USER creator 
