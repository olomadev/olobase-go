//go:build tools
// +build tools

package tools

import (
	_ "github.com/cosmtrek/air"
	_ "github.com/swaggo/swag/cmd/swag"
	_ "github.com/golangci/golangci-lint/cmd/golangci-lint"
)
