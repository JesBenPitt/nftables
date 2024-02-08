echo "Comprobando Ping a Google desde fachada."
ping -c1 8.8.8.8
if [ $? == 0 ]
  then
    echo "Ping a Google desde fachada funcionando correctamente."
  else
    echo "Ha ocurrido un error con el ping a Google."
fi
echo "Comprobando consultas DNS desde FACHADA."
nslookup google.com
if [ $? == 0 ]
  then
    echo "Consultas DNS desde FACHADA funcionando correctamente."
  else
    echo "Ha ocurrido un error con las consultas a DNS desde FACHADA."
fi
