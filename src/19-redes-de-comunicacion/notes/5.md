---
title: Capítulo 5 y 6
author:
- Daniel
date: 21 de abril
---

# Modelos jerárquicos

Tenemos ISP local, aguas arriba se va sumarizando a un ISP regional, arriba
otro nacional, etc. Tenemos una referencia a un AS, que es un esquema de
encaminamiento interior. Los AS son sistemas autónomos de identifican una red
en el mundo. Un sistema autónomo ofrece a otros sistemas autónomos caminos para
ir de una red hacia otra. De esta manera vamos de un ISP local a otro ISP
local, atravesando las diferentes jerarquías regionales, nacional y tránsito.

# Sistema autónomo

Nacen por la necesidad de subdividir internet en entidades independientes para
facilitar la administración. Un sistema autónomo también se denomina ASN,
LACNIC en Sudamérica.

Está formado por un cojunto de routers. Es una colección de redes físicas con
una política administrativa de encaminamiento común. Todo nodo que forme parte
de un sistema autónomo tienen que cumplir con la política propia de la empresa
a la que pertenecen.

Un sistéma autónomo está formado por:

- Un protocolo de routeo común

- Una gestión común

Cada proveedor tiene al menos un sistema autónomo, aunque a veces varios.
Algunas organizaciones están conectadas a más de un sistema autónomo.

Se identifica por un número de 16 bits. Los números de AS los asignan los RIR,
que son los registros regionales.

Podemos tener un sistema autónomo 200 y un sistema autónomo 100 (serían como
los nombres de los sistemas autónomos). Estos dos sistemas autónomos se tienen
que unir entre si para comunicarse, el sistema más básico es el EGP.

# IGP

Protocolo de ruteo interior. Su objetivo es llegar por el mejor camino a los
destinos del AS. Son los "técnicos".

# EGP

Protocolos de ruteo exterior, son los "políticos", es decir se manejan por
políticas.

# Algoritmos de búsqueda de ruta mínima

Tenemos un nodo destino, una ruta desde R1 a cada uno de los nodos, y el costo
de cada una de esas rutas. El costo que se considera es el de la interfaz de
salida.

# Tabla de routeo

Con un salto conoce las redes del router A y la red de C. La de B no se
actualiza, pero como recibe las rutas de B, en C se incorporan las direcciones
de A. La red A llega a C a través de un salto. Con la información recibida,
cada uno actualiza su tabla de routeo.

# Ejemplo de funcionamiento RIP

El costo máximo es de 16, por lo que RIP es inadecuado para redes grandes. Una
red con RIP 16 es inalcanzable. RIP v1 no soporta máscaras de subred de
longitud variable. En un mensaje RIP no hay modo de especificar una máscara
asociada a una dirección IP. Además carece de servicios para garantizar
actualizaciones que proceda de "routers"autorizados. Por lo tanto, es un
protocolo inseguro.

# RIP v2

Incorpora la máscara de subred.

# IGRP y EIGRP

Protocolos de CISCO. Resuleven problemas de RIP, métrica más compleja, uso de
múltiples caminos, mejoras de EIGRP sobre IGRP: soporta subredes y transmite
modificaciones. Incluyen soporte multiprotocolo, se utilizan en muchas redes.

# Comandos

`sh ip route`, se lee *show ip route*, el prompt muestra el nombre del router,
imprime la tabla de routers conocidos,  por qué interfaz, qué protocolo.

# TODO

Hacer cuestionarios, el parcial es la clase que viene.

# Módulo 6

# Protocolo OSPF

Tiene dos niveles jerárquicos, resuelve los problemas de RIP.

# Definiciones básicas

Área: es un conjunto de redes dentro de un AS.
