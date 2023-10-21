# TestMidTerm

#Create database MySQL
```MySQL
CREATE DATABASE IF NOT EXISTS test_mid_term character set UTF8 collate utf8mb3_general_ci;

USE test_mid_term;


-- Tạo bảng User
CREATE TABLE Users (
                      id INT AUTO_INCREMENT PRIMARY KEY,
                      email VARCHAR(100) NOT NULL,
                      password VARCHAR(36) NOT NULL,
                      name VARCHAR(255) NOT NULL,
                      created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Tạo bảng Product
CREATE TABLE Products (
                         id INT AUTO_INCREMENT PRIMARY KEY,
                         name VARCHAR(100) NOT NULL,
                         description TEXT,
                         image VARCHAR(255),
                         category VARCHAR(255),
                         created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
INSERT INTO test_mid_term.users (email, password, name, created_at) VALUES ('b@gmail.com', 'b', 'Nguyen Van B', '2023-10-21 15:41:08')
INSERT INTO test_mid_term.users (email, password, name, created_at) VALUES ('a@gmail.com', 'a', 'Cao Van A', '2023-10-21 15:41:08')
```
