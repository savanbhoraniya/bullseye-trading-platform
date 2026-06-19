#!/bin/bash

# Bullseye API Quick Test Script
# This script tests the main endpoints of your Railway-deployed backend

BASE_URL="https://bullseye-trading-platform-production.up.railway.app"

echo "🧪 Testing Bullseye API on Railway..."
echo "Base URL: $BASE_URL"
echo "================================================"
echo ""

# Test 1: Health Check
echo "1️⃣  Health Check:"
echo "   GET $BASE_URL/health"
HEALTH=$(curl -s $BASE_URL/health)
echo "   Response: $HEALTH"
echo ""

# Test 2: Auth Test
echo "2️⃣  Auth Controller Test:"
echo "   GET $BASE_URL/api/auth/test"
AUTH_TEST=$(curl -s $BASE_URL/api/auth/test)
echo "   Response: $AUTH_TEST"
echo ""

# Test 3: Register User
echo "3️⃣  Register New User:"
echo "   POST $BASE_URL/api/auth/register"
REGISTER=$(curl -s -X POST $BASE_URL/api/auth/register \
  -H "Content-Type: application/json" \
  -d '{
    "name": "Test User",
    "email": "testuser'$(date +%s)'@example.com",
    "password": "TestPass123"
  }')
echo "   Response: $REGISTER"
echo ""

# Extract userId from registration (if successful)
USER_ID=$(echo $REGISTER | grep -o '"userId":[0-9]*' | grep -o '[0-9]*')

if [ ! -z "$USER_ID" ]; then
  echo "   ✅ User registered successfully with ID: $USER_ID"
  echo ""
  
  # Test 4: Get Balance
  echo "4️⃣  Get User Balance:"
  echo "   GET $BASE_URL/api/balance/$USER_ID"
  BALANCE=$(curl -s $BASE_URL/api/balance/$USER_ID)
  echo "   Response: $BALANCE"
  echo ""
  
  # Test 5: Get Portfolio
  echo "5️⃣  Get User Portfolio:"
  echo "   GET $BASE_URL/api/portfolio/$USER_ID"
  PORTFOLIO=$(curl -s $BASE_URL/api/portfolio/$USER_ID)
  echo "   Response: $PORTFOLIO"
  echo ""
  
  # Test 6: Get Watchlist
  echo "6️⃣  Get User Watchlist:"
  echo "   GET $BASE_URL/api/watchlist/$USER_ID"
  WATCHLIST=$(curl -s $BASE_URL/api/watchlist/$USER_ID)
  echo "   Response: $WATCHLIST"
  echo ""
else
  echo "   ⚠️  User registration failed or user already exists"
  echo ""
fi

# Test 7: Get Stock Quote
echo "7️⃣  Get Stock Quote (AAPL):"
echo "   GET $BASE_URL/api/market/quote/AAPL"
QUOTE=$(curl -s $BASE_URL/api/market/quote/AAPL)
echo "   Response: $QUOTE"
echo ""

# Test 8: Bulk Quotes
echo "8️⃣  Get Bulk Stock Quotes:"
echo "   POST $BASE_URL/api/market/bulk"
BULK=$(curl -s -X POST $BASE_URL/api/market/bulk \
  -H "Content-Type: application/json" \
  -d '{"symbols": ["AAPL", "GOOGL", "MSFT"]}')
echo "   Response: $BULK"
echo ""

echo "================================================"
echo "✅ All API tests completed!"
echo ""
echo "📋 Summary:"
echo "   - Health endpoint: $([ ! -z "$HEALTH" ] && echo '✅ Working' || echo '❌ Failed')"
echo "   - Auth endpoint: $([ ! -z "$AUTH_TEST" ] && echo '✅ Working' || echo '❌ Failed')"
echo "   - Registration: $([ ! -z "$USER_ID" ] && echo '✅ Working' || echo '⚠️  Check logs')"
echo "   - Market data: $([ ! -z "$QUOTE" ] && echo '✅ Working' || echo '❌ Failed')"
echo ""
echo "📖 For detailed testing, see: API_TESTING_GUIDE.md"
