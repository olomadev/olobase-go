package service

import (
    "errors"
    "github.com/alexedwards/argon2id"
    "github.com/olomadev/olobase-go/internal/modules/users/model"
    "gorm.io/gorm"
)

type AuthService struct {
    DB *gorm.DB
}

func (s *AuthService) AuthenticateUser(username string, password string) (*model.User, error) {
    var user model.User

    if err := s.DB.Where("email = ?", username).First(&user).Error; err != nil {
        return nil, errors.New("invalid credentials")
    }

    // Argon2 hash verify
    match, err := argon2id.ComparePasswordAndHash(password, user.Password)
    if err != nil {
        return nil, errors.New("error verifying password")
    }

    if !match {
        return nil, errors.New("invalid credentials")
    }

    return &user, nil
}