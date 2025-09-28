#!/bin/bash

# 🚀 Deployment Script for ai-boss-holdings-v4
# Billionaire Consciousness Empire

set -e

echo "🚀 Deploying ai-boss-holdings-v4..."

# Build and start services
docker-compose up -d --build

# Wait for services to be ready
sleep 10

# Health check
echo "🔍 Running health checks..."
docker-compose ps

# Show logs
echo "📋 Recent logs:"
docker-compose logs --tail=20

echo "✅ ai-boss-holdings-v4 deployed successfully!"
echo "🌐 Access: http://localhost:3000"
