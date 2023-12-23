# Use an official Python runtime as the base image
FROM python:3.8-slim

ARG DEV_MODE=0

ENV SOME_ENV="some value" \
    DEV_MODE=$DEV_MODE \
    PYTHONUNBUFFERED=1

RUN apt-get update -y && apt-get install -y vim

COPY ./somefile.txt /

# Set the working directory in the container
WORKDIR /

# Add a volume
# VOLUME /my-persistent-data

WORKDIR /

CMD ["bin/bash"]
