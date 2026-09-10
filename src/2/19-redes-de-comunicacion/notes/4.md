---
title: Cuarta Clase
author:
- Daniel
date: 7 de abril
---

# Ruteo

Las diferentes capas colaboran con el ruteo. En la capa aplicación hablamos de
mensaje, en la capa TCP hablamos de _segmento_, en la capa IP tenemos el
_datagrama_.

# Conceptos básicos de ruteo

* Determinación de ruta

Permite evaluar las rutas disponibles,
estableciendo el mejor manejo para un paquete.

Los servicios de enrutamiento utilizan información de topología de la red.

La puede configurar el administrador o recopilar a través de procesos dinámicos.
(Se trata de la configuración estática o dinámica).

El router aplica, por orden, los siguientes criterios:

1. Usar la ruta de máscara más larga (que refiere a la más específica)

2. Usar la ruta de distancia administrativa menor

3. Usar la ruta de métrica menor

# Mecanismo de enrutado

1. Proceso de ruteo

2. Rutas dinámicas/Rutas estáticas

3. Elegir en base a distancia administrativa

4. Utilizar la ruta de máscara más larga (más específica).

5. A interface de salida

# Tipos de mapeado

1. Rutas directas: para redes conectadas localmente

2. Rutas indirectas: para redes conectadas a través de uno o más routers

3. Rutas por defecto: para el resto de direcciones

# Distancia administrativa

Mecanismo para resolver conflictos cuando hay dos rutas para el mismo destino.

Ejemplo: un _router_ ejecutando _RIP_ e _IGRP_. Recibe rutas a un mismo destino
por ambos protocolos.

En ese caso se da preferencia a la ruta con distancia administrativa menor.

TODO: ¿Qué sería concretamente la distancia administrativa?

Reflejan la confianza relativa de un protocolo frente a otro.

# Dos algoritmos

1. Vector distancia/Bellman-Ford

2. Estado del enlace/Dijkstra/Shortest Path First

