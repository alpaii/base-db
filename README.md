# Guide for Modifying Settings After Cloning the Project

This project is structured so that you can clone the `base` project and start a new project.
To run it as a new project, some settings need to be modified.

## 1. Creating Database User and Granting Permissions

Modify the following SQL script by replacing `base` with your new project name.

```sql
CREATE USER IF NOT EXISTS 'user'@'%' IDENTIFIED BY 'userpassword';
GRANT ALL PRIVILEGES ON base.* TO 'user'@'%';
FLUSH PRIVILEGES;
```

## 2. Modifying Docker Compose Configuration

Edit the `docker-compose.yml` file and change the `MYSQL_DATABASE` value to your new project name.

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
      - ./init-scripts:/docker-entrypoint-initdb.d/ # Mount initialization scripts
```

## 3. Other Project Modifications

- Replace instances of `base` with your desired project name.
- Modify configuration files such as `.env` if necessary.
- After making these changes, the project should run properly.

---

Your new project is now ready for use!
