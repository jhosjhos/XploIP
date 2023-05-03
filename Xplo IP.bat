@echo off
::--Interfaz----
COLOR 0A
::mode con cols=96 lines=35
::--------Menu Principal------------
:menu
    cls
echo.  
echo.  
echo. 
echo.  
echo.   
echo.      
echo.   
echo.  
echo.  
echo.   
echo.                   /$$   /$$         /$$        /$$$$$$/$$$$$$$ 
echo.                  l $$  / $$        l $$       l_  $$_l $$__  $$
echo.                  l  $$/ $$/ /$$$$$$l $$ /$$$$$$ l $$ l $$  \ $$
echo.                   \  $$$$/ /$$__  $l $$/$$__  $$l $$ l $$$$$$$/ 
echo.                   l $$ $$   $$  \ $l $l $$  \ $$l $$ l $$____/                    
echo.                   /$$/\  $l $$  l $l $l $$    $$l $$ l $$                         
echo.                  l $$  \ $l $$$$$$$l $l  $$$$$$/$$$$$l $$                         
echo.                  l__/  l__l $$____/l__/\______l______l__/                         
echo.                           l $$                                                      
echo.                           l $$                 1.- Ethernet                                    
echo.                           l__/                 2.- Wi-Fi 
echo.                                                3.- IP Static/DHCP Manual                              
echo.                                                9.- salir            
echo.
echo.
    set /P Opc=
 
    IF "%Opc%"    ==  "9"  goto :EOF
    IF "%Opc%"    ==  "readme"  goto red
    IF "%Opc%"    ==  "3"  goto manual
    IF "%Opc%"    ==  "2"  goto M_Wi
    IF "%Opc%"    ==  "1"  goto M_Eth
                           goto:menu

::--------IP Static/DHCP Manual---------------
:manual
cls
title IP Static Manual
 echo.   
 echo.   
 echo.    /$$   /$$         /$$        /$$$$$$/$$$$$$$ 
 echo.   l $$  / $$        l $$       l_  $$_l $$__  $$
 echo.   l  $$/ $$/ /$$$$$$l $$ /$$$$$$ l $$ l $$  \ $$
 echo.    \  $$$$/ /$$__  $l $$/$$__  $$l $$ l $$$$$$$/ 
 echo.    l $$ $$   $$  \ $l $l $$  \ $$l $$ l $$____/                    
 echo.    /$$/\  $l $$  l $l $l $$    $$l $$ l $$                         
 echo.   l $$  \ $l $$$$$$$l $l  $$$$$$/$$$$$l $$                         
 echo.   l__/  l__l $$____/l__/\______l______l__/                         
 echo.            l $$                                                      
 echo.            l $$                                                     
 echo.            l__/                                              
 echo.
 echo.
 echo.
     set/p redd= Escribe el nombre de que tiene la propiedad de tu red:
     ::-----IF IP----------
     if not defined redd (
      echo Por favor, ingrese el nombre de red.
      pause >null
      goto :manual
      )
     ::---------------------
     echo.
     set/p ip= Escribe tu direccion IP: 
     ::-----IF IP----------
     if not defined ip (
      echo Por favor, ingrese la direccion IP.
      pause >null
      goto :manual
      )
     ::---------------------
     echo. 
     set/p mask= Escribe tu Mascara:
     ::-----IF IP----------
     if not defined mask (
      echo Por favor, ingrese la mascara de subred .
      pause >null
      goto :manual
      )
     ::---------------------
     echo.                                  
     set/p pre= Escribe tu direccion Predeterminada:
     ::-----IF IP----------
     if not defined pre (
      echo Por favor, ingrese la direccion Predeterminada.
      pause >null 
      goto :manual
      )
     ::---------------------
     echo. 
     set/p dns1= EScribe tu DNS Preferido:
     ::-----IF IP----------
     if not defined dns1 (
      echo Por favor, ingrese una DNS.
      pause >null 
      goto :manual
      )
     ::---------------------
     echo.
     set/p dns2= Escribe tu DNS Alternativo:
     ::-----IF IP----------
     if not defined dns2 (
      echo Por favor, ingrese una DNS.
      pause >null 
      goto :manual
      )
     ::---------------------
     echo.
cls
 netsh interface ipv4 set address name="%redd%" source=static address=%ip% mask=%mask% gateway=%pre%
 netsh interface ipv4 add dnsserver name="%redd%" address=%dns1% index=1
 netsh interface ipv4 add dnsserver name="%redd%" address=%dns2% index=2  
echo.
echo.    /$$   /$$         /$$        /$$$$$$/$$$$$$$       1.- Probar IPConfig
echo.   l $$  / $$        l $$       l_  $$_l $$__  $$      2.- Volver Intentar
echo.   l  $$/ $$/ /$$$$$$l $$ /$$$$$$ l $$ l $$  \ $$   
echo.    \  $$$$/ /$$__  $l $$/$$__  $$l $$ l $$$$$$$/         8.- menu
echo.    l $$ $$   $$  \ $l $l $$  \ $$l $$ l $$____/          9.- salir
echo.    /$$/\  $l $$  l $l $l $$    $$l $$ l $$                         
 echo.   l $$  \ $l $$$$$$$l $l  $$$$$$/$$$$$l $$                         
 echo.   l__/  l__l $$____/l__/\______l______l__/                         
 echo.            l $$                                                      
 echo.            l $$                                                     
 echo.            l__/                                              
 echo.
set /P Opc=
 
    IF "%Opc%"    ==  "9"  goto :EOF
    IF "%Opc%"    ==  "8"  goto:menu
    IF "%Opc%"    ==  "2"  goto:manual
    IF "%Opc%"    ==  "1"  goto ping
                           
pause >null
goto :menu
::------PING--------
:ping
cls 
  ipconfig/all  
 echo.   
 echo.    /$$   /$$         /$$        /$$$$$$/$$$$$$$ 
 echo.   l $$  / $$        l $$       l_  $$_l $$__  $$
 echo.   l  $$/ $$/ /$$$$$$l $$ /$$$$$$ l $$ l $$  \ $$
 echo.    \  $$$$/ /$$__  $l $$/$$__  $$l $$ l $$$$$$$/ 
 echo.    l $$ $$   $$  \ $l $l $$  \ $$l $$ l $$____/                    
 echo.    /$$/\  $l $$  l $l $l $$    $$l $$ l $$                         
 echo.   l $$  \ $l $$$$$$$l $l  $$$$$$/$$$$$l $$                         
 echo.   l__/  l__l $$____/l__/\______l______l__/                         
 echo.            l $$                                                      
 echo.            l $$                                                     
 echo.            l__/                                              
 echo.
 echo.
 pause 
 goto :menu

::--------Menu Ethernet-----------
:M_Eth
    cls
echo.   
echo.   
echo.    /$$   /$$         /$$        /$$$$$$/$$$$$$$ 
echo.   l $$  / $$        l $$       l_  $$_l $$__  $$
echo.   l  $$/ $$/ /$$$$$$l $$ /$$$$$$ l $$ l $$  \ $$
echo.    \  $$$$/ /$$__  $l $$/$$__  $$l $$ l $$$$$$$/ 
echo.    l $$ $$   $$  \ $l $l $$  \ $$l $$ l $$____/                    
echo.    /$$/\  $l $$  l $l $l $$    $$l $$ l $$                         
echo.   l $$  \ $l $$$$$$$l $l  $$$$$$/$$$$$l $$                         
echo.   l__/  l__l $$____/l__/\______l______l__/                         
echo.            l $$                                                      
echo.            l $$                                                     
echo.            l__/                                              
echo.                                                           
echo.                                  Usuarios Ethernet    
echo.                                  
echo.                                  
echo.                                            1.- MV
echo.                                            2.- Rest
echo. 
echo.                                            8.- atras
echo.                                            9.- salir
echo.
echo.     
echo.     
echo.
    set /P Opc=
 
    IF "%Opc%"    ==  "9"  goto :EOF
    IF "%Opc%"    ==  "8"  goto :menu
    IF "%Opc%"    ==  "2"  goto res
    IF "%Opc%"    ==  "1"  goto mv
                           goto:M_Eth
::----------Variables ETHERNET-------------   
::---MV-----                   
:mv
@echo off
cls
netsh interface ipv4 set address name="Ethernet" source=static address=172.16.6.44 mask=255.255.255.0 gateway=172.16.6.254
netsh interface ipv4 add dnsserver name="Ethernet" address=172.30.1.21 index=1
netsh interface ipv4 add dnsserver name="Ethernet" address=172.28.1.20 index=2
ipconfig
echo.
echo.
echo. Listo :)
echo.
echo.
pause
goto :menu
::----REST---
:res
@echo off
cls
netsh int ip set address name="Ethernet" source=dhcp
netsh interface ipv4 set dnsserver name="Ethernet" source=dhcp
::netsh int ip show config
ipconfig
echo.
echo.
echo. Listo :)
echo.
echo.
pause
goto :menu
::--------------------------------------------------------------


::--------Menu WI-FI-----------
:M_Wi
    cls
echo.   
echo.   
echo.    /$$   /$$         /$$        /$$$$$$/$$$$$$$ 
echo.   l $$  / $$        l $$       l_  $$_l $$__  $$
echo.   l  $$/ $$/ /$$$$$$l $$ /$$$$$$ l $$ l $$  \ $$
echo.    \  $$$$/ /$$__  $l $$/$$__  $$l $$ l $$$$$$$/ 
echo.    l $$ $$   $$  \ $l $l $$  \ $$l $$ l $$____/                    
echo.    /$$/\  $l $$  l $l $l $$    $$l $$ l $$                         
echo.   l $$  \ $l $$$$$$$l $l  $$$$$$/$$$$$l $$                         
echo.   l__/  l__l $$____/l__/\______l______l__/                         
echo.            l $$                                                      
echo.            l $$                                                     
echo.            l__/                                              
echo.                                                           
echo.                                  Usuarios Wi-Fi    
echo.                                  
echo.                                  
echo.                                            1.- MM
echo.                                            2.- SE
echo.                                            3.- RL
echo.                                            4.- LI
echo.                                            5.- GB
echo.                                            6.- Rest
echo.
echo.                                            8.- atras
echo.                                            9.- salir
echo.
echo.     
echo.     
echo.
    set /P Opc=
 
    IF "%Opc%"    ==  "9"  goto :EOF
    IF "%Opc%"    ==  "8"  goto :menu
    IF "%Opc%"    ==  "6"  goto res_w
    IF "%Opc%"    ==  "5"  goto gb
    IF "%Opc%"    ==  "4"  goto li
    IF "%Opc%"    ==  "3"  goto rl
    IF "%Opc%"    ==  "2"  goto se
    IF "%Opc%"    ==  "1"  goto mm
                           goto:M_Wi
::-------------------------------

::----------Variables Wi-Fi---------------------------
::----Moni-----  
:mm
@echo off
cls
netsh interface ipv4 set address name="Wi-Fi" source=static address=172.16.8.52 mask=255.255.255.0 gateway=172.16.8.254
netsh interface ipv4 add dnsserver name="Wi-Fi" address=172.30.1.21 index=1
netsh interface ipv4 add dnsserver name="Wi-Fi" address=172.28.1.20 index=2
ipconfig
echo.
echo.
echo. Listo :)
echo.
echo.
pause
goto :menu
::------Serg-----
:se
@echo off
cls
netsh interface ipv4 set address name="Wi-Fi" source=static address=172.16.8.50 mask=255.255.255.0 gateway=172.16.8.254
netsh interface ipv4 add dnsserver name="Wi-Fi" address=172.30.1.21 index=1
netsh interface ipv4 add dnsserver name="Wi-Fi" address=172.28.1.20 index=2
ipconfig
echo.
echo.
echo. Listo :)
echo.
echo.
pause
goto :menu
::----Linda------
:rl
@echo off
cls
netsh interface ipv4 set address name="Wi-Fi" source=static address=172.16.8.42 mask=255.255.255.0 gateway=172.16.8.254
netsh interface ipv4 add dnsserver name="Wi-Fi" address=172.30.1.21 index=1
netsh interface ipv4 add dnsserver name="Wi-Fi" address=172.28.1.20 index=2
ipconfig
echo.
echo.
echo. Listo :)
echo.
echo.
pause
goto :menu
::-----lili-------
:li
@echo off
cls
netsh interface ipv4 set address name="Wi-Fi" source=static address=172.16.8.124 mask=255.255.255.0 gateway=172.16.8.254
netsh interface ipv4 add dnsserver name="Wi-Fi" address=172.30.1.21 index=1
netsh interface ipv4 add dnsserver name="Wi-Fi" address=172.28.1.20 index=2
ipconfig
echo.
echo.
echo. Listo :)
echo.
echo.
pause
goto :menu
::-----gabo------
:gb
@echo off
cls
netsh interface ipv4 set address name="Wi-Fi" source=static address=172.16.8.123 mask=255.255.255.0 gateway=172.16.8.254
netsh interface ipv4 add dnsserver name="Wi-Fi" address=172.30.1.21 index=1
netsh interface ipv4 add dnsserver name="Wi-Fi" address=172.28.1.20 index=2
ipconfig
echo.
echo.
echo. Listo :)
echo.
echo.
pause
goto :menu
::----REST---
:res_w
@echo off
cls
netsh int ip set address name="Wi-Fi" source=dhcp
netsh interface ipv4 set dnsserver name="Wi-Fi" source=dhcp
::netsh int ip show config
ipconfig
echo.
echo.
echo. Listo :)
echo.
echo.
pause
goto :menu
::------------------------------------------------------------------

::----------README-------------------------
:red
@echo off
::mode con cols=95 lines=50
cls
echo.
echo.**********************************************************************************************
echo.*                                                                                            *
echo.*   __/\\\________/\\\__/\\\________/\\\__/\\\_______/\\\_____/\\\\\\\\\\\___                *
echo.*    _\///\\\____/\\\/__\/\\\_______\/\\\_\///\\\___/\\\/____/\\\/////////\\\_               *
echo.*     ___\///\\\/\\\/____\/\\\_______\/\\\___\///\\\\\\/_____\//\\\______\///__              *
echo.*      _____\///\\\/______\/\\\\\\\\\\\\\\\_____\//\\\\________\////\\\_________             *
echo.*       _______\/\\\_______\/\\\/////////\\\______\/\\\\___________\////\\\______            *
echo.*        _______\/\\\_______\/\\\_______\/\\\______/\\\\\\_____________\////\\\___           *
echo.*         _______\/\\\_______\/\\\_______\/\\\____/\\\////\\\____/\\\______\//\\\__          *
echo.*          _______\/\\\_______\/\\\_______\/\\\__/\\\/___\///\\\_\///\\\\\\\\\\\/___         *
echo.*           _______\///________\///________\///__\///_______\///____\///////////_____        *
echo.*                                                                                            *
echo.*                      SCRIPT PARA CAMBIO DE IPS estatica y DHCP                             *
echo.*                                                                                            *
echo.*              *Versiones*                                                                   *
echo.*                                                                                            *
echo.*           +Update 1.0                                                                      *
echo.*            27-04-2023 - Actualizado hasta Tpz 1 (Faltante TPZ 2)                           *
echo.*                       - Implementado Rest (Lo deja DHCP)                                   *
echo.*                       - Navegacion funcionale (regreso y salida)                           *
echo.*                                                                                            *
echo.*           +Update 1.1                                                                      *
echo.*            28-04-2023  - Mejora en la interface                                            *
echo.*                        - Formulario IP Statica Manual cualquier red                        *
echo.*                                                                                            *
echo.*               *Feedback*                                                                   *
echo.*                    -Recopilar los datos ethernet de TPZ 1 y 2                              *
echo.*                    -Crear una recopilacion de los usuarios de todas las sucursales         *
echo.*                    -Reparar el bug de escoge el segundo menu la primera opcion que hayas   *
echo.*                       elegido primero.                                                     *
echo.*                    -Corregir el error de formulario (No se puede corregir cuando ingresas  *
echo.*                       datos, y borra todo)                                                 *
echo.*                                                                                            *
echo.**********************************************************************************************
pause
goto :menu