FROM python:3.6
# application folder
ENV APP_DIR /app
ENV PYTHONUNBUFFERED 1
ENV PYTHONDONTWRITEBYTECODE=1

RUN apt-get update

RUN apt-get install -y software-properties-common build-essential

# app dir
RUN mkdir -p ${APP_DIR}
RUN pwd
VOLUME [${APP_DIR}]
WORKDIR ${APP_DIR}

COPY my_model ${APP_DIR}
RUN ls
RUN pwd

ADD requirements.txt .
RUN pip install -r requirements.txt --timeout 120