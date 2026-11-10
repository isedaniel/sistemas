# Preguntas y Respuestas

## Módulo 9

1. Características de un grupo de IAM (Identity and Access Management) (2
respuestas):
   * El usuario hereda las políticas del grupo
   * Un usuario puede pertenecer a más de un grupo

2. Beneficios del Control de Accesos Basado en Atributos (ABAC) frente a Control
de Accesos Basado en Roles (RBAC).
    * ABAC requiere menos políticas, porque no necesitamos crearlas para cada
    uno de los roles.

3. Tengo un usuario con: grupo accede a S3 y EC2, impide ECS. Usuario accede a
  ECS y CloudFront. Qué acceso queda.
    R. Accede a S3, EC2 y CloudFront. Pero no a ECS. Denegaciones explícitas
    anulan permisos explícitos. Denegación > Permiso.

4. Beneficio de la federación de identidades con AWS.

    R. Habilita usar un proveedor externo para la autenticación.

5. Servicio que habilita la federación de identidades para acceder a una
   aplicación web en AWS.

    R. Amazon Cognito permite registrar usuarios, inciar sesión y controlar el
    acceso a aplicaciones web o móviles. Es compatible con federación de
    identidades.

6. Servicio que ayuda a: administrar la facturación de forma centralizada,
   controlar el acceso, la seguridad y compartir varios recursos entre cuentas
   de AWS.

    R. AWS Organizations es un servicio que permite:
    automatizar la creación de cuentas,
    crear de grupos de cuentas de acuerdo a los requerimientos de negocio
    y aplicar políticas de seguridad a esos grupos para gobernanza.
    Permite facturación centralizada siempre que las cuentas compartan medio de
    pago.

7. Tenemos varias cuentas en una unidad organizativa (OU) en AWS Organizations.
   Cómo podemos hacer que las cuentas que manejan IAM no borren registros.

    R. Creando una política de control de servicios (SCP) y adjuntarla a la
    unidad organizativa (OU).
    Ni el `root` del OU puede incumplir la SCP.

8. Aplicación envía clave. Qué cifrado usar.

    R. Cifrado de sobre. En tránsito.

9. Que función cumple AWS KMS (Key Management Service). (Dos respuestas).

    R. Crear claves.

10. Qué servicio protege la información cifrada (No es Audit Manager).

## Módulo 10

1. Qué enunciado sobre AWS EC2 Auto Scaling es correcto.

    R. Puede iniciar en varias zonas de disponibilidad.

2. Un ingeniero detecta que la demanda aumenta los fines de semana.
   Qué tipo de escalado conviene usar.

   R. Programado

3. Instancias de EC2 detrás de un equilibrador de carga.
   Tienen que escalar frente a 50% de uso de CPU.
   Qué tipo de escalado usar.

   R. Al escalar en seguimiento de destino.
   Porque ese considera uso de CPU como métrica.
   El usuario especifica el valor y Auto Scalling se encarga.

4. Cómo escalar verticalmente una base de datos de RDS.

   R. Agrandando el tamaño de la instancia de EC2.
   Escalar verticalmente es crecer en potencia de instancia.

5. Escalado horizontal de AWS Aurora.

   R. Agregando réplicas de Aurora.
   Como todo escalado horizontal.
   Crea un clúster de una instancia primaria y una o más réplicas de lectura.

6. Ejecución del escalado automático de Amazon DynamoDB.

   R. (DynamoDB no usa instancias).

7. Flota de instancias de Amazon EC2.
   Tenemos una aplicación que se ejecuta en un puerto TCP.
   Mejor estartegia de escalado.

   R. Equilibrador de carga de red.
   Gestiona el tráfico por protocolos TCP, UDP y TLS.
   Elastic Load Balancing (ELB) cuenta con alta disponibilidad.

8. Compañía, sitio web de alta disponibilidad, usa *scripts* del lado del
   servidor, ofrece contenido HTML dinámico.
   Qué solución ofrece mayor disponibilidad por menor costo y complejidad.

   R. Grupo de escalado automático de EC2.
   Inicia instancias automáticamente de acuerdo a la carga.
   También puede terminar instancias cuando baje la carga u ocurran errores.
   El balanceador de carga de aplicación distribuye mediante DNS.

9. Usuarios de A un región A. Usuarios de B en región B. Región A se cae.
   Qué solución puede hacer ese trabajo.

   R. (No es equilibrador de carga con Cloud Watch.
   Un equilibrador de carga funciona en una única región).

10. Ingeniero usa AWS para desarrollo y pruebas personales. No desea gastar.
    Qué enfoque funciona mejor.

    R. (No es SCP.)

## Módulo 11

1. Por qué automatizar el aprovisionamiento de recursos (Dos respuestas correctas).
  A. Permite incluir el control de versiones.
  B. Automatizar cumple con el principio de diseño de fiabilidad,
  que requiere automatizar para administrar los cambios.

2. Beneficios de utilizar Infraestructura como código (dos respuestas correctas).
  A. Permite implementar entornos de configuración uniforme.
  B. Facilita la propagación de actualizaciones.

3. Para configurar rápidamente un FSx para Windows.
  A. Usar Inicio rápido.

4. Qué es Amazon Q Developer.
  A. Un generador de código basado en Inteligencia Artificial, que se integra con IDE.

5. Motivos para usar Amazon Q Developer
  A. Acelerar la generación de código.
  B. Mejorar la seguridad.

6. Qué es Amazon Cloud Formation.
  A. Permite implementar Infraestructura como código.
  Ayudando a diseñar, implementar y administrar recursos de AWS.

7. Qué es Amazon Cloud Formation Designer.
  A. Una interfaz gráfica para diseñar plantillas de CloudFormation en AWS Console.

8. Qué usar para obtener diferencias específicas en la implementación de una plantillas en CloudFormation.
  A. Utilizar condiciones.

9. Inspeccionar plantilla en CloudFormation Designer.
  (No es inspeccionar visualmente)

10. Ver diferencias entre una plantilla y un conjunto de entornos.
  (No es inspeccionar con CloudFormation Designer)

## Módulo 12

1. Qué es almacenamiento en caché.
  A. Una capa de almacenamiento de alta velocidad.

2. Qué tipo de datos se almacenan en caché.
  A. Datos estáticos a los que se accede frecuentemente.

3. Cuál es un beneficio del almacenamiento en caché.
  A. Menor latencia en las respuestas.

4. Qué tipos de datos se almacenan en caché periférico.
  A. Archivos de video como demostraciones de productos.
  B. Objetos web (HTML, JavaScript).

5. Qué habilita CloudFront.
  A. Caché de varios niveles y regional.

6. Cómo usa CloudFront las regiones periféricas.
  A. Almacena en caché el contenido al que se accede frecuentemente.
  Entrega el contenido en regiones periféricas desde el servicio de menor latencia.

7. Forma eficiente de ofrecer video bajo demanda.
  A. Alojar en S3, proveer con CloudFront.

8. Rol de CloudFront en los ataques de denegación de servicios distribuido (DDoS).
  A. (No controla el tráfico. Eso hace 53)

9. Cómo se puede usar ElastiCaché para mejorar el rendimiento de lectura de bases de datos.
  A. (No es replicar en caché)

10. Estrategia de almacenamiento en caché cuando hay datos que se actualizan en tiempo real.
  A. (No es encabezados de control)

## Módulo 13

1. Diferencia entre arquitectura de acoplamiento ajustado y arquitectura de acoplamiento débil.
  A. En una arquitectura de acoplamiento débil los componentes no dependen tanto unos de otros.

2. Enunciados que describen a Amazon Simple Queue Server (SQS) (Tres opciones).
  A. Permite escalar microservicios, sistemas distribuidos y aplicaciones sin servidor.
  B. Los consumidores tienen que leer la cola.
  C. Permite almacenar y opcionalmente cifrar los mensajes hasta que se procesan y eliminan.

3. Enunciados verdaderos en el uso de SQS cola estándar, no FIFO (dos opciones).
  A. Mensajes se pueden enviar en cualquier orden.
  B. Pueden procesarse más de una vez.

4. Qué rol cumple una SQS en una aplicación de procesamiento de video en una
   flota de instancias EC2.
    * Recibe los mensajes de la aplicación.
    Las instancias de la flota leen los mensajes y van procesando.

5. Qué es Amazon Simple Notification Service.
    - Un servicio de mensajes completamente administrado, que sirve para la
    comunicación entre sistemas o aplicación a persona, que funciona con un
    patrón de publicación o suscripción.
    Se pueden crear temas y establecer políticas de autorización.

6. Seleccionar tres casos prácticos de Simple Notifications Service (SNS).
    - Notificar operadores de monitoreo de actividad inusual.
    - Puede enviar mensajes por correo, HTTP, Server Migration Service (SMS),
    colas de SQS y funciones AWS Lambda.

7. Dos características de SNS.
    - Envío de mensajes a SQS
    - Envío de mensajes a URL.

8. Modificamos unos PDF en S3 con dos Lambda. Cómo notificamos.
    - Con SNS

9. Qué es AmazonMQ
   1. Servicio de broker de mensajes que facilita configuración y operación.

10. Caso práctico habitual de AmazonMQ
    1.  El aprovechamiento de una aplicación existente que usa ApacheMQ.

## Módulo 14

1. Tres beneficios de un modelo sin servidor para un arquitectura de microservicios.
   1. Pago por valor.
   2. Escalado continuo.
   3. Alta disponibilidad integrada.

2. Solución sin servidor para formulario web simple.
   1. Nodos Fargate, Base de Datos RDS (?). No sé dónde está el serverless.

3. Por qué recomendar microservicios.
   1. Responden a un requerimiento de negocio
   2. Necesitamos independencia de los componentes

4. Configuración de escalado para Lambda.
   1. Escala automático.

5. Usar biblioteca personalizada en Lambda. Qué característica usar.
   1. Capas de Lambda. Puede usar biblioteca sin incluirlas en el paquete.

6. Enunciados verdaderos del software empaquetado como contenedor.
   1. Paquetes de código, ejecutados por una aplicación, no incluye SO.

7. Implementación más eficaz para usar arquitectura de microservicios en Elastic
   Container Service (ECS) al refactorizar una aplicación monolítica.
   1. Crear varios servicios, cada uno que cumpla un requerimiento de negocio, y
   ejecutar cada uno en un contenedor separado.

8. Acceso esporádico a Base de Datos DynamoDB por HTTP.
   1. Crear API Serverless en API Gateway y AWS Lambda para proporcionar
   conexiones de sólo lectura.

9. Tres flujos de trabajo para AWS Step Functions para reducir sobrecarga
   operativa.
   1. No es la de implementar condicionalmente infra. Esa es CloudFormation.

10. Aprobación manual en AWS Step Functions. Qué implementar.
    1.  Parámetro de espera de devolución de llamada. 

## Módulo 15

1. Qué situación representa un desafío de velocidad de los datos
   - Cuando la aplicación web tiene mucho tráfico retrasa la devolución de
   recomendaciones de compras.

2. Objetivo de una arquitectura de datos moderna.
   - Integrar el acceso a un lago de datos, almacenamiento y otros almacenes
   específicos, permitiendo la gobernanza unificada de datos de la organización.

3. Situación de carga de trabajo de análisis que es caso práctico de ingesta de
   lotes.
   - Recopilar un lote de ventas, analizar en la noche y tener resultados por la mañana.

4. Tenemos un almacen de datos de ARN en instalaciones. Queremos sincronizar.
   Qué solución usamos.
   = DataSync para transferir desde las instalaciones a S3.

5. Característica de AWS Glue para descubrir el equema de datos JSON con menor
   cantidad de pasos y sin código.
   - Ejecutar un rastreador de Glue en el bucket de S3

6. Configuración que cumpla con: tomar datos de una canalización en tiempo real,
   mostar en un panel en tiempo real y elaborar un informe mensual.
   - Amazon Kinesis Data Streams ingiere los datos.
   Managed Service para Apache Flink consume los datos y los procesa para
   alimentar el panel en tiempo real en OpenSearch Service.
   Firehose puede enviar los datos a almacenamiento y análisis en OpenSearch
   Service, que puede generar el informe mensual.

7. Consideración a la hora de diseñar un almacenamiento por canalización.
   - Los datos de una base de datos relacional van a la alternativa más
   rentable.

8. Almacenamiento de bajo costo para datos estructurados y no estructurados.
   - S3

9. Solución para ejecutar trabajo programado con procesamiento paralelo en AWS,
   proveniente de clúster de Apache Hadoop.
   - Amazon EMR, que admite también Hadoop, MapReduce y Spark.

10. Consulta inmediata de datos en S3 más rentable.
    - Amazon Athena, se paga por uso y se puede usar para consultas puntuales y
    análisis rápido de datos.

## Módulo 16

1. Definiciones del objetivo de punto de recuperación (RPO) y objetivo de tiempo
   de recuperación (RTO).
    - Son métricas críticas en recuperación frente a desastres y planeamiento de
    continuidad de negocios.
    RPO define la cantidad tolerable de pérdida de datos, medida en tiempo.
    Responde ¿cada cuánto tiempo se tienen que realizar copias de respaldo?
    RTO define la cantidad tolerable de tiempo que un servicio puede permanencer
    no disponible hasta que el impacto en el negocio resulte inaceptable.
    Responde ¿qué tan rápido tiene que recuperarse la aplicación y los datos?

2. Qué hacer para reimplementar rápidamente entornos en caso de desastre.
    - Utilizar IaC con CloudFormation y replicar en misma región.

3. Cómo garantizar copia de datos y metadatos de S3 en otra región para
   recuperación frente a desastres.
    - Habilitar replicación entre regiones en S3.

4. Estrategia más eficiente para recuperación ante desastres en EC2.
    - Almacenar datos esenciales por separado, como en Amazon Elastic Block
    Store (EBS) y Elastic File System (EFS).
    Permite reconstruir partes no diferenciadas con instancias de Imágenes de
    Máquina de Amazon (AMI) y código almacenado en repositorios.

5. Servicio que proporciona conmutación por error automática entre puntos de
   conexión para respaldar una estrategia geográfica de recuperación frente a
   desastres.
   - Amazon Route 53 puede conmutar frente a errores entre puntos de conexión en
   diferentes regiones.

6. Enunciado sobre el patrón de recuperación frente a desastres (DR), vinculado
   a respaldo y restauración.
   - Objetivo de tiempo de recuperación (RTO) más alto, pero más rentable.

7. Dos enunciados que describen con precisión características de infraestructura
   de patrones comunes de recuperación frente a desastres (DR).
    1. El patrón de luz piloto tiene infraestructura mínima en contínuo
    funcionamiento. El resto de infraestructura se activa cuando ocurre el
    desastre.
    2. El patrón de espera semiactiva tiene una versión reducida de toda la
    infraestructura, que escala cuando es necesario, dentro de límites
    preestablecidos.

8. 
