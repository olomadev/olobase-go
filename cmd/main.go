package main

import (
    "github.com/gofiber/fiber/v2"
    "github.com/swaggo/fiber-swagger" // Swagger UI
    _ "github.com/olomadev/olobase-go/docs"
    "github.com/olomadev/olobase-go/internal/modules/auth"
)

// @title MyApp API
// @version 1.0
// @description Swagger destekli modüler Go API
// @host localhost:3000
// @BasePath /api
func main() {
    app := fiber.New()

    app.Get("/swagger/*", fiberSwagger.WrapHandler)

    auth.SetupRoutes(app)

    app.Listen(":3000")
}
