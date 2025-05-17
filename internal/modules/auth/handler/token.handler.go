package handler

import (
    "github.com/gofiber/fiber/v2"
    "github.com/olomadev/olobase-go/internal/modules/auth/dto"
    "github.com/olomadev/olobase-go/internal/modules/auth/middleware"
    "github.com/olomadev/olobase-go/internal/modules/auth/service"
)

type TokenHandler struct {
    AuthService *service.AuthService
}

/**
 * @swagger
 * /api/auth/token:
 *   post:
 *     summary: Authenticate user and get a token
 *     description: Authenticates the user using email and password and generates a JWT token upon successful authentication.
 *     requestBody:
 *       required: true
 *       content:
 *         application/json:
 *           schema:
 *             $ref: '#/components/schemas/TokenRequestDTO'
 *     responses:
 *       200:
 *         description: Successfully generated token
 *       400:
 *         description: Invalid input
 *       401:
 *         description: Invalid credentials
 */
func (h *TokenHandler) HandleToken(c *fiber.Ctx) error {
    var payload dto.TokenRequestDTO
    if err := c.BodyParser(&payload); err != nil {
        return c.Status(400).JSON(fiber.Map{"error": "invalid input"})
    }
    user, err := h.AuthService.AuthenticateUser(c.Context(), payload.Username, payload.Password)
    if err != nil {
        return c.Status(401).JSON(fiber.Map{"error": "invalid credentials"})
    }

    // JWT Token oluşturulması
    token, err := middleware.GenerateToken(user.ID, user.Email)
    if err != nil {
        return c.Status(500).JSON(fiber.Map{"error": "could not generate token"})
    }

    return c.JSON(fiber.Map{"token": token})
}
