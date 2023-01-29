CREATE TABLE users (
    id BIGINT UNSIGNED PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR (255) UNIQUE NOT NULL,
    is_admin BOOLEAN DEFAULT 0,
    password VARCHAR(255)
);

CREATE TABLE tasks (
    id BIGINT UNSIGNED PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    user_id INT NOT NULL REFERENCES users(id),
    description TEXT NOT NULL,
    is_done BOOLEAN DEFAULT 0,
    is_edits_by_admin BOOLEAN DEFAULT 0,
);

INSERT INTO users (
    name, email, is_admin, password
) VALUES (
    'admin', 'admin@admin.com', true, '$2y$10$lTZO4F7CojtGnipgx6vglOKTfROxF/hfKsG/X0mQxMzAwQr7MLFdm'
)
