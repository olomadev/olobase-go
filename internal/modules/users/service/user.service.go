package service

import (
    "context"
    "database/sql"
    "errors"
    "time"
    sq "github.com/Masterminds/squirrel"
    "github.com/olomadev/olobase-go/internal/modules/users/model"
)

type UserService struct {
    DB *sql.DB
}

// Kullanıcıyı email ile sorgulama (squirrel kullanılarak)
func (s *UserService) GetUserByEmail(email string) (*model.User, error) {
    queryBuilder := sq.
        Select("id", "email", "password", "firstname", "lastname", "created_at", "updated_at", "is_active", "is_email_activated").
        From("users").
        Where(sq.Eq{"email": email}).
        Limit(1).
        PlaceholderFormat(sq.Question) // ? kullanımı (MySQL uyumlu)

    query, args, err := queryBuilder.ToSql()
    if err != nil {
        return nil, err
    }

    var user model.User
    row := s.DB.QueryRowContext(context.Background(), query, args...)
    err = row.Scan(
        &user.ID,
        &user.Email,
        &user.Password,
        &user.FirstName,
        &user.LastName,
        &user.CreatedAt,
        &user.UpdatedAt,
        &user.IsActive,
        &user.IsEmailActivated,
    )

    if err != nil {
        if errors.Is(err, sql.ErrNoRows) {
            return nil, nil
        }
        return nil, err
    }

    return &user, nil
}
