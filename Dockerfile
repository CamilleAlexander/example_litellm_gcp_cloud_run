# Use a slim Python 3.11 image as the base for your container.
# This provides a lightweight environment for your LiteLLM application.
#FROM python:3.11-slim

# Set the working directory inside the container to /app.
# All subsequent commands will be executed relative to this directory.
#WORKDIR /app

# Copy your litellm_config.yaml file from your local directory
# into the /app directory inside the container.
# !!! IMPORTANT: Ensure this litellm_config.yaml has the Prometheus callbacks
# !!! commented out or removed, as discussed previously. This is crucial
# !!! for LiteLLM to start successfully on Cloud Run.
#COPY litellm_config.yaml .

# Install litellm with the '[proxy]' extras.
# '--no-cache-dir' helps to reduce the final Docker image size by not storing
# build-time cache.
#RUN pip install --no-cache-dir litellm[proxy]

# Declare that the container will listen on port 8080.
# This is a declaration for Docker and helps with network configuration,
# but the application itself still needs to be configured to listen on this port.
#EXPOSE 8080

# Command to run the LiteLLM proxy server when the container starts.
# - "litellm": The command to start the LiteLLM application.
# - "--host 0.0.0.0": Tells LiteLLM to listen on all available network interfaces
#                    within the container. This is necessary for Cloud Run to
#                    be able to route traffic to it.
# - "--port 8080": Explicitly tells LiteLLM to listen on port 8080.
#                  This is the port that Google Cloud Run expects your
#                  application to be listening on.
# - "--config litellm_config.yaml": Specifies the configuration file for LiteLLM.
#CMD ["litellm", "--host", "0.0.0.0", "--port", "8080", "--config", "litellm_config.yaml", "--debug"]
CMD ["sh", "-c", "echo 'Hello from container startup!' && sleep 3600"]


