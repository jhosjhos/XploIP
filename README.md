# Readme
Este programa se creó con el fin de tener un directorio de IP´s disponibles en un clic, poder generar un cambio o restablecer las redes que tenías anteriormente, el sustituir tus direcciones sin tener la complicación de entrar a las herramientas de Windows y cambiar cada una manual.  Me encuentro muy feliz por el resultado y espero si tu utilizas esta herramienta también lo agradezcas :) 

## ¿Como se utiliza?
Es muy sencillo de utilizar ya que tiene una interfaz directa. En el menú su encuentran las opciones disponibles para su funcionamiento.

### 1.-Directorio Ethernet y 2.-Directorio WI-FI
Esta función es el **Directorio** de nuestras direcciones que vamos a llenar con las requisiciones que requiramos. 
  
- Una vez entremos a esta opción **(1.- Directorio Ethernet o 2.- Directorio Wi-Fi)** solamente es escoger el número que tenemos asignado y el script nos pondrá la IP que asignamos. 

>El script tira un **ipconfig** para confirmar que la **IP** que tienes, sea la que cambiaste.

Desgraciadamente aun **NO puede** implementar **llenar el directorio desde el script**, así que **tendremos que hacerlo manualmente**, si no lo entiendes **te explico aquí** como:

#### Agregar IP al Directorio Wi-Fi

1. Abrimos nuestro **IDE** o **Editor de Texto** favorito.
2. Abrimos el archivo **"XploIP"** para poder editarlo.
3. Nos dirigiremos al **comentario** **Variables Wi-Fi** *(Aproximadamente está en la línea 280)*
4. Cada dirección se encuentra dividida por un comentario como **"::---Usuario uno---"** solamente vamos a cambiar los *siguientes parámetros en el siguiente comando:* **"interface ipv4 set address"**
5. **"name"** Este es el nombre que tiene tu adaptador de red Wi-Fi.  (Predeterminado es: **name="Wi-Fi")**
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
14. Guardamos y es todo. **¡NOTA!** *Tendras que repetir esto con cada una de las direcciones que quieras registrar*.
