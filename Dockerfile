
FROM python:3.8-slim-buster

EXPOSE 5000

ENV PYTHONDONTWRITEBYTECODE=1

ENV PYTHONUNBUFFERED=1
ENV PYTHONDONTWRITEBYTECODE 1
ENV FLASK_APP "app.py"
ENV FLASE_ENV "development"
ENV FLASK_DEBUG True

COPY requirements.txt .
RUN python -m pip install -r requirements.txt
WORKDIR /app
COPY . /app

CMD flask run --host=0.0.0.0
