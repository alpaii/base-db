-- Replace base with your new project db name.
CREATE USER IF NOT EXISTS 'user'@'%' IDENTIFIED BY 'userpassword';
GRANT ALL PRIVILEGES ON base.* TO 'user'@'%';
FLUSH PRIVILEGES;

-- test_base for pytest
GRANT ALL PRIVILEGES ON test_base.* TO 'user'@'%' IDENTIFIED BY 'userpassword';
FLUSH PRIVILEGES;
