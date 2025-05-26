# Use the provided base image
FROM ghcr.io/berriai/litellm:main-latest

WORKDIR /app

COPY litellm_config.yaml .

EXPOSE 8080

CMD ["litellm", "--host", "0.0.0.0", "--port", "8080", "--config", "litellm_config.yaml"]



 
