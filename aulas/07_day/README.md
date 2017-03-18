<h1>Instalação de Software</h1>

#Atualizando as listas do apt-get
sudo apt-get update

#Atualizando os software
sudo apt-get upgrade

#Instalando o servidor de NTP e Cliente do NTP
sudo apt-get install ntp ntpdate

#Instalando o servidor de KDC Kerberos
sudo apt-get install krb5-kdc krb5-config<br>
#digitar o nome do domínio, nome do servidor FQDN e novo do servidor de KDC<br>

#Instalando o LAMP Server (Apache2, MySQL, PHP, Perl Python)
sudo apt-get install lamp-server^<br>
#digitar a senha do usuário ROOT do MySQL<br>

#Instalando o gerenciador Web do MySQL
sudo apt-get install phpmyadmin<br>
#selecionar o servidor apache2 e digitar a senha do usuário phpmyadmin<br>

#Testando o Apache2
cd /var/www/html
sudo vim phpinfo.php
<?php phpinfo(); ?>

#Instalando o servidor de DHCP
sudo apt-get install isc-dhcp-server

#Instalando o servidor de DNS Bind9
sudo apt-get install bind9

#Instalando o servidor de Arquivos e Controlador de Domínio SAMBA-4
sudo apt-get install samba samba-common samba-vfs-modules samba-testsuite acl

#Instalando o servidor de impressão CUPS
sudo apt-get install cups cups-pdf

#Instalando as dependências do Gerenciador de Servidor WebAdmin
sudo apt-get install perl libnet-ssleay-perl openssl libauthen-pam-perl libpam-runtime libio-pty-perl apt-show-versions python

#Fazendo o download do instalador do WebAdmin
wget http://prdownloads.sourceforge.net/webadmin/webmin_1.831_all.deb

#Instalando o WebAdmin
sudo dpkg -i webmin_1.831_all.deb

#Fazendo o download do CMS Wordpress
wget https://wordpress.org/latest.zip

#Instalando as dependências do Sistema de Monitoramento Netdata
apt-get -y install zlib1g-dev gcc make git autoconf autogen automake pkg-config uuid-dev

#Fazendo a clonagem do projeto do Netdata
git clone https://github.com/firehol/netdata.git --depth=1

#Instalando o Netdata
cd netdata
./netdata-installer.sh
