#!/bin/bash
# Deploy Premium Portfolio to GitHub Pages
# Run this from C:/Users/Thabang/Desktop/

set -e

echo "🚀 Deploying Premium Portfolio to GitHub Pages..."

# Configuration
GITHUB_USER="thabs1234"
REPO_NAME="portfolio"
LOCAL_FILE="index.html"
BACKUP_FILE="index.html.backup"

# Check if index.html exists
if [ ! -f "$LOCAL_FILE" ]; then
    echo "❌ Error: $LOCAL_FILE not found!"
    exit 1
fi

# Create temporary deployment directory
DEPLOY_DIR=".deploy_temp"
mkdir -p "$DEPLOY_DIR"

# Copy premium portfolio
cp "$LOCAL_FILE" "$DEPLOY_DIR/index.html"

echo "✅ Premium portfolio prepared in $DEPLOY_DIR/"
echo ""
echo "📋 Deployment Steps:"
echo "1. Ensure repository 'thabs1234/portfolio' exists on GitHub"
echo "2. Clone your GitHub Pages repo:"
echo "   git clone https://github.com/thabs1234/portfolio.git"
echo "3. Copy files:"
echo "   cp $DEPLOY_DIR/index.html portfolio/"
echo "4. Deploy:"
echo "   cd portfolio && git add . && git commit -m '✨ Premium portfolio redesign' && git push"
echo ""
echo "🎯 Your premium portfolio will be live at:"
echo "   https://thabs1234.github.io/portfolio/"
echo ""

# Cleanup
rm -rf "$DEPLOY_DIR"

echo "✅ Deployment package ready!"