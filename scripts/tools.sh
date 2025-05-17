#!/bin/bash
set -e

echo "🔧 Installing dev tools..."

go install github.com/cosmtrek/air@v1.49.0
go install github.com/golangci/golangci-lint/cmd/golangci-lint@v1.55.2
go install github.com/swaggo/swag/cmd/swag@v1.16.2

echo "✅ Tools installed!"
