mysql> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| defaultdb          |
| information_schema |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
5 rows in set (1.386 sec)

mysql> CREATE DATABASE ferreteria;
Query OK, 1 row affected (4.496 sec)

mysql> USE ferreteria;
Database changed
mysql> CREATE TABLE categoria (
    ->     id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    ->     nombre VARCHAR(100) NOT NULL UNIQUE,
    ->     descripcion VARCHAR(255)
    -> );
Query OK, 0 rows affected (3.897 sec)

mysql> SHOW TABLES;
+----------------------+
| Tables_in_ferreteria |
+----------------------+
| categoria            |
+----------------------+
1 row in set (1.216 sec)

mysql> CREATE TABLE ubicacion (
    ->     id_ubicacion INT AUTO_INCREMENT PRIMARY KEY,
    ->     pasillo VARCHAR(20) NOT NULL,
    ->     estante VARCHAR(20) NOT NULL,
    ->     UNIQUE (pasillo, estante)
    -> );
Query OK, 0 rows affected (1.260 sec)

mysql> CREATE TABLE proveedor (
    ->     id_proveedor INT AUTO_INCREMENT PRIMARY KEY,
    ->     nit VARCHAR(20) NOT NULL UNIQUE,
    ->     nombre VARCHAR(100) NOT NULL,
    ->     contacto VARCHAR(100) NOT NULL,
    ->     telefono VARCHAR(20) NOT NULL,
    ->     correo VARCHAR(100) NOT NULL,
    ->     direccion VARCHAR(150) NOT NULL,
    ->     ciudad VARCHAR(100) NOT NULL,
    ->     estado ENUM('Activo','Inactivo') NOT NULL
    -> );
Query OK, 0 rows affected (1.308 sec)

mysql> CREATE TABLE producto (
    ->     id_producto INT AUTO_INCREMENT PRIMARY KEY,
    ->     referencia VARCHAR(30) NOT NULL UNIQUE,
    ->     nombre VARCHAR(100) NOT NULL,
    ->     descripcion VARCHAR(255),
    ->     marca VARCHAR(100) NOT NULL,
    ->     unidad_venta VARCHAR(30) NOT NULL,
    ->     precio_venta DECIMAL(10,2) NOT NULL,
    ->     estado ENUM('Disponible','Descontinuado') NOT NULL,
    ->     cantidad_disponible INT NOT NULL,
    ->     cantidad_minima INT NOT NULL,
    ->     cantidad_maxima INT NOT NULL,
    ->     id_categoria INT NOT NULL,
    ->     id_ubicacion INT NOT NULL,
    ->
    ->     CONSTRAINT chk_cantidad_disponible
    ->         CHECK (cantidad_disponible >= 0),
    ->
    ->     CONSTRAINT chk_cantidad_minima
    ->         CHECK (cantidad_minima <= cantidad_maxima),
    ->
    ->     CONSTRAINT fk_producto_categoria
    ->         FOREIGN KEY (id_categoria)
    ->         REFERENCES categoria(id_categoria),
    ->
    ->     CONSTRAINT fk_producto_ubicacion
    ->         FOREIGN KEY (id_ubicacion)
    ->         REFERENCES ubicacion(id_ubicacion)
    -> );
Query OK, 0 rows affected (1.511 sec)

mysql> CREATE TABLE producto_proveedor (
    ->     id_producto INT NOT NULL,
    ->     id_proveedor INT NOT NULL,
    ->     referencia_proveedor VARCHAR(50) NOT NULL,
    ->     precio_compra DECIMAL(10,2) NOT NULL,
    ->     dias_entrega INT NOT NULL,
    ->
    ->     PRIMARY KEY (id_producto, id_proveedor),
    ->
    ->     CONSTRAINT fk_pp_producto
    ->         FOREIGN KEY (id_producto)
    ->         REFERENCES producto(id_producto),
    ->
    ->     CONSTRAINT fk_pp_proveedor
    ->         FOREIGN KEY (id_proveedor)
    ->         REFERENCES proveedor(id_proveedor)
    -> );
Query OK, 0 rows affected (1.259 sec)

mysql> SHOW TABLES;
+----------------------+
| Tables_in_ferreteria |
+----------------------+
| categoria            |
| producto             |
| producto_proveedor   |
| proveedor            |
| ubicacion            |
+----------------------+
5 rows in set (1.209 sec)
