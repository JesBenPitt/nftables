echo "Comprobando ping a FACHADA desde DMZ."
ping -c1 192.168.111.1
if [ $? == 0 ]
  then
    echo "Ping a FACHADA desde DMZ funcionando correctamente."
  else
    echo "Ha ocurrido un error con el ping a FACHADA."
fi
echo "Comprobando consultas DNS desde DMZ a través de FACHADA."
nslookup google.com
if [ $? == 0 ]
  then
    echo "Consultas DNS desde DMZ a través de FACHADA funcionando correctamente."
  else
    echo "Ha ocurrido un error con las consultas a DNS desde DMZ a través de FACHADA."
fi
