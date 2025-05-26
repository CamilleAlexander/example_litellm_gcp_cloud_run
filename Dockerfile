# Use Python base image
FROM python:3.11-slim

WORKDIR /app

COPY litellm_config.yaml .

RUN pip install --no-cache-dir litellm[proxy]

EXPOSE 8080

CMD ["sh", "-c", "litellm --host 0.0.0.0 --port $PORT --config litellm_config.yaml"]

