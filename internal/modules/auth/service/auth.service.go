package service

import (
    "context"
    "database/sql"
    "errors"
    sq "github.com/Masterminds/squirrel"
    "github.com/alexedwards/argon2id"
    "github.com/olomadev/olobase-go/internal/modules/users/model"
)

type AuthService struct {
    DB *sql.DB
    Builder sq.StatementBuilderType
}

func NewAuthService(db *sql.DB) *AuthService {
    return &AuthService{
        DB: db,
        Builder: sq.StatementBuilder.PlaceholderFormat(sq.Question),
    }
}

func (s *AuthService) AuthenticateUser(ctx context.Context, username string, password string) (*model.User, error) {
    query := s.Builder.
        Select("id", "email", "password", "firstname", "lastname", "createdAt", "updatedAt", "isActive").
        From("users").
        Where(sq.Eq{"email": username})

    sqlStr, args, err := query.ToSql()
    if err != nil {
        return nil, err
    }

    var user model.User
    // Sorguyu çalıştır
    row := s.DB.QueryRowContext(ctx, sqlStr, args...)
    err = row.Scan(
        &user.ID,
        &user.Email,
        &user.Password,
        &user.FirstName,
        &user.LastName,
        &user.CreatedAt,
        &user.UpdatedAt,
    )
    if err != nil {
        if errors.Is(err, sql.ErrNoRows) {
            return nil, errors.New("invalid credentials")
        }
        return nil, err
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
