-- Replace "base" with your new project db name.
CREATE USER IF NOT EXISTS 'user'@'%' IDENTIFIED BY 'userpassword';
GRANT ALL PRIVILEGES ON base.* TO 'user'@'%';
FLUSH PRIVILEGES;

-- test_base for pytest
CREATE DATABASE IF NOT EXISTS test_base CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
GRANT ALL PRIVILEGES ON test_base.* TO 'user'@'%';
FLUSH PRIVILEGES;
