FROM python:3.12-alpine

WORKDIR /app

COPY . .

EXPOSE 3000

RUN apk update && apk --no-cache add openssl bash curl && \
    chmod +x /app/app.py && \
    pip install --no-cache-dir -r /app/requirements.txt

CMD ["python3", "/app/app.py"]
