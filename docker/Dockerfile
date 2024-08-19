# Use an official lightweight Ubuntu base image
FROM ubuntu:22.04

# Metadata as described above
LABEL author="Tkemza"
LABEL description="Docker image for the Webscrap tool"

# Set environment variables to non-interactive (prevents prompts during package installation)
ENV DEBIAN_FRONTEND=noninteractive

# Install dependencies
RUN apt-get update && \
    apt-get install -y \
        curl \
        sendmail \
        ruby \
        lolcat \
        git \
        bash \
        tput \
        && rm -rf /var/lib/apt/lists/* \
        && gem install lolcat

# Set working directory
WORKDIR /usr/src/app

# Copy the script and any additional files
COPY webscrap.sh .
COPY updt/updt.sh ./updt/updt.sh

# Make the script executable
RUN chmod +x webscrap.sh

# Default command to run the script
ENTRYPOINT ["/usr/src/app/webscrap.sh"]

# Optional: specify the default command for the container
CMD ["bash"]
