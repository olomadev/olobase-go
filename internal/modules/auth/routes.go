package auth

import (
    "github.com/gofiber/fiber/v2"
    "github.com/olomadev/olobase-go/internal/modules/auth/handler"
)

func SetupRoutes(app *fiber.App) {
    app.Post("/api/auth/token", handler.TokenHandler)

    // router.Post("/auth/refresh", handlers.RefreshHandler)
    // router.Get("/auth/logout", handlers.LogoutHandler)
    // router.Post("/auth/session", middleware.JwtAuthMiddleware, handlers.SessionHandler)

}
