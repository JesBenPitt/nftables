echo "Comprobando Ping a Google desde fachada."
ping -c1 8.8.8.8
if [ $? == 0 ]
  then
    echo "Ping a Google desde fachada funcionando correctamente."
  else
    echo "Ha ocurrido un error con el ping a Google."
fi
echo "Comprobando ping a LAN desde FACHADA."
ping -c1 192.168.33.1
if [ $? == 0 ]
  then
    echo "Ping a LAN desde FACHADA funcionando correctamente."
  else
    echo "Ha ocurrido un error con el ping a LAN."
fi
echo "Comprobando ping a DMZ desde FACHADA."
ping -c1 192.168.111.1
if [ $? == 0 ]
  then
    echo "Ping a LAN desde FACHADA funcionando correctamente."
  else
    echo "Ha ocurrido un error con el ping a LAN."
fi
echo "Comprobando consultas DNS desde FACHADA."
nslookup google.com
if [ $? == 0 ]
  then
    echo "Consultas DNS desde FACHADA funcionando correctamente."
  else
    echo "Ha ocurrido un error con las consultas a DNS desde FACHADA."
fi
