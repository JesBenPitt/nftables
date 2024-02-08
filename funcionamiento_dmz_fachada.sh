echo "Comprobando ping a DMZ desde FACHADA."
ping -c1 192.168.111.1
if [ $? == 0 ]
  then
    echo "Ping a LAN desde FACHADA funcionando correctamente."
  else
    echo "Ha ocurrido un error con el ping a LAN."
fi
echo "Comprobando consultas DNS desde FACHADA."
