# Readme
Este programa se creó con el fin de tener un directorio de IP´s disponibles en un clic, poder generar un cambio o restablecer las redes que tenías anteriormente, el sustituir tus direcciones sin tener la complicación de entrar a las herramientas de Windows y cambiar cada una manual.  Me encuentro muy feliz por el resultado y espero si tu utilizas esta herramienta también lo agradezcas :) 

## Caso de Uso
Este script fue desarrollo para el entorno de **Soporte TI** 
- Es muy común en el rol cambiar de IP para poder **realizar pruebas o configurar red de usuarios finales.**
-  Su uso puede ser en un entorno de **trabajo o personal**, si usas el mismo dispositivo de trabajo y personal, una forma práctica y rápida para cambiar de dirección sin entrar a la configuración de Windows.

## ¿Como se utiliza?
Es muy sencillo de utilizar ya que tiene una interfaz directa. En el menú su encuentran las opciones disponibles para su funcionamiento.
>IMPORTANTE!!
>Recuerda **EJECUTAR** el script **como ADMINISTRADOR o NO funcionara.**

### 1.-Directorio Ethernet y 2.-Directorio WI-FI
Esta función es el **Directorio** de nuestras direcciones que vamos a llenar con las requisiciones que requiramos. 
  
- Una vez entremos a esta opción **(1.- Directorio Ethernet o 2.- Directorio Wi-Fi)** solamente es escoger el número que tenemos asignado y el script nos pondrá la IP que asignamos. 

>El script tira un **ipconfig** para confirmar que la **IP** que tienes, sea la que cambiaste.

Desgraciadamente aun **NO puede** implementar **llenar el directorio desde el script**, así que **tendremos que hacerlo manualmente**, si no lo entiendes **te explico aquí** como:

#### Agregar Direcciones al Directorio Wi-Fi y Ethernet

1. Abrimos nuestro **IDE** o **Editor de Texto** favorito.
2. Abrimos el archivo **"XploIP"** para poder editarlo.
3. Nos dirigiremos al **comentario** **Variables Wi-Fi** *(Aproximadamente está en la línea 280)* y **Variables ETHERNET** *(Aproximadamente está en la línea 200)*.
4. Cada dirección se encuentra dividida por un comentario como **"::---Usuario uno---"** solamente vamos a cambiar los *siguientes parámetros en el siguiente comando:* **"interface ipv4 set address"** 
5. **"name"** Este es el nombre que tiene tu adaptador de red Wi-Fi o Ethernet.  (Predeterminado es: **name="Wi-Fi"** y **name="Ethernet"**).
6. **"address"** Esta es la direccion IP que vas a colocar con este usuario.
7. **"mask"** Aquí colocaras la máscara que tiene tu red.
8. **"gateway"** Recuerda que es la **puerta de enlace predeterminada**, asi que en esta parte la colocas.
9. Ahora **vamos a configurar las** direcciones de los **DNS**
>**¡¡NOTA!!** Recuerda que solamente hemos configurado el comando del **Punto 4**.
>**No confundir con las 2 líneas siguiente** que veremos a continuación o no te funcionara el comando. 
10. La linea siguiente es: **"interface ipv4 add dnsserver"** esta configura la DNS.
11. Vamos a **"name"** *retomando el **punto 5** con el llenado de esta*.
12. **"address"** aquí **pondremos** la **dirección** de los **DNS** que tenemos configurados en la red.
13. **"index"** Es el **numero** de la **DNS** que estamos colocando. *(Como tenemos solamente 2 DNS, Por esa razón tenemos **"index=1 & index=2"**)*. Colocamos en la **"index=1** nuestra **primera dirección DNS**. y colocamos nuevamente en la **"index=2** nuestra **segunda dirección DNS**.
14. Guardamos y es todo. **¡NOTA!** *Tendrás que repetir esto con cada una de las direcciones que quieras registrar*.

### Posibles Problemas 
Es posible que tenga algunos bugs el script que estan en procesos de ser resultos, estos se tienen en registro en el [ChangeLog](https://github.com/jhosjhos/XploIP/blob/viewer/changelog).

## IP Static Manual
Esta función ingresa los datos en el script para conectarte de IP estática, cuenta con una interfaz un poco confusa. Los datos requeridos son como el **siguiente ejemplo**:
- **Nombre de Red:** Ethernet
- **Dirección IP:** 192.168.1.1
- **Mascara:** 255.255.255.0
- **Dirección Predeterminada:** 192.168.1.0
- **Primer DNS:** 8.8.8.8
- **Segundo DNS:** 8.8.4.4

>Si te arroja errores de **"Parámetro no valido"**. Se debe a que estas colocando mal las direcciones, **verifica** tus **" . "** y el **nombre** de tu **adaptador de red.**

Puedes usar la opción **1.- IPConfig** para verificar que el cambio de IP se realizo correctamente, si tuviste algun problema puedes volver intentarlo con la opcion **2.- Volver Intentar"**.

## Establecer DHCP
Encontraras 2 opciones de cambio de DHCP. Ethernet/Wi-Fi es muy sencillo la función de esta herramienta, solamente quita la configuración de IP Static y la pone DHCP. Solamente escoge que adaptador de red es la que quieres cambiar.

## Readme
Esta función te redijera al repositorio de GitHub, donde se ira actualizando como se vayan agregando funciones. 

## Changelog
Te redijera al **log de cambios** donde se irán actualizando los cambios o funciones agregadas futuramente.

## Acerca de
>Este Sctipt fue creado por **YHXS**/*JhosJhos*.
Gracias por darte el tiempo de leer esto y probarlo < 3
