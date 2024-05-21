FROM python:3.7

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY prediction_service /app/prediction_service
COPY webapp /app/webapp
COPY app.py /app/app.py

CMD ["gunicorn", "-b", "0.0.0.0:5000", "app:app"]