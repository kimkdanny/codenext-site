FROM python:3.8-slim-buster

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . /app

CMD exec gunicorn --bind :$PORT --workers 1 --threads 8 --timeout 0 flask_project:app
