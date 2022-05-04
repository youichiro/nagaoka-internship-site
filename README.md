## セットアップ

```sh
$ docker-compose build
$ docker-compose run --rm web bin/rails db:create
$ docker-compose run --rm web bin/rails db:migrate
$ docker-compose run --rm web bin/rails db:seed
$ docker-compose run --rm web bin/rails assets:precompile
$ docker-compose up -d
```
