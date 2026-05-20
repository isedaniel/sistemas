---
title: Notas de Clase, Base de Datos 2
date: 28 de marzo
---

# Restricción Trigger

Es un disparador. Se ejecuta en base a eventos. Qué eventos:
  - Un insert
  - Un update
  - Un delete

Es decir, se agregue o modifique un valor en una tabla. Se relaciona con la
integridad.

Un trigger es un objeto más. Se crea en base a una tabla. Su función principal
es convervar la coherencia entre los datos entre distintas tablas.

También puede ser para generar datas para, por ejemplo, una auditoría. Guardar
información sobre las acciones que modifican a la tabla.

Instrucción:

```sql
CREATE TRIGGER <nombre> ON <tabla>
    FOR <insert_update_delete>
    AS
      <<SENTENCIAS>>
```

Puedo hacer un procedimiento para borrar información cada cierto tiempo. Esto
se llama _store procedure_. Un trigger es similar. Pero se ejecuta ante un
evento.

# Vista

Si ejecutamos la `query`:

```sql
SELECT nombre FROM clientes WHERE edad > 10;
```

Puedo ejecutar esa `query` cada vez que la necesite. O puedo construir una
vista:

```sql
CREATE VIEW vw_clientes_edad
AS
  SELECT nombre FROM clientes WHERE edad > 10;

-- Después llamo a la VIEW vw_clientes_edad con
SELECT * FROM vw_clientes_edad;

-- También puedo filtrar sobre la VIEW
SELECT * FROM vw_clientes_edad WHERE localidad='localidad';
```

Puedo agregar, eliminar o actualizar registros sobre una `VIEW`, salvo que sea
muy compleja.

Por lo general, se recomienda no modificar datos sobre vistas.

Se la usa como si fuese una tabla más. Se puede construir una `VIEW` con tablas
pertenecientes a distintos módulos, a distintos usuarios.

No tienen `PK` ni `FK`. El Diagrama de Entidad-Relación (DER) es la
representación de las tablas. Este sí incluye, por supuesto, `PK` y `FK`.

# Momento en que corre un TRIGGER

El `TRIGGER` puede correr:
- Antes
- Después
- En lugar de

el evento que lo dispara, sea `SELECT`, `UPDATE` o `DELETE`.

# Control de transacción

Es un conjunto secuencial de cambios a la base de datos.

En SQL Server, todas las operaciones de escritura en la base son tratadas como
transacciones.

Cuando la información a ser guardada, se abre una transacción. Hacemos
`INSERT`, `UPDATE`, `DELETE`. Si todo sale bien, se hace el _COMMIT_ a la base
de datos. Si hay algún error: en lugar de _COMMIT_ hacemos _ROLLBACK_.

Se graba todo o no se graba nada. No hay punto medio.

# Propiedades ACID

- Atomicidad: la transacción se ejecuta y se guarda completa o no se ejecuta.

- Consistencia: Los datos que se guardan siempre tienen que ser válidos. No se
  pueden guardar datos inválidos.

- Isolation (Aislamiento): Las transacciones son independientes. Supongamos que
  tenemos una sola tabla que usan muchos usuarios. El resto no ve los cambios
  hasta que se hace el _COMMIT_.

- Durabilidad: Finalizada la operación, los datos perduran en el tiempo.

# Tipos de transacciones

- Transacciones de sistema. Cuando el propio motor maneja transacciones. Por
  ejemplo, un índice. Un trigger.

- Transacciones de usuario. Creadas y manejadas por el usuario.

Por ejemplo, en una base de datos, el Disco Rígido suele ser el cuello de
botella. Supongamos que borramos registros en la mitad. El sistema tiene que
hacer tareas administrativas para _desfragmentar_ la base. Estas son
transacciones del sistema.

# Transacciones

```sql
INSERT INTO tblPruebas VALUES(1)
BEGIN TRY
    INSERT INTO tblPruebas VALUES(2)
    BEGIN TRAN nombreTransaccion
        INSERT INTO tblPruebas VALUES(4)
    COMMIT TRAN nombreTransaccion
END TRY
```

Qué ve otro usuario. El valor 1. SQL Server tiene `COMMIT` implícito. El 2 y 4
se ven solo cuando haga el `COMMIT` explícito de la transacción.

También podemos manejar errores del bloque `BEGIN TRY`:

```sql
BEGIN CATCH
    SELECT ERROR_NUMBER() AS errNumber, -- ...
    ROLLBACK TRAN nombreTransaccion
END CATCH
```

# BEGIN TRY

- El control de transacciones sirve para una programación más robusta. 

- Manejar los errores. (Note(dan): es como un bloque `try-catch`).

- Ayuda con la consistencia de la base de datos.

# Funciones como ERROR_NUMBER()

Proporcionan datos sobre el error en tiempo de ejecución.
- ERROR_NUMER(): número de error
- ERROR_NUMER(): número de error

# Instalar SQL Server

Instalamos SQL Server. Tengo SQL Server en Manual. Tengo que abrir `Servicios`
para iniciarlo.

Puerto de SQL Server por defecto: 1433.

Cuando levanto una instancia, SQL Server aloca en memoria el programa,
direcciones a los archivos de bases de datos y procesos para interactuar con
esas bases de datos.

Cada instancia está aislada de la otra.

# SQL Managment Studio

Nos conectamos a la instancia `localhost`. Con el usuario administrador por
defecto, que es `sa` y nuestra contraseña.

En `master` se guarda todo lo que hacemos en otras bases de datos.

# Laboratorio 1

Para crear bases de datos. Vamos a `New Query`. Me abre el intérprete. En el
intérprete creamos la base:

```sql
CREATE DATABASE EscuelaDB; -- Creamos la base Escuela DB

sp_helpdb EscuelaDB; -- Me da información sobre la DB

SELECT @version; -- Me devuelve la versión de SQL Server
```

Con `sp_helpdb` puedo ver los datafiles, su `PATH`. Podemos ir a verlos.

Creamos tablas:

```sql
CREATE TABLE estudiantes (
    idEstudiante INT PRIMARY KEY, -- Clave primaria
    nombre VARCHAR(100) NOT NULL, -- Restricción NOT NULL
    edad INT CHECK (edad >= 18),  -- Restricción de dominio
    estado INT DEFAULT 1,         -- Restricción DEFAULT
    email VARCHAR(255) UNIQUE     -- Restricción UNIQUE
);

SELECT * FROM estudiantes;
```

Creamos la tabla cursos:

```sql
CREATE TABLE cursos (
    idCurso     INT PRIMARY KEY,       -- Clave primaria
    nombreCurso VARCHAR(100) NOT NULL, -- Restricción NOT NULL
    descripcion VARCHAR(200)
);
```

Y por último tabla Inscripciones, que tiene interesante que tiene `PK`
compuesta:

```sql
CREATE TABLE inscripciones (
    idEstudiante INT,
    idCurso      INT,
    PRIMARY KEY  (idEstudiante, idCurso), -- PK Compuesta
    FOREIGN KEY  (idEstudiante)
        REFERENCES estudiantes(idEstudiante)
        ON DELETE CASCADE, -- Borra en cascada:
                           -- Si borro un estudiante borra Inscripción
    FOREIGN KEY  (idCurso)
        REFERENCES cursos(idCurso)
        ON DELETE CASCADE -- Lo mismo pero para un curso
);
```

Hacemos una `QUERY` para seleccionar estudiantes:

```sql
SELECT E.idEstudiante, I.idCurso
FROM estudiantes E
INNER JOIN inscripciones I
ON E.idEstudiante = I.idEstudiante;
```

Puedo hacer una `VIEW` con esa `QUERY`:

```sql
CREATE VIEW vw_Estudiantes_Cursos AS
-- ... QUERY
```

Y después selecciono a través de la `VIEW`:

```sql
SELECT * FROM vw_Estudiantes_Cursos
ORDER BY idEstudiante;
```

Para insertar datos:

```sql
INSERT INTO estudiantes (idEstudiante, nombre, edad, estado, email) VALUES
(1, 'Juan Pérez',   20, 1, null),
(2, 'Ana Gómez',    22, 0, ana@dominio.com),
(3, 'Carlos López', 17, 1, carlos@dominio.com);
```

Notar que si los mails fuesen iguales, el registro debería fallar por la
restricción de que el campo mail debe ser único.

Adicionalmente, a la tabla de estudiantes le pusimos la restricción de edad
mayor o igual 18. El estudiante 3 va a fallar en agregarse a la tabla.

# Restricciones de integridad lógica

Si hago un `INSERT` a `inscripciones`:

```sql
INSERT INTO inscripciones (idEstudiante, idCurso) VALUES
(1, 1),
(2, 2),
(3, 1);
```

Como el estudiante 3 falló en anotarse, este `INSERT` a inscripciones también
va a fallar. La restricción `FOREIGN KEY` en `idEstudiante` impide que agregue
una inscripción con un `idEstudiante` que no existe en la tabla `estudiantes`.

`ON DELETE CASCADE` eliminaría además una inscripción si elimino alguno de los
estudiantes o alguno de los cursos.

Por ello tengo que dar de alta las inscripciones en el orden que corresponde:
`estudiantes -> cursos -> inscripciones`.

# Elegir DB

Cuando estamos en Management Studio, recordar elegir la base de datos que
corresponda para hacer los laboratorios.

# Query para traer nombres

Traemos los nombres de estudiantes y cursos:

```sql
SELECT E.nombre AS Estudiante, C.nombreCurso AS Curso
FROM inscripciones I
JOIN estudiantes E ON I.idEstudiante = E.idEstudiante
JOIN cursos C ON I.idCurso = C.idCurso;
```

Si quisiera, puedo hacer una `VIEW` de esta _query_:

```sql
CREATE VIEW vw_nombres_estudiantes_cursos AS -- ...query
```

# UPDATE

Las _query_ `UPDATE` también tienen que cumplir las restricciones que pusimos
creando la tabla.

# DELETE teniendo ON DELETE CASCADE

Si hago una _query_ `DELETE FROM estudiantes WHERE idEstudiante = 2;`, también
borra las inscripciones que tengan `FK` de `idEstudiante = 2`. Esto pasa por la
restricción `ON DELETE CASCADE`.

# FOREIGN KEY

Las tablas que tienen FK las tenemos que completar al último. Porque depende de
las que no tienen FK. 

También funcionan como restricciones para guardar la integridad de la base de
datos. Impiden que pueda borrar _registros_ de los que dependan otros
registros. Por ejemplo, borrar un estudiante con inscripciones activas.

# Sub Querys

Puedo hacer _sub querys_. Los rodeo entre paréntesis, en medio de una _query_.

# Restricciones

Son muy importantes para plasmar las reglas de negocio en el motor de base de
datos. Tener bien reflejadas las ideas de negocio en la base de datos nos evita
perder plata, por lo menos por problemas de DB.

