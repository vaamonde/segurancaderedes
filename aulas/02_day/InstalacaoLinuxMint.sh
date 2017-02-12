Instalação do GNU/Linux Mint 18.1 Cinnamon x64 em Notebook Itautec

Download da ISO: https://www.linuxmint.com/edition.php?id=226

Download do RUFUS: https://rufus.akeo.ie/?locale=pt_BR

Download YUMI: https://www.pendrivelinux.com/yumi-multiboot-usb-creator/

Download Multiboot: http://multibootusb.org/

Apostila GNU/Linux Mint: https://www.linuxmint.com/documentation/user-guide/Cinnamon/portuguese_brazil_18.0.pdf

Apostila de GNU/Linux: http://www.guiafoca.org/

Vídeo Aulas do GNU/Linux Mint: https://www.youtube.com/playlist?list=PLozhsZB1lLUNcpyrspEOqpQHMQqoe1wDJ

Vídeo Aulas do GNU/Linux Ubuntu: https://www.youtube.com/playlist?list=PLozhsZB1lLUMHaZmvczDWugUv9ldzX37u

Documentário de GNU/Linux Revolution OS: https://www.youtube.com/watch?v=plMxWpXhqig

Documentário de GNU/Linux The Code: https://www.youtube.com/watch?v=ZKo0aJmgV4Y

Documentário de GNU/Linux Improprietário: https://www.youtube.com/watch?v=MKDn9quw5sc

Documentário Gerras dos Navegadores: https://www.youtube.com/watch?v=0nz-lcuv3TM

Documentário da História da Internet: https://www.youtube.com/watch?v=FHVPBueXudE

Documentário da Origem dos Hackers: https://www.youtube.com/watch?v=kLYh0xdgKZI

Download do Oracle VirtualBOX: https://www.virtualbox.org/wiki/Linux_Downloads
(Baixar a versão 5.1 para GNU/Linux Ubuntu 16.04 Xenial x64 e também  VirtualBox Extension Pack)

Vídeo Aulas do Oracle VirtualBOX e Hyper-V: http://professorramos.com/index.php/categoria/aulas/sistema-operacional/virtualizacao/

Procedimentos que serão utilizados na aula:

01. Criação do Pen-Driver utilizando o RUFUS no Windows;
02. Configuração da BIOS dos Notebooks Itautec (pressionar F2, F12 seleciona o Menu de Boot);
03. Inicialização da Instalação via Pen-Driver;
04. Conhecendo o Boot Load do GNU/Linux Mint 18.1 (pressionar qualquer tecla antes do 10 segundos);
05. Rodando o GNU/Linux Mint via Live e conhecendo o Driver Manager;
06. Instalando o GNU/Linux Mint 18.1 de forma segura;
07. Atualizando o GNU/Linux Mint 18.1 utilizando o MintUpdate;
08. Download do Oracle VirtualBOX 5.1 para GNU/Linux;
09. Instalação do Oracle VirtualBOX e  VirtualBox Extension Pack;
10. Download da ISO do GNU/Linux Ubuntu Server 16.04 LTS;

Atualizando o sistema via Bash/Shell

No GNU/Linux Mint recomendado utilizar o MintUpdate

#Atualizando as listas do Apt-Get
sudo apt-get update

#Atualizando todos os softwares
sudo apt-get upgrade

#Atualizando a distribuição é o Kernel
sudo apt-get dist-upgrade

#Limpando o Cache do Apt-Get
sudo apt-get clean
