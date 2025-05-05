package model

import (
    "github.com/google/uuid"
    "gorm.io/gorm"
    "time"
)

type User struct {
    ID               string    `gorm:"type:char(36);primaryKey" json:"id"`
    Email            string    `gorm:"type:varchar(160);unique" json:"email"`
    Password         string    `gorm:"type:varchar(255)" json:"-"`
    FirstName        string    `gorm:"type:varchar(120)" json:"firstname"`
    LastName         string    `gorm:"type:varchar(120)" json:"lastname"`
    CreatedAt        time.Time `gorm:"column:createdAt;autoCreateTime" json:"createdAt"`
    UpdatedAt        time.Time `gorm:"column:updatedAt;autoUpdateTime" json:"updatedAt"`
    IsActive         bool      `gorm:"column:isActive;default:true" json:"isActive"`
    IsEmailActivated bool      `gorm:"column:isEmailActivated;default:false" json:"isEmailActivated"`
}

// TableName fonksiyonu ile tablonun ismini belirtmek
func (User) TableName() string {
    return "users"
}

// BeforeCreate callback'ini kullanarak UUID oluşturulması
func (user *User) BeforeCreate(tx *gorm.DB) (err error) {
    user.ID = uuid.New().String() // Her yeni kullanıcı için UUID oluşturulur
    return nil
}
