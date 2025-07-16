CREATE DATABASE IF NOT EXISTS test_task;
USE test_task;

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    email VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    full_name VARCHAR(100),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO users (username, email, password, full_name) 
VALUES 
('test_user', 'user@example.com', '$2y$10$NlQb5u7X9z6Z8cYbJkqVUuWfVd3rCtGzS1aB2dE3F4gH5iJ6kL7m8n9o0p', 'Тестовый Пользователь');