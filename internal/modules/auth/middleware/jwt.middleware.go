package middleware

import (
    "github.com/gofiber/fiber/v2"
    "github.com/golang-jwt/jwt/v5"
    "time"
)

var secret = []byte("supersecret")

func JwtAuthMiddleware(c *fiber.Ctx) error {
    tokenStr := c.Get("Authorization")
    if tokenStr == "" {
        return c.Status(fiber.StatusUnauthorized).JSON(fiber.Map{"error": "Missing token"})
    }

    token, err := jwt.Parse(tokenStr, func(token *jwt.Token) (interface{}, error) {
        return secret, nil
    })

    if err != nil || !token.Valid {
        return c.Status(fiber.StatusUnauthorized).JSON(fiber.Map{"error": "Invalid token"})
    }

    return c.Next()
}

func GenerateToken(id string, email string) (string, error) {
    claims := jwt.MapClaims{
        "id": id,
        "email": email,
        "exp":   time.Now().Add(time.Hour * 1).Unix(),
    }

    token := jwt.NewWithClaims(jwt.SigningMethodHS256, claims)
    return token.SignedString(secret)
}
