#!/bin/bash

BASE_URL="https://bullseye-trading-platform-production.up.railway.app"
echo "🧪 Comprehensive API Endpoint Test"
echo "===================================="
echo ""

# Test 1: Health
echo "1. Health Check:"
HEALTH=$(curl -s -w "\n%{http_code}" $BASE_URL/health)
HTTP_CODE=$(echo "$HEALTH" | tail -n1)
RESPONSE=$(echo "$HEALTH" | head -n-1)
echo "   Status: $HTTP_CODE"
echo "   Response: $RESPONSE"
[ "$HTTP_CODE" = "200" ] && echo "   ✅ PASS" || echo "   ❌ FAIL"
echo ""

# Test 2: Auth Test
echo "2. Auth Test Endpoint:"
AUTH=$(curl -s -w "\n%{http_code}" $BASE_URL/api/auth/test)
HTTP_CODE=$(echo "$AUTH" | tail -n1)
RESPONSE=$(echo "$AUTH" | head -n-1)
echo "   Status: $HTTP_CODE"
echo "   Response: $RESPONSE"
[ "$HTTP_CODE" = "200" ] && echo "   ✅ PASS" || echo "   ❌ FAIL"
echo ""

# Test 3: Register (with unique email)
EMAIL="test$(date +%s)@example.com"
echo "3. User Registration:"
REGISTER=$(curl -s -w "\n%{http_code}" -X POST $BASE_URL/api/auth/register \
  -H "Content-Type: application/json" \
  -d "{\"fullName\":\"Test User\",\"email\":\"$EMAIL\",\"password\":\"Test123\"}")
HTTP_CODE=$(echo "$REGISTER" | tail -n1)
RESPONSE=$(echo "$REGISTER" | head -n-1)
echo "   Status: $HTTP_CODE"
echo "   Response: $RESPONSE"
[ "$HTTP_CODE" = "200" ] && echo "   ✅ PASS" || echo "   ❌ FAIL"
USER_ID=$(echo "$RESPONSE" | grep -o '"userId":[0-9]*' | grep -o '[0-9]*')
echo "   User ID: $USER_ID"
echo ""

# Test 4: Login
echo "4. User Login:"
LOGIN=$(curl -s -w "\n%{http_code}" -X POST $BASE_URL/api/auth/login \
  -H "Content-Type: application/json" \
  -d "{\"email\":\"$EMAIL\",\"password\":\"Test123\"}")
HTTP_CODE=$(echo "$LOGIN" | tail -n1)
RESPONSE=$(echo "$LOGIN" | head -n-1)
echo "   Status: $HTTP_CODE"
echo "   Response: $RESPONSE"
[ "$HTTP_CODE" = "200" ] && echo "   ✅ PASS" || echo "   ❌ FAIL"
echo ""

if [ ! -z "$USER_ID" ]; then
  # Test 5: Get Balance
  echo "5. Get Balance:"
  BALANCE=$(curl -s -w "\n%{http_code}" $BASE_URL/api/balance/$USER_ID)
  HTTP_CODE=$(echo "$BALANCE" | tail -n1)
  RESPONSE=$(echo "$BALANCE" | head -n-1)
  echo "   Status: $HTTP_CODE"
  echo "   Response: $RESPONSE"
  [ "$HTTP_CODE" = "200" ] && echo "   ✅ PASS" || echo "   ❌ FAIL"
  echo ""

  # Test 6: Add Funds
  echo "6. Add Funds:"
  ADD_FUNDS=$(curl -s -w "\n%{http_code}" -X POST $BASE_URL/api/balance/add \
    -H "Content-Type: application/json" \
    -d "{\"userId\":$USER_ID,\"amount\":10000.00}")
  HTTP_CODE=$(echo "$ADD_FUNDS" | tail -n1)
  RESPONSE=$(echo "$ADD_FUNDS" | head -n-1)
  echo "   Status: $HTTP_CODE"
  echo "   Response: $RESPONSE"
  [ "$HTTP_CODE" = "200" ] && echo "   ✅ PASS" || echo "   ❌ FAIL"
  echo ""

  # Test 7: Get Portfolio
  echo "7. Get Portfolio:"
  PORTFOLIO=$(curl -s -w "\n%{http_code}" $BASE_URL/api/portfolio/$USER_ID)
  HTTP_CODE=$(echo "$PORTFOLIO" | tail -n1)
  RESPONSE=$(echo "$PORTFOLIO" | head -n-1)
  echo "   Status: $HTTP_CODE"
  echo "   Response: $RESPONSE"
  [ "$HTTP_CODE" = "200" ] && echo "   ✅ PASS" || echo "   ❌ FAIL"
  echo ""

  # Test 8: Get Watchlist
  echo "8. Get Watchlist:"
  WATCHLIST=$(curl -s -w "\n%{http_code}" $BASE_URL/api/watchlist/$USER_ID)
  HTTP_CODE=$(echo "$WATCHLIST" | tail -n1)
  RESPONSE=$(echo "$WATCHLIST" | head -n-1)
  echo "   Status: $HTTP_CODE"
  echo "   Response: $RESPONSE"
  [ "$HTTP_CODE" = "200" ] && echo "   ✅ PASS" || echo "   ❌ FAIL"
  echo ""

  # Test 9: Add to Watchlist
  echo "9. Add to Watchlist:"
  ADD_WATCH=$(curl -s -w "\n%{http_code}" -X POST $BASE_URL/api/watchlist/add \
    -H "Content-Type: application/json" \
    -d "{\"userId\":$USER_ID,\"symbol\":\"AAPL\",\"companyName\":\"Apple Inc.\"}")
  HTTP_CODE=$(echo "$ADD_WATCH" | tail -n1)
  RESPONSE=$(echo "$ADD_WATCH" | head -n-1)
  echo "   Status: $HTTP_CODE"
  echo "   Response: $RESPONSE"
  [ "$HTTP_CODE" = "200" ] && echo "   ✅ PASS" || echo "   ❌ FAIL"
  echo ""

  # Test 10: Get Orders
  echo "10. Get Orders:"
  ORDERS=$(curl -s -w "\n%{http_code}" $BASE_URL/api/orders/$USER_ID)
  HTTP_CODE=$(echo "$ORDERS" | tail -n1)
  RESPONSE=$(echo "$ORDERS" | head -n-1)
  echo "   Status: $HTTP_CODE"
  echo "   Response: $RESPONSE"
  [ "$HTTP_CODE" = "200" ] && echo "   ✅ PASS" || echo "   ❌ FAIL"
  echo ""

  # Test 11: Get Transactions
  echo "11. Get Transactions:"
  TRANS=$(curl -s -w "\n%{http_code}" $BASE_URL/api/balance/transactions/$USER_ID)
  HTTP_CODE=$(echo "$TRANS" | tail -n1)
  RESPONSE=$(echo "$TRANS" | head -n-1)
  echo "   Status: $HTTP_CODE"
  echo "   Response: $RESPONSE"
  [ "$HTTP_CODE" = "200" ] && echo "   ✅ PASS" || echo "   ❌ FAIL"
  echo ""
fi

# Test 12: Market Quote
echo "12. Get Stock Quote (AAPL):"
QUOTE=$(curl -s -w "\n%{http_code}" $BASE_URL/api/market/quote/AAPL)
HTTP_CODE=$(echo "$QUOTE" | tail -n1)
RESPONSE=$(echo "$QUOTE" | head -n-1)
echo "   Status: $HTTP_CODE"
echo "   Response: $RESPONSE"
[ "$HTTP_CODE" = "200" ] && echo "   ✅ PASS" || echo "   ❌ FAIL"
echo ""

# Test 13: Bulk Quotes
echo "13. Get Bulk Quotes:"
BULK=$(curl -s -w "\n%{http_code}" -X POST $BASE_URL/api/market/bulk \
  -H "Content-Type: application/json" \
  -d '{"symbols":["AAPL","GOOGL"]}')
HTTP_CODE=$(echo "$BULK" | tail -n1)
RESPONSE=$(echo "$BULK" | head -n-1)
echo "   Status: $HTTP_CODE"
echo "   Response: $RESPONSE"
[ "$HTTP_CODE" = "200" ] && echo "   ✅ PASS" || echo "   ❌ FAIL"
echo ""

echo "===================================="
echo "✅ Comprehensive Test Complete!"
