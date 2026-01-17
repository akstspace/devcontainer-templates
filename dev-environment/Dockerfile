FROM ubuntu:24.04

# Prevent interactive prompts during package installation
ENV DEBIAN_FRONTEND=noninteractive

# Install essential development tools
# - curl & wget: for downloading files
# - git: version control
# - sudo: for elevated permissions
# - golang-go: Go programming language
# - cargo: Rust package manager
# - gcc, g++: C/C++ compilers
RUN apt-get update && apt-get install -y \
    curl \
    wget \
    git \
    sudo \
    golang-go \
    cargo \
    gcc \
    g++ \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Set the working directory
WORKDIR /workspace
