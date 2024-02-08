sudo nft flush ruleset

rojo="\e[31m"
verde="\e[32m"
amarillo="\e[33m"
fin="\e[0m"
echo "${amarillo}Comprobando ping a FACHADA desde DMZ.${fin}"
ping -c1 192.168.111.1
if [ $? == 0 ]
  then
    echo "${verde}Ping a FACHADA desde DMZ funcionando correctamente.${fin}"
  else
    echo "${rojo}Ha ocurrido un error con el ping a FACHADA.${fin}"
fi
echo "${amarillo}Comprobando consultas DNS desde DMZ a través de FACHADA.${fin}"
nslookup google.com
if [ $? == 0 ]
  then
    echo "${verde}Consultas DNS desde DMZ a través de FACHADA funcionando correctamente.${fin}"
  else
    echo "${rojo}Ha ocurrido un error con las consultas a DNS desde DMZ a través de FACHADA.${fin}"
fi
echo "${amarillo}Comprobando ping a LAN desde DMZ.${fin}"
ping -c1 192.168.33.1
if [ $? == 0 ]
  then
    echo "${verde}Ping a LAn desde DMZ funcionando correctamente.${fin}"
  else
    echo "${rojo}Ha ocurrido un error con el ping a LAN.${fin}"
fi
