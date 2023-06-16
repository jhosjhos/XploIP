@echo off
::--Interfaz----
COLOR 0A
::mode con cols=96 lines=35
::--------Menu Principal------------
:menu
    cls
echo.  
echo.                                            Nota: Recuerda ejecutar este 
echo.                                                  Script como ADMINISTRADOR
echo.                                                  o NO funcionara.
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
echo.                           l $$                 1.- Directorio Ethernet                                    
echo.                           l__/                 2.- Directorio Wi-Fi 
echo.                                                3.- IP Static Manual 
echo.                                                4.- Establecer DHCP
echo.
echo.                                                  7.- readme
echo.                                                  8.- changelog                             
echo.                                                  9.- salir            
echo.
echo.
    set /P Opc=
 
    IF "%Opc%"    ==  "9"  goto :EOF
    IF "%Opc%"    ==  "8"  goto change
    IF "%Opc%"    ==  "7"  goto readme
    IF "%Opc%"    ==  "4"  goto establecer
    IF "%Opc%"    ==  "3"  goto manual
    IF "%Opc%"    ==  "2"  goto M_Wi
    IF "%Opc%"    ==  "1"  goto M_Eth
                           goto:menu

::--------Directorio Ethernet-----------
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
echo.                                            1.- Usuario Uno
echo.                                            2.- Usuario Dos
echo.                                            3.- Usuario Tres
echo.                                            4.- Usuario Cuatro
echo.                                            5.- Usuario Cinco
echo.                                            6.- Restablecer Predeterminada
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
    IF "%Opc%"    ==  "6"  goto e_res
    IF "%Opc%"    ==  "5"  goto e_cinco
    IF "%Opc%"    ==  "4"  goto e_cuatro
    IF "%Opc%"    ==  "3"  goto e_tres
    IF "%Opc%"    ==  "2"  goto e_dos
    IF "%Opc%"    ==  "1"  goto e_uno
                           goto:M_Eth
::----------Variables ETHERNET-------------  
::----Usuario uno-----  
:e_uno
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
::------Usuario dos-----
:e_dos
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
::----Usuario tres------
:e_tres
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
::-----Usuario cuatro-------
:e_cuatro
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
::-----Usuario cinco------
:e_cinco
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
::----Restablecer Predeterminada--------
:e_res
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

::------------------------------------------------------------------------------------------- 

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
echo.                                            1.- Usuario Uno
echo.                                            2.- Usuario Dos
echo.                                            3.- Usuario Tres
echo.                                            4.- Usuario Cuatro
echo.                                            5.- Usuario Cinco
echo.                                            6.- Restablecer Predeterminada
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
    IF "%Opc%"    ==  "6"  goto w_res
    IF "%Opc%"    ==  "5"  goto w_cinco
    IF "%Opc%"    ==  "4"  goto w_cuatro
    IF "%Opc%"    ==  "3"  goto w_tres
    IF "%Opc%"    ==  "2"  goto w_dos
    IF "%Opc%"    ==  "1"  goto w_uno
                           goto:M_Wi
::-------------------------------

::----------Variables Wi-Fi---------------------------
::----Usuario uno-----  
:w_uno
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
::------Usuario dos-----
:w_dos
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
::----Usuario tres------
:w_tres
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
::-----Usuario cuatro-------
:w_cuatro
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
::-----Usuario cinco------
:w_cinco
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
::----Restablecer Predeterminada--------
:w_res
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

::-------------------------------------------------------------------------------------------
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
::--------------------------------------------------------------

::--------------Restablecer Predeterminada----------------------
:establecer
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
echo.                                  Establecer DHCP
echo.                                  
echo.                                  
echo.                                            1.- DHCP Ethernet
echo.                                            2.- DHCP Wi-Fi
echo. 
echo.                                            8.- atras
echo.
echo.
    set /P Opc=
 
    IF "%Opc%"    ==  "8"  goto :menu
    IF "%Opc%"    ==  "2"  goto ee
    IF "%Opc%"    ==  "1"  goto ew
                           goto:restablecer

::----Variables restablecer--------------
::--------------------------------------------------------------
:ew
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
::--------------------------------------------------------------
:ee
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






::----------README----------------------------
:readme
@echo off
start https://github.com/jhosjhos/XploIP/tree/viewer#readme
goto :menu
::----------CHANGELOG-------------------------
:change
@echo off
start https://github.com/jhosjhos/XploIP/blob/viewer/changelog
goto :menu
