# Use Python base image
FROM python:3.11-slim

WORKDIR /app

COPY litellm_config.yaml .

RUN pip install --no-cache-dir litellm[proxy]

EXPOSE 4000
CMD ["litellm", "--host", "0.0.0.0", "--port", "4000", "--config", "litellm_config.yaml"]


