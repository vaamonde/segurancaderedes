Instalação e configuração do GNU/Linux Mint Desktop

01. Criação da Máquina Virtual no Virtual BOX;
02. Personalização da Máquina Virtual;
04. Instalação do GNU/Linux Mint 18.1 LTS;
05. Atualização do Sistema Operacional;
06. Configurações pós instalação.

Atualizando o sistema:

#Verificando as informações de redes (Interfaces)
sudo ifconfig

#Verificando as informações de roteamento (Gateway)
sudo route -n

#Verificando as informações de resolução de nomes (DNS)
sudo cat /etc/resolv.conf

#Testando conectividade com a Internet (para cancelar o Ping precione Ctrl+C)
sudo ping www.google.com

#Testando a resolução de nomes (DNS)
sudo nslookup www.google.com

#Atualizando as lista do apt-get
sudo apt-get update

#Atualizando todos os software instalados
sudo apt-get upgrade

#Atualizando a distribuição e o Kernel
sudo apt-get dist-upgrade

#Removendo software desnecessários
sudo apt-get autoremove

#Limpando o cache do apt-get
sudo apt-get clean

#Reinicializando o servidor
sudo reboot
