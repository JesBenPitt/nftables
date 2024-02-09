sudo nft flush ruleset

rojo="\e[31m"
verde="\e[32m"
amarillo="\e[33m"
fin="\e[0m"
echo -e "${amarillo}Comprobando ping a FACHADA desde LAN.${fin}"
ping -c1 192.168.33.1
if [ $? == 0 ]
  then
    echo -e "${verde}Ping a FACHADA desde LAN funcionando correctamente.${fin}"
  else
    echo -e "${rojo}Ha ocurrido un error con el ping a FACHADA.${fin}"
fi
echo -e "${amarillo}Comprobando consultas DNS desde LAN a través de FACHADA.${fin}"
nslookup google.com
if [ $? == 0 ]
  then
    echo -e "${verde}Consultas DNS desde LAN a través de FACHADA funcionando correctamente.${fin}"
  else
    echo -e "${rojo}Ha ocurrido un error con las consultas a DNS desde LAN a través de FACHADA.${fin}"
fi
echo -e "${amarillo}Comprobando ping a DMZ desde LAN.${fin}"
ping -c1 192.168.111.2
if [ $? == 0 ]
  then
    echo -e "${verde}Ping a DMZ desde LAN funcionando correctamente.${fin}"
  else
    echo -e "${rojo}Ha ocurrido un error con el ping a DMZ.${fin}"
fi
echo -e "${amarillo}Comprobando solicitudes HTTP desde LAN.${fin}"
nc -zv www.google.com 80
if [ $? == 0 ]
  then
    echo -e "${verde}PSolicitudes HTTP desde LAN funcionando correctamente.${fin}"
  else
    echo -e "${rojo}Ha ocurrido un error con las peticiones HTTP.${fin}"
fi
echo -e "${amarillo}Comprobando solicitudes HTTPA desde LAN.${fin}"
nc -zv www.google.com 443
if [ $? == 0 ]
  then
    echo -e "${verde}PSolicitudes HTTP desde LAN funcionando correctamente.${fin}"
  else
    echo -e "${rojo}Ha ocurrido un error con las peticiones HTTPS.${fin}"
fi
