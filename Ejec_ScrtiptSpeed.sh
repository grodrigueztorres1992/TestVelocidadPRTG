#!/bin/bash

veri=$(python3 /var/prtg/scriptxml/TestVelocidad.py | awk '{print $2}')
veri1=$(python3 /var/prtg/scriptxml/TestPing.py | awk '{print $2}')


echo "<?xml version='1.0' enconding='windows-1252' ?>"
echo "<prtg>"
echo "   <result>"
echo "                   <channel>Velocidad Descarga</channel>"
echo "                                   <value>$veri</value>"
echo "   </result>"
echo "   <result>"
echo "                   <channel>Ping MS</channel>"
echo "                                   <value>$veri1</value>"
echo "   </result>"
#echo "<text></text>"
echo "</prtg>"
