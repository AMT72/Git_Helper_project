#!/bin/bash

echo "Initializing Git project..."
git init

echo "Creating README.md"
echo "# Git Helper" > README.md

echo "Adding files to staging area..."
git add .

echo "Making first commit..."
git commit -m "Initial commit"

echo "Enter your GitHub repository URL:"
read repo_url

echo "Adding remote origin..."
git remote add origin "$repo_url"

echo "Pushing to GitHub..."
git branch -M main
git push -u origin main

echo "✅ Done. Project pushed successfully."
