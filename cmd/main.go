package main

import (
    "log"
    "github.com/gofiber/fiber/v2"
    "github.com/joho/godotenv"
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

    err := godotenv.Load()
    if err != nil {
        log.Fatal("Error loading .env file")
    }
    //
    // create a new fiber application
    //
    app := fiber.New()
    //
    // define swagger route
    //
    app.Get("/swagger/*", fiberSwagger.WrapHandler)
    //
    // define all routes
    // 
    auth.SetupRoutes(app)

    app.Listen(":3000") // Application start
}
