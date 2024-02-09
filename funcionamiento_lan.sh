#!/bin/bash
rojo="\e[31m"
verde="\e[32m"
amarillo="\e[33m"
fin="\e[0m"
echo -e "${amarillo}Comprobando Ping a DMZ. ${fin}"
ping -c 2 192.168.111.1
if [ $? == 0 ]
        then
                echo -e "${verde}Ping dentro de la red funcionando. ${fin}"
        else
                echo -e "${rojo}Algo está fallando en las reglas del firewall. ${fin}"
fi
echo -e "${amarillo}Comprobando Ping al exterior. ${fin}"
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
nc -zv www.google.com 80
if [ $? == 0 ]
        then
                echo -e "${verde}Solicitudes HTTP funcionando correctamente. ${fin}"
        else
                echo -e "${rojo}Algo está fallando en las reglas del firewall. ${fin}"
fi
echo -e "${amarillo}Comprobando solicitudes HTTPS. ${fin}"
nc -zv www.google.com 443
if [ $? == 0 ]
        then
                echo -e "${verde}Solicitudes HTTPS funcionando correctamente. ${fin}"
        else
                echo -e "${rojo}Algo está fallando en las reglas del firewall. ${fin}"
fi
