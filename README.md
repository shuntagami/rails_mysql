# shuntagami/rails_mysql

This is a dockerized Rails6 application template.

## keywords

- Database: **MySQL**
- Test: **Rspec**
- Webpacker (Asset Pipeline/Sprockets is disabled)
- OpenAPI
- API schema test: **committee-rails**

## How to use

### Development build by docker-compose

```bash
$ make all
```

### FYI: Development build without docker-compose

```bash
$ docker network create rails-network # Create a network of rails-network
$ docker build -t mysql docker/mysql/. # Buiid a mysql image.
$ docker run --name mysql --platform linux/x86_64 --net rails-network -d --env-file ./docker/mysql/.env -v db-data:/var/lib/mysql mysql # Run a postgres image with a specific network and env-file.
$ docker build --target development -t my-api . # Build a rails-app image of my-api.
$ docker run --rm --name rails_mysql --env-file .env --net rails-network -d -p 3000:3000 -v $(pwd):/opt/app my-api # Run a rails-app image with a specific network and env-file.
```

### Health check

```bash
$ curl localhost:3000/api/_healthcheck
{"message":"OK"}
```

### Production build

```bash
$ make image.build # build docker image for production.
$ make image.push # push to docker registry.
```
