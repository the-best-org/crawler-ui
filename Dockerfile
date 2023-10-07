FROM python:3.6-alpine

ENV FLASK_APP ui.py

COPY . /app
WORKDIR /app

RUN pip install --upgrade pip && \
    pip install -r requirements.txt

EXPOSE 8000

WORKDIR /app/ui

CMD ["gunicorn", "ui:app", "-b", "0.0.0.0"]