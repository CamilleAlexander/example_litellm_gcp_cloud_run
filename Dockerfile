# Use the provided base image
FROM python:3.11-slim

WORKDIR /app

COPY litellm_config.yaml .

# Install litellm
RUN pip install litellm

EXPOSE 8080

CMD ["litellm", "--host", "0.0.0.0", "--port", "8080", "--config", "litellm_config.yaml"]


 
