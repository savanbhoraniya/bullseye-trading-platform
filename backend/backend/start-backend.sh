#!/bin/bash

# BullsEye Backend Start Script
# This script ensures clean startup by killing any existing backend process

echo "=== BullsEye Backend Start Script ==="

# Step 1: Check if port 8081 is in use
echo "Checking if port 8081 is already in use..."
PORT_IN_USE=$(lsof -ti:8081)

if [ ! -z "$PORT_IN_USE" ]; then
    echo "⚠️  Port 8081 is already in use by process(es): $PORT_IN_USE"
    echo "Killing existing process(es)..."
    kill -9 $PORT_IN_USE
    sleep 2
    echo "✓ Old process(es) terminated"
else
    echo "✓ Port 8081 is available"
fi

# Step 2: Check if JAR file exists
JAR_FILE="target/backend-0.0.1-SNAPSHOT.jar"
if [ ! -f "$JAR_FILE" ]; then
    echo "⚠️  JAR file not found. Building the project..."
    ./mvnw clean package -DskipTests
    if [ $? -ne 0 ]; then
        echo "❌ Build failed! Please check the errors above."
        exit 1
    fi
    echo "✓ Build completed successfully"
else
    echo "✓ JAR file exists"
fi

# Step 3: Set the active profile (default to local)
PROFILE=${SPRING_PROFILE:-local}
echo "Starting backend with profile: $PROFILE"

# Step 4: Start the backend
echo ""
echo "=== Starting BullsEye Backend ==="
echo "Profile: $PROFILE"
echo "Port: 8081"
echo "Database: PostgreSQL (localhost:5432/bullseye_db)"
echo ""

java -Dspring.profiles.active=$PROFILE -jar $JAR_FILE

# Note: The script will keep running until you press Ctrl+C
# When you stop it, the backend will shut down gracefully
