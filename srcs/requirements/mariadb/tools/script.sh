
service mariadb start
mariadb -e "CREATE DATABASE $(MYDB);"
mariadb -e "CREATE USER $(hicham) IDENTIFY BY $(123456);"
mariadb -e "GRANT ALL PRIVILEGES OM $(mydb) to $(hicham) IDENTIFIED BY $(123456);"


service mariadb stop

exec mysql_safe