rojo="\e[31m"
verde="\e[32m"
amarillo="\e[33m"
fin="\e[0m"
echo "${amarillo}Comprobando Ping a Google desde fachada.${fin}"
ping -c1 8.8.8.8
if [ $? == 0 ]
  then
    echo "${verde}Ping a Google desde fachada funcionando correctamente.${fin}"
  else
    echo "${rojo}Ha ocurrido un error con el ping a Google.${fin}"
fi
echo "${amarillo}Comprobando consultas DNS desde FACHADA.${fin}"
nslookup google.com
if [ $? == 0 ]
  then
    echo "${verde}Consultas DNS desde FACHADA funcionando correctamente.${fin}"
  else
    echo "${rojo}Ha ocurrido un error con las consultas a DNS desde FACHADA.${fin}"
fi
