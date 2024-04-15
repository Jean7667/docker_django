#base image python 3.10 as per local
FROM python:3.10

#Force the stdout and stderr streams to be unbuffered logging is visible
ENV PYTHONUNBUFFERED 1

# specifies the settings module for Django overriding the original one to deploy to point different setting files depending on prod/dev
#allows Django to know which settings module to use when it runs.
ENV DJANGO_SETTINGS_MODULE=backend.settings


#only install the packages that are explicitly specified - nano
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        nano /
    rm -rf /var/lib/apt/lists/*

