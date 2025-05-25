FROM ghcr.io/berriai/litellm:main-latest
WORKDIR /app
COPY litellm_config.yaml .
EXPOSE 8080
CMD ["sh", "-c", "litellm --port $PORT --config litellm_config.yaml"]


