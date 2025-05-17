package auth

import (
    "github.com/gofiber/fiber/v2"
    "github.com/olomadev/olobase-go/internal/modules/auth/handler"
    "github.com/olomadev/olobase-go/internal/modules/auth/service"
    "github.com/olomadev/olobase-go/pkg/db"
)

func SetupRoutes(app *fiber.App) {
    // DB connection
    dbConnection, err := db.NewDBConnection()
    if err != nil {
        panic("Database connection error: " + err.Error())
    }

    // AuthService'i NewAuthService fonksiyonuyla oluştur
    authService := service.NewAuthService(dbConnection)

    // Handler oluştur
    tokenHandler := &handler.TokenHandler{AuthService: authService}

    // Route tanımla
    app.Post("/api/auth/token", tokenHandler.HandleToken)
}
