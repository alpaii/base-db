# 프로젝트 클론 후 설정 변경 안내

이 프로젝트는 `base` 프로젝트를 클론하여 새로운 프로젝트를 시작할 수 있도록 구성되어 있습니다.
새로운 프로젝트로 실행하려면 몇 가지 설정을 수정해야 합니다.

## 1. 데이터베이스 사용자 생성 및 권한 부여

다음 SQL 스크립트에서 `base`를 새로운 프로젝트 명으로 수정하세요.

```sql
CREATE USER IF NOT EXISTS 'user'@'%' IDENTIFIED BY 'userpassword';
GRANT ALL PRIVILEGES ON base.* TO 'user'@'%';
FLUSH PRIVILEGES;
```

## 2. Docker Compose 설정 변경

`docker-compose.yml` 파일에서 `MYSQL_DATABASE` 값을 새로운 프로젝트 명으로 수정하세요.

```yaml
services:
  db:
    image: mysql:8.0
    environment:
      MYSQL_ROOT_PASSWORD: rootpassword
      MYSQL_DATABASE: base
    ports:
      - "3306:3306"
    volumes:
      - ./db_data:/var/lib/mysql
      - ./init-scripts:/docker-entrypoint-initdb.d/ # 초기화 스크립트 마운트
```

## 3. 기타 프로젝트 관련 수정

- `base`로 되어 있는 프로젝트명을 원하는 프로젝트 명으로 변경하세요.
- 필요에 따라 `.env` 파일 등의 설정도 수정하세요.
- 이후 정상적으로 프로젝트를 실행할 수 있습니다.

---

이제 새로운 프로젝트로 사용 가능합니다!
