<h1>Instalação de Software</h1>

sudo apt-get update

sudo apt-get install ntp ntpdate

sudo apt-get install krb5-kdc krb5-config<br>
#digitar o nome do domínio, nome do servidor FQDN e novo do servidor de KDC<br>

sudo apt-get install lamp-server^<br>
#digitar a senha do usuário ROOT do MySQL<br>

sudo apt-get install phpmyadmin<br>
#selecionar o servidor apache2 e digitar a senha do usuário phpmyadmin<br>
<?php phpinfo(); ?>

sudo apt-get install isc-dhcp-server

sudo apt-get install bind9

sudo apt-get install samba samba-common samba-vfs-modules samba-testsuite acl

sudo apt-get install cups cups-pdf

sudo apt-get install perl libnet-ssleay-perl openssl libauthen-pam-perl libpam-runtime libio-pty-perl apt-show-versions python

wget http://prdownloads.sourceforge.net/webadmin/webmin_1.831_all.deb

wget https://wordpress.org/latest.zip

apt-get -y install zlib1g-dev gcc make git autoconf autogen automake pkg-config uuid-dev

git clone https://github.com/firehol/netdata.git --depth=1

cd netdata

./netdata-installer.sh
