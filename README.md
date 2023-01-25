# Running Keycloak on fly.io

This setup is using fly.io's postgres "service" and DNS_PING (from jgroups) to achive clustering of the Keycloak instances.

https://fly.io/docs/postgres/getting-started/create-pg-cluster/

.env
```
KC_DB_URL_DATABASE=<DBNAME>
KC_DB_URL_HOST=top2.nearest.of.<PGAPPNAME>.internal
KC_DB_USERNAME=<USERNAME>
KC_DB_PASSWORD=<PASSWORD>
```

```sh
flyctl secrets import < .env
flyctl deploy
```
