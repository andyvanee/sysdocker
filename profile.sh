alias redis-cli="docker run -it --link sysdocker_redis_1:redis --rm redis redis-cli -h redis -p 6379"

alias mysql="docker run -it --link sysdocker_mysql_1:mysql --rm mysql sh -c 'exec mysql -h\"\$MYSQL_PORT_3306_TCP_ADDR\" -P\"\$MYSQL_PORT_3306_TCP_PORT\" -uroot --password=\"\$MYSQL_ENV_MYSQL_ROOT_PASSWORD\"'"

alias mysqldump="docker exec sysdocker_mysql_1 sh -c 'exec mysqldump --all-databases -uroot --password=\"\$MYSQL_ROOT_PASSWORD\"'"

alias psql="docker run -it --rm --link sysdocker_postgres_1:postgres postgres psql -h postgres -U postgres"

# Serve the current working directory using the PHP built-in web server
function phpS () {
    docker run -it --rm -p8000:8000 -v $(pwd):/app sysdocker_php
}
