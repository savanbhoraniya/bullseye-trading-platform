#!/bin/bash

# BullsEye Backend Stop Script
# This script stops any running backend process

echo "=== BullsEye Backend Stop Script ==="

# Check if port 8081 is in use
PORT_IN_USE=$(lsof -ti:8081)

if [ ! -z "$PORT_IN_USE" ]; then
    echo "Found backend process(es) on port 8081: $PORT_IN_USE"
    echo "Stopping backend..."
    kill -9 $PORT_IN_USE
    sleep 1
    
    # Verify it's stopped
    STILL_RUNNING=$(lsof -ti:8081)
    if [ -z "$STILL_RUNNING" ]; then
        echo "✓ Backend stopped successfully"
    else
        echo "⚠️  Backend may still be running. Try running this script again."
    fi
else
    echo "✓ No backend process found running on port 8081"
fi
