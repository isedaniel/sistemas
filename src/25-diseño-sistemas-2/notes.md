# Notas Diseño de Sistemas 2

# Clase 1
## Objetivo de la materia

Ya trabajamos en el diseño del sistema tradicionales. En esta materia vamos
a trabajar en el diseño de **sistemas web**. Es decir, **ingeniería web**.

## Atributos de sistemas web

Características que los distinguen del software convencional.
1. Intensidad de red. El sistema reside en una red. Está abierto a una
   comunidad diversa de clientes. En el desarrollo convencional conocemos al
   cliente. Aquí tenemos que preparar un sistema para usuarios diversos.
2. Concurrencia. Una gran cantidad de usuarios pueden acceder al mismo tiempo.
   La probabilidad de problemas de concurrencia es mucho mayor.
3. Carga imprevisible. El volumen de uso varía: pueden haber muchos o pocos
   usuarios usando el sistema en poco tiempo.
4. Rendimiento. El tiempo de respuesta es un atributo crítico. Y depende de
   muchos factores.
5. Disponibilidad. Los sistemas convencionales no requieren funcionamiento
   continuo. En cambio, los sistemas web tienen que estar disponibles siempre.
6. Dirigida por datos. La aplicación web accede y genera contenido hacia bases
   de datos.
7. Evolución contínua. Cambia de forma constante, no en versiones (como en el
   software tradicional).
8. Seguridad. Requiere considerar la protección del contenido y los canales
   seguros en un grado mayor al software de escritorio convencional.

## Estratos de la ingeniría web

Hay cuatro capas apoyadas entre sí.
1. Herramientas. Soporte automatizado o semiautomatizado para el proceso y
   métodos. Es decir, herramientas en simultáneo que se ejecutan para resolver
   problemas concretos.
2. Métodos. Técnicas para construir la aplicación web: análisis, diseño, generación
   de páginas, pruebas. Pueden no ocurrir los mismos pasos que en el desarrollo
   convencional.
3. Proceso. Marcos de trabajo para aplicar métodos y entregar tecnología de
   forma consistente.
4. Compromiso de calidad: tiene que ser confiable y de alta calidad.

## Proceso de ingeniería aplicado a la web

1. Formulación. Qué es lo que queremos construir. Decidir qué vamos a hacer.
2. Planificación. Consiste en definir tiempos, costos, recursos humanos, roles,
   acciones. La planificación depende de la metodología utilizada (Scrum,
   Kanban, etc.).

## Mejore prácticas

1. Comprender el negocio y los objetivos. Toda empresa tiene misión y visión.
   Qué visión tiene de si misma y cuál es su misión: para qué se hizo. El
   desarrollo de software tiene que ir de la mano de los objetivos de la
   empresa. Hacer un /estudio de mercado/: hay otras empresas, tienen el
   mismo objetivo. Desarrollo de consecuentemente con esta información.
2. Desarrollo incremental, con entregas peqieñas y frecuentes.
3. Diseñar la arquitectura antes de construir la aplicación.
4. Pruebas continuas a lo largo del proceso.
5. Involucrar al usuario en cada iteración.  Mantener el vínculo con el
   usuario. Las metodologías ágiles son mejores que la /waterfall/ en este
   aspecto.


## Formulación

Primera actividad del proceso: establece metas, objetivos, alcance.
1. Metas del negocio, beneficios esperados, más ventas, mejor comunicación,
   menor costo de soporte.
2. Objetivos del usuario. Qué información o funcionalidad busca el usuario.
3. Alcance del proyecto. Contenido y funciones del primer incremento; qué
   queda dentro y qué fuera.

## Requisitos: cuatro modelos de análisis

Los requisitos se recopilan de forma iterativa a lo largo de los incrementos.
1. Contenido. Texto, gráficos, recursos de la aplicación web.
2. Interacción. Cómo interactúa el usuario, los casos de uso, los escenarios,
   las secuencias.
3. Funcional: operaciones sobre el contenido, búsqueda, transacciones. Lo que
   se puede hacer en nuestro software.
4. Configuración: la infraestructura que vamos a usar, con qué servidores será
   compatible, con qué navegadores, con qué sistemas operativos.

## Subcontratación (outsourcing)

Razones y riesgos para el outsourcing.
- Falta personal especializado o tenemos plazos ajustados
- Necesitamos reducir costos de desarrollo
- Requerimos experiencia técnica específica
- Riesgo: pérdida del control del proyecto, se nos va de las manos
- Riesgo: mayores problemas de comunicación
- Riesgo: dependencia del proveedor, que puede dar un mal servicio

Factores a evaluar antes de tercerizar.
- Experiencia y portfolio del proveedor
- Capacidad técnica y metodológica
- Costos comparados con el desarrollo dentro del equipo
- Garantías de mantenimiento y soporte
- Claridad contractual: alcance, tiempos, propiedad intelectual

Para hacer la subcontratación se licita. Hacemos una solicitud, tenemos
oferentes y tomamos una decisión. No necesariamente por tiempo o dinero, sino
el que más se adecúe a nuestras necesidades.

## Medición para la ingeniería web

1. Tamaño y complejidad. Número de páginas y enlaces, complejidad en la
   navegación, contenido dinámico versus contenido estático.
2. Calidad, usabilidad, tiempo de carga, tasa de errores, accesibilidad,
   disponibilidad.
3. Proceso. Tiempo que demanda cada incremento, esfuerzo dedicado, productividad
   del equipo.
4.

## Ideas clave

La ingeniería web combina un proceso ágil e iterativo, con atención constante a
la calidad, la seguridad y las necesidades del usuario.  Por eso el profe
descarta SCRUM. No está enfocada en la calidad. Y prefiere KANBAN, que se enfoca
en la calidad. Y además es más abierta a los cambios.

1. El proceso es incremental: formulación -> planeación -> análisis ->
   ingeniería -> pruebas -> evaluación.

2. Los requisitos se modelan en cuatro dimensiones: contenido, interacción,
   función y configuración.

3. La subcontratación y la medición son decisiones /estratégicas/: impactan
   en el costo, calidad y precios.

## TODO Revisar el contenido de la clase

## TODO Trabajar el apunte que subió el profe

## TODO Hacer el trabajo práctico. Se entrega en quince días.

# Clase 2

## Regla de las 3U

Tres parámetros importantes a tener en cuenta: usabilidad,

## 10 Heurísticas de Usabilidad

Tengo un nene. Lo despierto a la mañana para llevarlo a la escuela. Amanece con
fiebre. El pediatra nos atiende. Lo mira al nene y dice "tiene sarampión". Cómo
sabe eso sin hacer ningún diagnóstico. Por **experiencia**.

Otro ejemplo. El mecánico. Falla el auto, el mecánico escucha cómo arranca y
sabe que tiene. Cómo sabe. Por **experiencia**.

**Heurística**. Tiene que ver con conocimientos adquiridos a través de la
experiencia. Por experiencia, Jakob Nielsen propone 10 principios.

Fundamentos del diseño UX (experiencia de usuario). Reglas de oro desarrolladas
desde 1994. Para prevenir problemas de interacción _antes_ de que afecten al
usuario.

1. **Estado del sistema**. El sistema tiene que mantener siempre informados a
los usuarios de lo que está sucediendo. Ejemplo: indicadores de carga.

2. **Lenguaje real**. La interfaz debe hablar el lenguaje del usuario con
conceptos familiares en lugar de términos técnicos. Ejemplo: papelera de
reciclaje.

3. **Salidas de emergencia**. Un usuario puede realizar una acción por error.
Necesitan una salida de emergencia marcada, para abandonar un estado no deseado
sin procesos extensos. Ejemplo: Botón Deshacer <C-z>.

4. **Consistencia**. Los usuarios _no deberían_ preguntarse si diferentes
acciones significan lo mismo. Seguir las convenciones de la plataforma. Ejemplo:
mantener la ubicación del menú de navegación en una página web.

5. **Prevención de errores**. Un diseño que cuide al usuario de errores comunes.
Ejemplo: desactivar botones de envío hasta completar campos requeridos.
