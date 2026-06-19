#!/bin/bash

echo "🧹 Clearing Angular cache..."
cd "frontend/bullseye-ui"

# Remove Angular cache
rm -rf .angular

# Remove node_modules cache (optional but thorough)
rm -rf node_modules/.cache

echo "✅ Cache cleared!"
echo ""
echo "📦 Installing dependencies..."
npm install

echo ""
echo "🚀 Starting frontend server..."
echo "Frontend will connect to: https://bullseye-backend-kybu.onrender.com"
echo ""
npm start
