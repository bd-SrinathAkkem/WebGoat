#!/bin/bash
# Extracted build commands from repository analysis
# Generated on Thu Sep 18 15:55:13 IST 2025

# Clean install command
clean_install() {
    echo "Running clean install..."
    ./mvnw clean install
}

# Install dependencies command
install() {
    echo "Installing dependencies..."
    ./mvnw dependency:resolve
}

# Development build command
build_dev() {
    echo "Running development build..."
    ./mvnw clean package -DskipTests
}

# Production build command
build_prod() {
    echo "Running production build..."
    ./mvnw clean package -Pprod -DskipTests
}

# Start development server
start_dev() {
    echo "Starting development server..."
    ./mvnw spring-boot:run
}
