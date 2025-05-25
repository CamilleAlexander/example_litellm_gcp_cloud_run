# Use the provided base image
FROM ghcr.io/berriai/litellm:main-latest

# Set the working directory to /app
WORKDIR /app


# Copy the configuration file into the container at /app
COPY litellm_config.yaml .

# Expose the necessary port
EXPOSE 8080/tcp

CMD ["sh", "-c", "litellm-- port $PORT-- config litellm_config.yaml"]
