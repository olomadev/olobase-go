package model

import (
    "time"
    "github.com/google/uuid"
)

type User struct {
    ID               string    `json:"id"`
    Email            string    `json:"email"`
    Password         string    `json:"-"`
    FirstName        string    `json:"firstname"`  // Bu json:"firstName" etiketi sadece JSON (örneğin API output) içindir. SQL için hiçbir etkisi yoktur.
    LastName         string    `json:"lastname"`
    CreatedAt        time.Time `json:"createdAt"`
    UpdatedAt        time.Time `json:"updatedAt"`
    IsActive         bool      `json:"isActive"`
    IsEmailActivated bool      `json:"isEmailActivated"`
}

// NewUser yeni bir kullanıcı nesnesi oluşturur
func NewUser(email, password, firstName, lastName string) *User {
    return &User{
        ID:               uuid.New().String(),
        Email:            email,
        Password:         password,
        FirstName:        firstName,
        LastName:         lastName,
        CreatedAt:        time.Now(),
        UpdatedAt:        time.Now(),
        IsActive:         true,
        IsEmailActivated: false,
    }
}
