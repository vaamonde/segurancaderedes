#Conhecendo o TCPWrappers

ldd (mostra as dependências do aplicativo)<br>
grep (busca palavras ou texto)<br>
libwrap (biblioteca do TCPWrappers (aplicação)<br>
ldd /usr/sbin/sshd | grep libwrap<br>

Wildcards<br>

ALL — Combina tudo. Ele pode ser usado tanto para a lista do daemon quanto para a lista de clientes..<br><br>
LOCAL — Corresponde a qualquer host que não contenha um ponto (.), Como localhost.<br><br>
KNOWN — Corresponde a qualquer host onde o nome do host eo endereço do host são conhecidos ou onde o usuário é conhecido.<br><br>
UNKNOWN — Corresponde a qualquer host onde o nome do host ou o endereço do host são desconhecidos ou onde o usuário é desconhecido.<br><br>
PARANOID — Corresponde a qualquer host em que o hostname não corresponda ao endereço do host.<br><br>

ALL : .example.com<br>
ALL : 192.168.<br>
ALL : 192.168.0.0/255.255.254.0<br>
ALL : 192.168.0.0/24<br>
ALL : *.example.com<br>
sshd: LOCAL, .my.domain<br>
ALL: .example.com EXCEPT cracker.example.com<br>
ALL EXCEPT vsftpd: 192.168.0.<br>

Material do extra: https://access.redhat.com/documentation/en-US/Red_Hat_Enterprise_Linux/3/html/Reference_Guide/s1-tcpwrappers-access.html<br>
