#!/bin/bash

# Professional Website Deployment Script
# For [BUSINESS_NAME]

echo "🚀 Deploying [BUSINESS_NAME] website..."
echo "======================================"

# Check if we're in the right directory
if [ ! -f "index.html" ]; then
    echo "❌ Error: Not in website directory (index.html not found)"
    exit 1
fi

# Get commit message or use default
COMMIT_MSG="${1:-Auto-update from Claude Code}"

echo "📝 Adding changes to git..."
git add .

echo "💾 Committing changes..."
git commit -m "$COMMIT_MSG"

echo "🌐 Pushing to GitHub (triggers auto-deployment)..."
git push

echo "✅ Deployment initiated!"
echo "📱 Website will be live in 1-2 minutes"
echo "🔗 Check GitHub Actions for deployment status"
