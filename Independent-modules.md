
### Independent Modules

#### 1. **Modül Bağımsızlığı Sağlamak (auth modülüne örnek)**

```go
// internal/modules/auth/routes.go

package auth

import (
    "github.com/gofiber/fiber/v2"
    "github.com/olomadev/olobase-go/internal/modules/auth/handler"
    "github.com/olomadev/olobase-go/internal/modules/auth/service"
    "github.com/olomadev/olobase-go/pkg/db" // db bağlantısını burada alıyoruz
)

func SetupRoutes(app *fiber.App) {
    // Bağlantı için db'yi burada oluşturuyoruz
    dbConnection, err := db.NewDBConnection()
    if err != nil {
        panic("Database connection error: " + err.Error())
    }

    authService := &service.AuthService{DB: dbConnection}
    tokenHandler := &handler.TokenHandler{AuthService: authService}

    // Auth modülüne ait route'ları buradan tanımlıyoruz
    app.Post("/api/auth/token", tokenHandler.HandleToken)
}
````

#### 2. **Ana `main.go` Yapısını Güncelleme**

```go
// main.go

package main

import (
    "log"
    "github.com/gofiber/fiber/v2"
    "github.com/joho/godotenv"
    "github.com/swaggo/fiber-swagger" // Swagger UI
    _ "github.com/olomadev/olobase-go/docs"
    "github.com/olomadev/olobase-go/internal/modules/auth"
)

func main() {
    err := godotenv.Load()
    if err != nil {
        log.Fatal("Error loading .env file")
    }

    // Yeni fiber uygulamasını oluştur
    app := fiber.New()

    // Swagger route
    app.Get("/swagger/*", fiberSwagger.WrapHandler)

    // Modüllerin setup fonksiyonlarını çağırıyoruz
    auth.SetupRoutes(app)

    // Uygulamayı başlat
    app.Listen(":3000")
}
```

### **Avantajları**:

1. **Bağımsızlık**: Her modül kendi bağımsız yapılandırmasını içerir. Modüller, kendi bağımsız servisleri ve handler'ları ile çalışır.
2. **Yeniden Kullanılabilirlik**: Modüllerin bağımsız olması, her bir modülün başka projelerde de kullanılabilirliğini artırır.
3. **Temiz Kod**: Modüller arası bağımlılıkların azalması, kodun daha temiz ve sürdürülebilir olmasını sağlar.