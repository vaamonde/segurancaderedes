<h1>Material de Apoio</h1>

UTM (Unified Threat Management - Gestão unificada de ameaças)

UCS (Unified Computing System - Sistema de computação unificada)

Site IANA Media Types: https://www.iana.org/assignments/media-types/media-types.xhtml

Site Bogon List: https://sites.google.com/a/bgp4.com.br/bgp-4-brasil/dicas/bogons

Sites SSL: https://pt.wikipedia.org/wiki/Hyper_Text_Transfer_Protocol_Secure

Sites TLS: https://pt.wikipedia.org/wiki/Transport_Layer_Security

Sites HSTS: https://imasters.com.br/infra/seguranca/hsts-meu-https-nao-esta-seguro/?trace=1519021197&source=single

Site MITM: https://pt.wikipedia.org/wiki/Ataque_man-in-the-middle

Site Blacklist: http://www.shallalist.de/Downloads/shallalist.tar.gz

Expressões Regulares: http://aurelio.net/regex/guia/

Teste de expressão regular: http://www.regexpal.com/

Block MIME Types:	list mime type iana

^(.`*`)video(.`*`)$

Expressão Regular:<br>
"." significa qualquer coisa, qualquer caracter.<br>
"`\`" significa que o próximo caracter não tem função especial, caracter de escape.<br>
"*" significa que o elemento anterior pode ser repetido 0 ou mais vezes.<br>
"+" significa que o elemento anterior pode ser repetido 1 ou mais vezes.<br>
"?" significa que o elemento anterior pode aparecer ou não.<br>
"(" e ")" delimitam um elemento complexo.<br>
"^" representa o início da string.<br>
"$" representa o fim da string.<br>
"[" e "]" representam um conjunto de caracteres opcionais. Dentro do conjunto, você pode especificar caracteres isolados (tipo [acE]), faixas ([a-z]) ou exclusões ([^a] significa qq coisa exceto "a") [note que há muito mais, mas isto é apenas um resumo].<br>
"|" significa strings alternativas, tipo "maçã|laranja".<br>

"(.`*\`/.`*\`.(asf|zip|rar|cab|avi|swf|exe|mpeg|mp.|wm.|vpu))"<br>
http://www.baixaki.com.br/win.cab

Tipos de NAT<br>
DNAT (Destination NAT)<br>
SNAT (Source NAT)<br>
NAT Estático:	1 para 1<br>
NAT Dinâmico:	1 para NAT<br>
NAPT (Network Address Port Translation)<br>
Twice NAT (2x NAT)<br>
Bi-Directional NAT (ou two-way):<br>
NAT-PT: O NAT-PT (Network Address Translation - Protocol Translation)<br>
NAT Overloading (PAT)<br>
NAT Overlapping

Regras por Grupos de Pessoas<br>
Grupos por IP - Regex - Test<br>
web2generators HTML Entitie Encode/Decoder

1. Services, Squid Guardian, Target Categoria<br>
2. Name: blk_download<br>
3. Regular Expression: (.*\/.*\.(asf|zip|rar|cab|avi|swf|exe|mpeg|mp.|wm.|vpu))<br>
4. Redirect mode: int error page<br>
5. Redirect: Download proibido<br>
6. Description: Bloqueio de download por extensão

1. Services, Squid Guardian, Groups ACL<br>
2. Name: rede_interna<br>
3. Client source: 192.168.1.0/24<br>
4. Target Rules: blk_download --> deny<br>
5. Description: Bloqueia download rede interna

1. Services, Squid Guardian, Groups ACL<br>
2. Name: rede_ti<br>
3. Order: antes da rede_interna<br>
4. Client source: 192.168.1.10-192.168.1.11<br>
5. Target Rules: blk_download --> allow<br>
6. Description: Permite download rede ti

Proxy Autenticado<br>
1. Services, Squid , Authentication<br>
2. Users: três usuários<br>
3. Services, Squid Guardian, Groups ACL<br>
4. Name: ACL_Funcionarios<br>
5. Client source: 'vaamonde' 'robson'<br>
6. Target Rules: ????<br>
7. Redirect mode: int error page<br>
8. Redirect: Download proibido<br>
9. Description: Bloqueio de download por extensão

IPSec (IP Security Protocol - SSL/TLS - strongSwan);<br>
L2TP (Protocolo de Tunelamento de Camada 2);<br>
PPTP (Protocolo de Tunelamento Ponto-a-Ponto).<br>
OPenVPN (Cliente Servidor)

VPN Site-to-Site<br>
1. Reset do pfSense;<br>
2. Reconfigurar as interfaces do pfSense;<br>
3. Reconfigurar o hostname;<br>
4. Desativar as redes Bogon

pf-Matriz<br>
1. VPN, OpenVPN<br>
2. Server, Add<br>
3. Server mode: Peer-to-Peer (shared key)<br>
4. Description: VPN-Matriz-Filial<br>
5. Shared Key<br>
6. Encryption Algorithm: AES-256-CBC (256-bit)<br>
7. Auth digest algorithm: SHA256 (256-bit)<br>
8. IPv4 Tunnel Network: 172.16.10.0/30 (rede da vpn)<br>
9. IPv4 Remote netowrk(s): 192.168.2.0/24 (rede filial)<br>
10. Salvar e voltar novamente nas configurações: (Copiar a chave)

pf-Filial<br>
1. VPN, OpenVPN<br>
2. Clients, Add<br>
3. Server mode: Peer-to-Peer (shared key)<br>
4. Server host or address: 10.26.46.xxx (Matriz)<br>
5. Description: VPN-Filial-Matriz<br>
6. Auto generate: Disable (desmarcar)<br>
7. Shared key: Paste (colar a chave)<br>
8. Encryption Algorithm: AES-256-CBC (256-bit)<br>
9. Auth digest algorithm: SHA256 (256-bit)<br>
10. IPv4 Tunnel Network: 172.16.10.0/30 (rede da vpn)<br>
11. IPv4 Remote netowrk(s): 192.168.1.0/24 (rede matriz)<br>
12. Salvar

pf-Matriz<br>
1. Firewall, Alias, Add;<br>
2. Name: wan_pf_filial<br>
3. Description: Rede VPN<br>
4. Type: Host<br>
5. Network 10.26.46.xxx (IP pf-Sense Filial) - Rede VPN

6. Firewall, Rules, Wan, Add<br>
7. Protocol: UDP<br>
8. Source: Single host or alias: rede_vpn<br>
9. Destination: WAN Address<br>
10. Destination port range: OpenVPN (1194)<br>
11. Log: Enable<br>
12. Description: Rede VPN<br>
13. Status: OpenVPN (UP)


14. Firewall, Alias, Add;<br>
15. Name: lan_pf_filial<br>
16. Type: Network: 	192.168.2.0/24 LAN Filial<br>
					172.16.10.0/30 LAN VPN

17. Firewall, OpenVPN, Add<br>
18. Protocol: Any<br>
19. Source: Single host: lan_pf_filial<br>
20. Destination: Any<br>
21. Log: Enable<br>
22. Description: Rede pf-Filial

OpenVPN - Remote Access

1. Precisa da CA Interna e Certificado<br>
2. Server Certificate<br>
3. Criar usuários, System, User Manager;<br>
4. Username: vaamonde<br>
5. Password: 123@senac<br>
6. Full Name: Robson Vaamonde<br>
7. Certificate: Enable (habilitar)<br>
8. Descriptive name: vaamonde<br>
9. Salvar

1. Criar pacote de exportação, System, Package Manager;<br>
2. Avaliable Packages<br>
3. OpenVPN-Client-Export, install<br>
4. VPN, OpenVPN, Wizard<br>
5. Typer of Server: Local User Access<br>
6. Certificate Authority: ca-pfsense<br>
7. Certificate: pfsense<br>
8. Description: VPN Remote-Access<br>
9. Auth Digest Algorithm: SHA256 (256-bit)<br>
10. Tunnel Network: 172.16.10.0/24 (VPN)<br>
11. Local Network: 192.168.1.0/24 (LAN)<br>
12. Concurrent Connections: 10<br>
13. Firewall Rule: Enable (habilitar)<br>
14. OpenVPN Rule: Enable (habilitar)

15. VPN, OpenVPN, Client Export<br>
16. Exportar executavél para Windows e GNU/Linux<br>
17. Testar no GNU/Linux Mint<br>
