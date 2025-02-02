-- 사용자 생성 및 권한 부여
CREATE USER IF NOT EXISTS 'user'@'%' IDENTIFIED BY 'userpassword';
GRANT ALL PRIVILEGES ON base.* TO 'user'@'%';
FLUSH PRIVILEGES;