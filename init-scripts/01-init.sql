-- 사용자 생성 및 권한 부여.
-- base를 새로운 프로젝트 db 이름으로 수정
CREATE USER IF NOT EXISTS 'user'@'%' IDENTIFIED BY 'userpassword';
GRANT ALL PRIVILEGES ON base.* TO 'user'@'%';
FLUSH PRIVILEGES;