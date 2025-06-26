#!/bin/bash

echo "🔁 Starting Web3 Subscription Project..."

# Step 1: Install dependencies
echo "📦 Installing dependencies..."
npm install

# Step 2: Check if .env.local exists
if [ ! -f .env.local ]; then
  echo "⚠️  .env.local not found. Creating one with default contract address..."
  echo 'NEXT_PUBLIC_CONTRACT_ADDRESS=0xaD733080455eb635e0B84b4A3d304f849BA8B45A' > .env.local
else
  echo "✅ .env.local already exists."
fi

# Step 3: Start the dev server
echo "🚀 Running the app at http://localhost:3000"
npm run dev
