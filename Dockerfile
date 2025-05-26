# Use Python base image
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Copy config file into container
COPY litellm_config.yaml .

# Install LiteLLM with proxy support and other required packages
RUN pip install --no-cache-dir litellm[proxy]

# Expose port expected by Cloud Run
EXPOSE 8080

# Run the LiteLLM proxy server
CMD ["litellm", "--host", "0.0.0.0", "--port", "8080", "--config", "litellm_config.yaml"]
