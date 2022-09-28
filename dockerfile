FROM python:3.8

RUN mkdir -p /app_a
WORKDIR /app_a

COPY ./src/requirements.txt /app_a/requirements.txt
RUN pip install -r requiremnts.txt

COPY ./src/ /app_a/
ENV FLASK_APP = server.py

CMD flask run -h 0.0.0.0 -p 5000