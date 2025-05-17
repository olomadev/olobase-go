package db

import (
    "database/sql"
    "fmt"
    "os"
    _ "github.com/go-sql-driver/mysql"
)

// Yeni DB bağlantısı oluşturur ve *sql.DB döner
func NewDBConnection() (*sql.DB, error) {
    host := os.Getenv("DB_HOST")
    port := os.Getenv("DB_PORT")
    user := os.Getenv("DB_USER")
    password := os.Getenv("DB_PASSWORD")
    dbname := os.Getenv("DB_NAME")

    dsn := fmt.Sprintf("%s:%s@tcp(%s:%s)/%s?charset=utf8mb4&parseTime=True&loc=Local", 
        user, password, host, port, dbname)

    db, err := sql.Open("mysql", dsn)
    if err != nil {
        return nil, fmt.Errorf("failed to open database: %w", err)
    }

    // Bağlantı test et
    if err := db.Ping(); err != nil {
        return nil, fmt.Errorf("failed to ping database: %w", err)
    }

    // Bağlantı havuzu ayarları
    db.SetMaxOpenConns(10)       // Maksimum açık bağlantı sayısı
    db.SetMaxIdleConns(5)        // Maksimum boşta kalan bağlantı sayısı
    db.SetConnMaxLifetime(0)     // Bağlantının ömrü (süre), 0 = sınırsız

    return db, nil
}
