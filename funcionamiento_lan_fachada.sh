sudo nft flush ruleset

echo "Comprobando ping a FACHADA desde LAN."
ping -c1 192.168.33.1
if [ $? == 0 ]
  then
    echo "Ping a FACHADA desde LAN funcionando correctamente."
  else
    echo "Ha ocurrido un error con el ping a FACHADA."
fi
echo "Comprobando consultas DNS desde LAN a través de FACHADA."
nslookup google.com
if [ $? == 0 ]
  then
    echo "Consultas DNS desde LAN a través de FACHADA funcionando correctamente."
  else
    echo "Ha ocurrido un error con las consultas a DNS desde LAN a través de FACHADA."
fi
echo "Comprobando ping a DMZ desde LAN."
ping -c1 192.168.111.2
if [ $? == 0 ]
  then
    echo "Ping a DMZ desde LAN funcionando correctamente."
  else
    echo "Ha ocurrido un error con el ping a DMZ."
fi
