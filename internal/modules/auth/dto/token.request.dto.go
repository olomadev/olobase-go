package dto

type TokenRequestDTO struct {
    Username string `json:"username" example:"demo@example.com"`
    Password string `json:"password" example:"12345678"`
}
