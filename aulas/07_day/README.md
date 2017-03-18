<h1>Instalação de Software</h1>

#Atualizando as listas do apt-get<br>
sudo apt-get update

#Atualizando os software<br>
sudo apt-get upgrade

#Instalando o servidor de NTP e Cliente do NTP<br>
sudo apt-get install ntp ntpdate

#Instalando o servidor de KDC Kerberos<br>
#digitar o nome do domínio, nome do servidor FQDN e novo do servidor de KDC<br>
sudo apt-get install krb5-kdc krb5-config<br>

#Instalando o LAMP Server (Apache2, MySQL, PHP, Perl Python)<br>
#digitar a senha do usuário ROOT do MySQL<br>
sudo apt-get install lamp-server^<br>

#Instalando o gerenciador Web do MySQL<br>
#selecionar o servidor apache2 e digitar a senha do usuário phpmyadmin<br>
sudo apt-get install phpmyadmin<br>

#Testando o Apache2<br>
cd /var/www/html<br>
sudo vim phpinfo.php<br>
"<?php phpinfo(); ?>"

#Instalando o servidor de DHCP<br>
sudo apt-get install isc-dhcp-server

#Instalando o servidor de DNS Bind9<br>
sudo apt-get install bind9

#Instalando o servidor de Arquivos e Controlador de Domínio SAMBA-4<br>
sudo apt-get install samba samba-common samba-vfs-modules samba-testsuite acl

#Instalando o servidor de impressão CUPS<br>
sudo apt-get install cups cups-pdf

#Instalando as dependências do Gerenciador de Servidor WebAdmin<br>
sudo apt-get install perl libnet-ssleay-perl openssl libauthen-pam-perl libpam-runtime libio-pty-perl apt-show-versions python

#Fazendo o download do instalador do WebAdmin<br>
wget http://prdownloads.sourceforge.net/webadmin/webmin_1.831_all.deb

#Instalando o WebAdmin<br>
sudo dpkg -i webmin_1.831_all.deb

#Fazendo o download do CMS Wordpress<br>
wget https://wordpress.org/latest.zip

#Instalando as dependências do Sistema de Monitoramento Netdata<br>
apt-get -y install zlib1g-dev gcc make git autoconf autogen automake pkg-config uuid-dev

#Fazendo a clonagem do projeto do Netdata<br>
git clone https://github.com/firehol/netdata.git --depth=1

#Instalando o Netdata<br>
cd netdata<br>
./netdata-installer.sh
