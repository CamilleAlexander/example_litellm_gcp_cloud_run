# Use the official LiteLLM image with proxy extras pre-installed
FROM ghcr.io/berriai/litellm:main-latest

# Set working directory
WORKDIR /app

# Copy your LiteLLM config file into the image
COPY litellm_config.yaml .

# Expose Cloud Run's required port
EXPOSE 8080

# Start LiteLLM and bind to 0.0.0.0:8080
CMD ["litellm", "--host", "0.0.0.0", "--port", "8080", "--config", "litellm_config.yaml"]
