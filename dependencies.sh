# FROM debian:jessie

export DEBIAN_FRONTEND="noninteractive"

apt-get update -qq

# compile tools
apt-get install -y automake autoconf bison build-essential clang flex lcov make valgrind openssl re2c snmp htop

# lib packages
apt-get install -y libxml2-dev libicu-dev unixodbc-dev zlib1g-dev libcurl4-openssl-dev libssl-dev libbz2-dev libgdbm-dev libenchant-dev libpng12-dev libxpm-dev libgmp-dev firebird-dev libpspell-dev libsnmp-dev libtidy-dev libxslt1-dev libjpeg-dev libreadline-dev libpq-dev

# mysql client and mysql server
apt-get -y -qq install mysql-server mysql-client mysql-common

/etc/init.d/mysql start

export MYSQL_TEST_HOST="localhost"
export MYSQL_TEST_PORT=3306
export MYSQL_TEST_USER="root"
export MYSQL_TEST_PASSWD="root"
export MYSQL_TEST_DB="test"
export MYSQL_TEST_ENGINE="MyISAM"
export MYSQL_TEST_SOCKET=null