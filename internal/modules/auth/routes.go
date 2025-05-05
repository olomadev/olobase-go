package auth

import (
    "github.com/gofiber/fiber/v2"
    "github.com/olomadev/olobase-go/internal/modules/auth/handler"
    "github.com/olomadev/olobase-go/internal/modules/auth/service"
    "github.com/olomadev/olobase-go/pkg/db"
)

func SetupRoutes(app *fiber.App) {
    
    dbConnection, err := db.NewDBConnection()
    if err != nil {
        panic("Database connection error: " + err.Error())
    }

    authService := &service.AuthService{DB: dbConnection}
    tokenHandler := &handler.TokenHandler{AuthService: authService}

    app.Post("/api/auth/token", tokenHandler.HandleToken)
}
