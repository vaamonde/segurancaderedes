Instalação e configuração do GNU/Linux Ubuntu Server

Informações sobre RAID: https://pt.wikipedia.org/wiki/RAID

Informações sobre LVM: https://en.wikipedia.org/wiki/Logical_Volume_Manager_(Linux)

Informações sobre Sistema de Arquivos GNU/Linux: https://pt.wikipedia.org/wiki/Sistema_de_ficheiros

Informações sobre Criptografia de Arquivos: https://pt.wikibooks.org/wiki/Guia_do_Linux/Avan%C3%A7ado/Introdu%C3%A7%C3%A3o_ao_uso_de_criptografia_para_transmiss%C3%A3o/armazenamento_de_dados/Usando_pgp_(gpg)para_criptografia_de_arquivos

01. Criação da Máquina Virtual no Virtual BOX;
02. Personalização da Máquina Virtual;
03. Criação de Hard Disk para configuração de RAID;
04. Instalação do GNU/Linux Ubuntu Server 16.04.x LTS;
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
