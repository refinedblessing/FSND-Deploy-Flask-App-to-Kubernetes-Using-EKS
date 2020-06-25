FROM python:stretch

COPY . /app
WORKDIR /app

RUN apt-get update && apt-get -y install python3-pip python3-dev && pip3 install --upgrade pip
RUN pip3 install -r requirements.txt

ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]
