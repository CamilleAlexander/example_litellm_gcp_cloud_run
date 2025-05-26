# Use the provided base image
FROM ghcr.io/berriai/litellm:main-latest

WORKDIR /app

COPY litellm_config.yaml .

EXPOSE 8080

CMD ["litellm", "--port", "8080", "--config", "litellm_config.yaml"]


 
