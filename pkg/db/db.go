package db

import (
    "fmt"
    "os"
    "gorm.io/driver/mysql"
    "gorm.io/gorm"
)

// Veritabanı bağlantısı için bir factory fonksiyonu
func NewDBConnection() (*gorm.DB, error) {
    host := os.Getenv("DB_HOST")
    port := os.Getenv("DB_PORT")
    user := os.Getenv("DB_USER")
    password := os.Getenv("DB_PASSWORD")
    dbname := os.Getenv("DB_NAME")

    dsn := fmt.Sprintf("%s:%s@tcp(%s:%s)/%s?charset=utf8mb4&parseTime=True&loc=Local", user, password, host, port, dbname)

    // GORM ile veritabanı bağlantısını oluştur
    db, err := gorm.Open(mysql.Open(dsn), &gorm.Config{})
    if err != nil {
        return nil, fmt.Errorf("failed to connect to the database: %w", err)
    }

    // Bağlantı havuzunu yapılandırabilirsiniz (isteğe bağlı)
    sqlDB, err := db.DB()
    if err != nil {
        return nil, fmt.Errorf("failed to get raw database connection: %w", err)
    }

    // Bağlantı havuzu ayarları
    sqlDB.SetMaxOpenConns(10)  // Maksimum açık bağlantı sayısı
    sqlDB.SetMaxIdleConns(5)   // Maksimum boşta kalan bağlantı sayısı
    sqlDB.SetConnMaxLifetime(30)  // Bağlantı yaşam süresi

    return db, nil
}
