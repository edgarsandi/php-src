./buildconf


CFLAGS='-Wall-Wno-strict-aliasing -g -pipe'  EXTRA_LDFLAGS_PROGRAM='-Wl,--as-needed' \
    './configure' \
    '--enable-bcmath' \
    '--enable-calendar' \
    '--enable-dba' \
    '--enable-debug' \
    '--enable-exif' \
    '--enable-fpm' \
    '--enable-ftp' \
    '--enable-gcov' \
    '--enable-inline-optimization' \
    '--enable-intl' \
    '--enable-maintainer-zts' \
    '--enable-mbregex' \
    '--enable-mbstring' \
    '--enable-opcache' \
    '--enable-pcntl' \
    '--enable-phpdbg' \
    '--enable-shmop' \
    '--enable-soap' \
    '--enable-sockets' \
    '--enable-sysvmsg' \
    '--enable-sysvsem' \
    '--enable-sysvshm' \
    '--enable-wddx' \
    '--enable-zip' \
    '--with-bz2' \
    '--with-curl' \
    '--with-enchant' \
    '--with-fpm-group=www-data' \
    '--with-fpm-user=www-data' \
    '--with-gd' \
    '--with-gdbm' \
    '--with-gettext' \
    '--with-gmp' \
    '--with-jpeg-dir' \
    '--with-kerberos' \
    '--with-libdir=/lib/x86_64-linux-gnu' \
    '--with-libxml-dir=/usr' \
    '--with-litespeed' \
    '--with-mhash' \
    '--with-mysqli' \
    '--with-openssl' \
    '--with-pcre-regex' \
    '--with-pdo-firebird' \
    '--with-pdo-mysql' \
    '--with-pdo-odbc=unixODBC,/usr' \
    '--with-pdo-pgsql' \
    '--with-pdo-sqlite' \
    '--with-pgsql' \
    '--with-png-dir' \
    '--with-pspell' \
    '--with-readline' \
    '--with-snmp' \
    '--with-tidy' \
    '--with-unixODBC=/usr' \
    '--with-xmlrpc' \
    '--with-xpm-dir' \
    '--with-xsl' \
    '--with-zlib' \
    '--with-zlib-dir' \
    'CFLAGS=-Wall '-Wno-strict-aliasing' '-g' '-pipe''  \
    "$@"


make -j17 clean
make -j17
make -j17 install
make -j17 lcov