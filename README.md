# WebFrontModern - Docker

Proyecto JEE desplegado con Apache Tomcat 11 y MySQL 8, containerizado con Docker.

## Requisitos

- [Docker Desktop](https://www.docker.com/products/docker-desktop/) instalado y en ejecución

## Estructura

```
WebFrontModern-docker/
├── Dockerfile
├── docker-compose.yml
└── WebFrontModern.war
```

## Instrucciones de uso

### Primera vez (o tras cambios)

```bash
docker compose up --build
```

### Arrancar en segundo plano

```bash
docker compose up -d
```

### Detener los contenedores

```bash
docker compose down
```

## Acceso a la aplicación

Una vez levantados los contenedores, abre el navegador y accede a:

```
http://localhost:8080
```

## Configuración previa

Crea un archivo `.env` en la raíz del proyecto con el siguiente contenido:

```
MYSQL_ROOT_PASSWORD=tu_contraseña
MYSQL_DATABASE=webfrontmodern
DB_HOST=db
DB_PORT=3306
DB_USER=root
DB_PASS=tu_contraseña
```

> ⚠️ El archivo `.env` no se incluye en el repositorio por seguridad.

## Base de datos

| Parámetro | Valor |
|-----------|-------|
| Host | localhost |
| Puerto | 3307 |
| Base de datos | webfrontmodern |
| Usuario | root |
| Contraseña | ver archivo `.env` |

## Tecnologías

- **Apache Tomcat** 11.0 + JDK 17
- **MySQL** 8.0
- **Docker Compose**
