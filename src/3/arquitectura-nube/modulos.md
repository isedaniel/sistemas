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
