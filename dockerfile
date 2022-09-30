FROM python:3.8-alpine

RUN mkdir -p /app_a
WORKDIR /app_a

COPY ./src/requirements.txt /app_a/requirements.txt
RUN pip install -r requirements.txt

COPY ./src/ /app_a/

CMD ["python", "server.py"]
