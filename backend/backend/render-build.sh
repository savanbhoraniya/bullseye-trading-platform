#!/bin/bash

# Render Build Script for BullsEye Backend
echo "=== Render Build Start ==="

# Make mvnw executable
echo "Making mvnw executable..."
chmod +x ./mvnw

# Clean and build the project
echo "Building Spring Boot application..."
./mvnw clean package -DskipTests

# Verify the JAR was created
if [ -f "target/backend-0.0.1-SNAPSHOT.jar" ]; then
    echo "✓ Build successful! JAR file created."
    ls -lh target/backend-0.0.1-SNAPSHOT.jar
else
    echo "✗ Build failed! JAR file not found."
    exit 1
fi

echo "=== Build Complete ==="
