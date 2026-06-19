#!/bin/bash

# Render Start Script for BullsEye Backend
echo "=== Render Deployment Start ==="

# Print environment info (without sensitive data)
echo "=== Environment Info ==="
echo "PORT: $PORT"
echo "SPRING_PROFILES_ACTIVE: prod"
echo "JAVA_VERSION: $(java -version 2>&1 | head -n 1)"

# Check if DATABASE_URL is set
if [ ! -z "$DATABASE_URL" ]; then
    echo "✓ DATABASE_URL is configured"
    # Show only the protocol and host (first 40 chars)
    echo "DATABASE_URL: ${DATABASE_URL:0:40}..."
else
    echo "⚠ WARNING: DATABASE_URL not found!"
fi

# Check if JAR exists
if [ ! -f "target/backend-0.0.1-SNAPSHOT.jar" ]; then
    echo "✗ ERROR: JAR file not found!"
    echo "Available files in target directory:"
    ls -la target/ 2>/dev/null || echo "target directory not found"
    exit 1
fi

echo "✓ JAR file found"

# Start the application
echo "=== Starting Spring Boot Application ==="
exec java -Dserver.port=$PORT \
     -Dspring.profiles.active=prod \
     -Xmx512m \
     -XX:+UseContainerSupport \
     -XX:MaxRAMPercentage=75.0 \
     -jar target/backend-0.0.1-SNAPSHOT.jar
