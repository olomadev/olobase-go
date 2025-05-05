package service

import (
    "github.com/olomadev/olobase-go/internal/modules/users/model"
    "gorm.io/gorm"
)

type UserService struct {
    DB *gorm.DB
}

// Kullanıcıyı email ile sorgulama
func (s *UserService) GetUserByEmail(email string) (*model.User, error) {
    var user model.User
    // DB ile bağlantı kurup sorguyu burada çalıştırıyoruz
    if err := s.DB.Where("email = ?", email).First(&user).Error; err != nil {
        return nil, err
    }
    return &user, nil
}
