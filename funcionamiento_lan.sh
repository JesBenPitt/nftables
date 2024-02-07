#!/bin/bash
rojo="\e[31m"
verde="\e[32m"
amarillo="\e[33m"
fin="\e[0m"
echo -e "${amarillo}Comprobando Ping a un equipo de lan... ${fin}"
ping -c 2 192.168.111.2
if [ $? == 0 ]
        then
                echo -e "${verde}Ping dentro de la red funcionando. ${fin}"
        else
                echo -e "${rojo}Algo está fallando en las reglas del firewall. ${fin}"
fi
echo -e "${amarillo}Comprobando Ping al exterior... ${fin}"
ping -c 2 google.com
if [ $? == 0 ]
        then
                echo -e "${verde}Ping al exterior de la red funcionando. ${fin}"
        else
                echo -e "${rojo}Algo está fallando en las reglas del firewall. ${fin}"
fi
echo -e "${amarillo}Comprobando solicitudes DNS. ${fin}"
nslookup google.com
if [ $? == 0 ]
        then
                echo -e "${verde}Solicitudes DNS funcionando correctamente. ${fin}"
        else
                echo -e "${rojo}Algo está fallando en las reglas del firewall. ${fin}"
fi
echo -e "${amarillo}Comprobando solicitudes HTTP. ${fin}"
curl http://google.com
if [ $? == 0 ]
        then
                echo -e "${verde}Solicitudes HTTP funcionando correctamente. ${fin}"
        else
                echo -e "$(tput setaf 1)Algo está fallando en las reglas del firewall. ${fin}"
fi
echo -e "${amarillo}Comprobando solicitudes HTTPS. ${fin}"
curl https://google.com
if [ $? == 0 ]
        then
                echo -e "${verde}Solicitudes HTTPS funcionando correctamente. ${fin}"
        else
                echo -e "${rojo}Algo está fallando en las reglas del firewall. ${fin}"
fi
