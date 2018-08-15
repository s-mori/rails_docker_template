#!/bin/bash

mysql=( mysql --protocol=socket -uroot -p"${MYSQL_ROOT_PASSWORD}" )

"${mysql[@]}" <<-EOSQL
    CREATE DATABASE IF NOT EXISTS project_development;
    CREATE DATABASE IF NOT EXISTS project_test;
    GRANT ALL ON project_development.* TO '${MYSQL_USER}'@'%' ;
    GRANT ALL ON project_test.* TO '${MYSQL_USER}'@'%' ;
    FLUSH PRIVILEGES ;
    USE project_development;
EOSQL
