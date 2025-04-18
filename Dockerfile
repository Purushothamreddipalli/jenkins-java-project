# Use an official Ubuntu base image
FROM ubuntu:latest

# Create a directory where the volume will be mounted
RUN mkdir -p /data

# Declare a volume
VOLUME ["/data"]

# Set a working directory
WORKDIR /data

# Optionally, you can add files into the volume directory
COPY . /data

# Command to run when the container starts
CMD ["echo", "Volume created and mounted at /data"]
