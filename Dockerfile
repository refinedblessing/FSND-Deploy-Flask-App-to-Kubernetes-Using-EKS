FROM python:stretch

COPY . /app
WORKDIR /app

RUN apt-get update && apt-get -y install python3-pip python3-dev
RUN pip install -r requirements.txt

ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]
