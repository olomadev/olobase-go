package handler

import (
    "github.com/gofiber/fiber/v2"
    "github.com/olomadev/olobase-go/internal/modules/auth/dto"
    "github.com/olomadev/olobase-go/internal/modules/auth/middleware"
)

func TokenHandler(c *fiber.Ctx) error {
    var payload dto.TokenRequestDTO
    if err := c.BodyParser(&payload); err != nil {
        return c.Status(400).JSON(fiber.Map{"error": "invalid input"})
    }

    // Dummy kontrol
    if payload.Email != "demo@example.com" || payload.Password != "12345678" {
        return c.Status(401).JSON(fiber.Map{"error": "invalid credentials"})
    }

    token, err := middleware.GenerateToken(payload.Email)
    if err != nil {
        return c.Status(500).JSON(fiber.Map{"error": "could not generate token"})
    }

    return c.JSON(fiber.Map{"token": token})
}
