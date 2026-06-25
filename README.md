#  Sistema de Control de Inventario para una Ferretería

##  Descripción

Este proyecto corresponde al desarrollo de una base de datos relacional para el control de inventario de una ferretería, realizada como actividad del **Ciclo 3 - Introducción a las Bases de Datos**.

El objetivo es diseñar un modelo relacional normalizado que permita administrar la información relacionada con productos, categorías, proveedores, ubicaciones e inventario, implementando posteriormente la base de datos en **MySQL 8** utilizando la terminal y el servicio en la nube **Aiven.io**.

---

#  Objetivos

- Diseñar un modelo relacional normalizado.
- Implementar la estructura de la base de datos mediante SQL (DDL).
- Poblar la base de datos con información de prueba (DML).
- Ejecutar consultas SQL para validar el funcionamiento del modelo.
- Utilizar MySQL desde la terminal y desplegar la solución en Aiven.

---

#  Estructura del Proyecto

```
ferreteria-bd/
│
├── README.md
├── ddl.sql
├── dml-data.sql
├── dml-querys.sql
├── diagrama-relacional.svg
└── docs/
    └── Diagrama-StarUML.mdj
```

---

#  Contenido del Repositorio

| Archivo | Descripción |
|----------|-------------|
| **README.md** | Documentación del proyecto. |
| **ddl.sql** | Script para crear la base de datos y todas las tablas. |
| **dml-data.sql** | Script para insertar registros de prueba. |
| **dml-querys.sql** | Script con las consultas solicitadas en la actividad. |
| **diagrama-relacional.svg** | Modelo relacional generado en StarUML. |
| **Diagrama-StarUML.mdj** | Archivo editable del diagrama relacional (opcional). |

---

#  Modelo de Datos

La base de datos está conformada por las siguientes entidades:

- Categoría
- Producto
- Ubicación
- Proveedor
- Producto_Proveedor

### Relaciones

- Una categoría puede tener muchos productos (1:N).
- Una ubicación puede almacenar varios productos (1:N).
- Un proveedor puede suministrar muchos productos (N:M).
- Un producto puede ser suministrado por varios proveedores (N:M).

La relación muchos a muchos entre productos y proveedores se resuelve mediante la tabla **producto_proveedor**.

---

# Tecnologías Utilizadas

- MySQL 8
- Aiven.io
- StarUML
- GitHub
- SQL

---

#  Implementación

## 1. Crear la base de datos

```sql
CREATE DATABASE ferreteria;
USE ferreteria;
```

## 2. Ejecutar el script DDL

Ejecutar el archivo:

```
ddl.sql
```

para crear todas las tablas y relaciones.

## 3. Poblar la base de datos

Ejecutar:

```
dml-data.sql
```

para insertar los registros de prueba.

## 4. Ejecutar las consultas

Ejecutar:

```
dml-querys.sql
```

para validar el funcionamiento de la base de datos.

---

#  Consultas Implementadas

Se desarrollaron las siguientes consultas:

1. Mostrar todos los productos.
2. Categorías cuyo nombre inicia con H.
3. Productos cuyo nombre inicia con Martillo.
4. Productos cuya descripción contiene la palabra acero.
5. Productos Truper disponibles.
6. Productos con existencias inferiores al mínimo.
7. Productos fuera del rango permitido de inventario.
8. Proveedores activos de Bogotá.
9. Proveedores cuyo nombre contiene Industrial o cuya ciudad es Cali.
10. Ofertas con tiempos de entrega mayores a siete días o precio superior a 500000.

---

#  Conceptos Aplicados

Durante el desarrollo del proyecto se aplicaron conceptos como:

- Modelo Relacional
- Normalización
- Claves Primarias
- Claves Foráneas
- Restricciones (PRIMARY KEY, FOREIGN KEY, UNIQUE, CHECK, NOT NULL)
- Relaciones 1:N
- Relaciones N:M
- SQL DDL
- SQL DML

---

#  Integrantes

- **Fabian Aguilera**
- **Alberth Leal**
  
---

#  Licencia

Proyecto desarrollado con fines académicos para la asignatura **Introducción al Backend y Bases de Datos - Campuslands**.
