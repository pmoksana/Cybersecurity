#!/bin/bash

# --- CONFIGURATION ---
GITHUB_USER="pmoksana"
REPO_NAME="Cybersecurity"
REMOTE_URL="git@github.com:$GITHUB_USER/$REPO_NAME.git"
# ---------------------

echo "🚀 Starting GitHub Synchronization Process..."

if [ ! -d ".git" ]; then
    echo "📦 Initializing local Git repository..."
    git init
    git branch -M main
else
    echo "✅ Git repository already initialized."
fi

# Force update our remote url link to use working SSH key path
git remote remove origin 2>/dev/null
git remote add origin "$REMOTE_URL"
echo "🔗 Connected securely using your Mac SSH authentication key."

echo "📂 Staging portfolio project files..."
git add .

TIMESTAMP=$(date +"%Y-%m-%d %H:%M:%S")
echo "💾 Committing changes..."
git commit -m "Automated deployment via Mac script - $TIMESTAMP"

echo "📤 Uploading files to GitHub Pages repository..."
git push -u origin main --force

echo "🎉 Success! Code pushed to GitHub."
