FROM python:3.7.3-alpine3.9

RUN mkdir -p /app_a
WORKDIR /app_a

COPY ./src/requirements.txt /app_a/requirements.txt
RUN pip install -r requirements.txt

COPY ./src/ /app_a/
ENV FLASK_APP = server.py

CMD flask run -h 0.0.0.0 -p 8000