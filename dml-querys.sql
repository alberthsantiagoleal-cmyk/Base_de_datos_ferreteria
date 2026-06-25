mysql> SELECT *
    -> FROM producto;
+-------------+------------+---------------------+-----------------------------+---------+--------------+--------------+---------------+---------------------+-----------------+-----------------+--------------+--------------+
| id_producto | referencia | nombre              | descripcion                 | marca   | unidad_venta | precio_venta | estado        | cantidad_disponible | cantidad_minima | cantidad_maxima | id_categoria | id_ubicacion |
+-------------+------------+---------------------+-----------------------------+---------+--------------+--------------+---------------+---------------------+-----------------+-----------------+--------------+--------------+
|           1 | P001       | Martillo Carpintero | Martillo de acero 16 oz     | Truper  | Unidad       |     45000.00 | Disponible    |                  15 |              10 |              50 |            1 |            1 |
|           2 | P002       | Martillo Demoledor  | Martillo de acero reforzado | Truper  | Unidad       |     85000.00 | Disponible    |                   5 |              10 |              40 |            1 |            2 |
|           3 | P003       | Taladro Percutor    | Taladro eléctrico 750W      | Bosch   | Unidad       |    420000.00 | Disponible    |                  20 |               5 |              40 |            2 |            3 |
|           4 | P004       | Llave Inglesa       | Llave ajustable de acero    | Stanley | Unidad       |     65000.00 | Disponible    |                  12 |               8 |              30 |            1 |            4 |
|           5 | P005       | Tubo PVC            | Tubo PVC 1 pulgada          | Pavco   | Unidad       |     18000.00 | Disponible    |                  80 |              30 |             150 |            3 |            5 |
|           6 | P006       | Pintura Blanca      | Pintura acrílica blanca     | Pintuco | Galón        |     95000.00 | Disponible    |                   8 |              10 |              50 |            4 |            6 |
|           7 | P007       | Casco Seguridad     | Casco industrial amarillo   | 3M      | Unidad       |     55000.00 | Disponible    |                  30 |              15 |              60 |            5 |            7 |
|           8 | P008       | Guantes Carnaza     | Guantes de cuero            | 3M      | Par          |     25000.00 | Descontinuado |                   4 |               5 |              25 |            5 |            8 |
|           9 | P009       | Flexómetro          | Cinta métrica 5 metros      | Truper  | Unidad       |     28000.00 | Disponible    |                  25 |              10 |              60 |           10 |            9 |
|          10 | P010       | Nivel Láser         | Nivel láser profesional     | Bosch   | Unidad       |    650000.00 | Disponible    |                   3 |               2 |              15 |           10 |           10 |
+-------------+------------+---------------------+-----------------------------+---------+--------------+--------------+---------------+---------------------+-----------------+-----------------+--------------+--------------+
10 rows in set (1.119 sec)

mysql> SELECT *
    -> FROM categoria
    -> WHERE nombre LIKE 'H%';
+--------------+-----------------------+----------------------------+
| id_categoria | nombre                | descripcion                |
+--------------+-----------------------+----------------------------+
|            1 | Herramientas Manuales | Herramientas de uso manual |
+--------------+-----------------------+----------------------------+
1 row in set (1.115 sec)

mysql> SELECT referencia, nombre, marca
    -> FROM producto
    -> WHERE nombre LIKE 'Martillo%';
+------------+---------------------+--------+
| referencia | nombre              | marca  |
+------------+---------------------+--------+
| P001       | Martillo Carpintero | Truper |
| P002       | Martillo Demoledor  | Truper |
+------------+---------------------+--------+
2 rows in set (1.113 sec)

mysql> SELECT *
    -> FROM producto
    -> WHERE descripcion LIKE '%acero%';
+-------------+------------+---------------------+-----------------------------+---------+--------------+--------------+------------+---------------------+-----------------+-----------------+--------------+--------------+
| id_producto | referencia | nombre              | descripcion                 | marca   | unidad_venta | precio_venta | estado     | cantidad_disponible | cantidad_minima | cantidad_maxima | id_categoria | id_ubicacion |
+-------------+------------+---------------------+-----------------------------+---------+--------------+--------------+------------+---------------------+-----------------+-----------------+--------------+--------------+
|           1 | P001       | Martillo Carpintero | Martillo de acero 16 oz     | Truper  | Unidad       |     45000.00 | Disponible |                  15 |              10 |              50 |            1 |            1 |
|           2 | P002       | Martillo Demoledor  | Martillo de acero reforzado | Truper  | Unidad       |     85000.00 | Disponible |                   5 |              10 |              40 |            1 |            2 |
|           4 | P004       | Llave Inglesa       | Llave ajustable de acero    | Stanley | Unidad       |     65000.00 | Disponible |                  12 |               8 |              30 |            1 |            4 |
+-------------+------------+---------------------+-----------------------------+---------+--------------+--------------+------------+---------------------+-----------------+-----------------+--------------+--------------+
3 rows in set (1.107 sec)

mysql> SELECT *
    -> FROM producto
    -> WHERE marca='Truper'
    -> AND estado='Disponible';
+-------------+------------+---------------------+-----------------------------+--------+--------------+--------------+------------+---------------------+-----------------+-----------------+--------------+--------------+
| id_producto | referencia | nombre              | descripcion                 | marca  | unidad_venta | precio_venta | estado     | cantidad_disponible | cantidad_minima | cantidad_maxima | id_categoria | id_ubicacion |
+-------------+------------+---------------------+-----------------------------+--------+--------------+--------------+------------+---------------------+-----------------+-----------------+--------------+--------------+
|           1 | P001       | Martillo Carpintero | Martillo de acero 16 oz     | Truper | Unidad       |     45000.00 | Disponible |                  15 |              10 |              50 |            1 |            1 |
|           2 | P002       | Martillo Demoledor  | Martillo de acero reforzado | Truper | Unidad       |     85000.00 | Disponible |                   5 |              10 |              40 |            1 |            2 |
|           9 | P009       | Flexómetro          | Cinta métrica 5 metros      | Truper | Unidad       |     28000.00 | Disponible |                  25 |              10 |              60 |           10 |            9 |
+-------------+------------+---------------------+-----------------------------+--------+--------------+--------------+------------+---------------------+-----------------+-----------------+--------------+--------------+
3 rows in set (1.183 sec)

mysql> SELECT *
    -> FROM producto
    -> WHERE cantidad_disponible < cantidad_minima;
+-------------+------------+--------------------+-----------------------------+---------+--------------+--------------+---------------+---------------------+-----------------+-----------------+--------------+--------------+
| id_producto | referencia | nombre             | descripcion                 | marca   | unidad_venta | precio_venta | estado        | cantidad_disponible | cantidad_minima | cantidad_maxima | id_categoria | id_ubicacion |
+-------------+------------+--------------------+-----------------------------+---------+--------------+--------------+---------------+---------------------+-----------------+-----------------+--------------+--------------+
|           2 | P002       | Martillo Demoledor | Martillo de acero reforzado | Truper  | Unidad       |     85000.00 | Disponible    |                   5 |              10 |              40 |            1 |            2 |
|           6 | P006       | Pintura Blanca     | Pintura acrílica blanca     | Pintuco | Galón        |     95000.00 | Disponible    |                   8 |              10 |              50 |            4 |            6 |
|           8 | P008       | Guantes Carnaza    | Guantes de cuero            | 3M      | Par          |     25000.00 | Descontinuado |                   4 |               5 |              25 |            5 |            8 |
+-------------+------------+--------------------+-----------------------------+---------+--------------+--------------+---------------+---------------------+-----------------+-----------------+--------------+--------------+
3 rows in set (1.108 sec)

mysql> SELECT *
    -> FROM producto
    -> WHERE cantidad_disponible < cantidad_minima;
+-------------+------------+--------------------+-----------------------------+---------+--------------+--------------+---------------+---------------------+-----------------+-----------------+--------------+--------------+
| id_producto | referencia | nombre             | descripcion                 | marca   | unidad_venta | precio_venta | estado        | cantidad_disponible | cantidad_minima | cantidad_maxima | id_categoria | id_ubicacion |
+-------------+------------+--------------------+-----------------------------+---------+--------------+--------------+---------------+---------------------+-----------------+-----------------+--------------+--------------+
|           2 | P002       | Martillo Demoledor | Martillo de acero reforzado | Truper  | Unidad       |     85000.00 | Disponible    |                   5 |              10 |              40 |            1 |            2 |
|           6 | P006       | Pintura Blanca     | Pintura acrílica blanca     | Pintuco | Galón        |     95000.00 | Disponible    |                   8 |              10 |              50 |            4 |            6 |
|           8 | P008       | Guantes Carnaza    | Guantes de cuero            | 3M      | Par          |     25000.00 | Descontinuado |                   4 |               5 |              25 |            5 |            8 |
+-------------+------------+--------------------+-----------------------------+---------+--------------+--------------+---------------+---------------------+-----------------+-----------------+--------------+--------------+
3 rows in set (1.116 sec)

mysql> SELECT *
    -> FROM producto
    -> WHERE cantidad_disponible < cantidad_minima
    -> OR cantidad_disponible > cantidad_maxima;
+-------------+------------+--------------------+-----------------------------+---------+--------------+--------------+---------------+---------------------+-----------------+-----------------+--------------+--------------+
| id_producto | referencia | nombre             | descripcion                 | marca   | unidad_venta | precio_venta | estado        | cantidad_disponible | cantidad_minima | cantidad_maxima | id_categoria | id_ubicacion |
+-------------+------------+--------------------+-----------------------------+---------+--------------+--------------+---------------+---------------------+-----------------+-----------------+--------------+--------------+
|           2 | P002       | Martillo Demoledor | Martillo de acero reforzado | Truper  | Unidad       |     85000.00 | Disponible    |                   5 |              10 |              40 |            1 |            2 |
|           6 | P006       | Pintura Blanca     | Pintura acrílica blanca     | Pintuco | Galón        |     95000.00 | Disponible    |                   8 |              10 |              50 |            4 |            6 |
|           8 | P008       | Guantes Carnaza    | Guantes de cuero            | 3M      | Par          |     25000.00 | Descontinuado |                   4 |               5 |              25 |            5 |            8 |
+-------------+------------+--------------------+-----------------------------+---------+--------------+--------------+---------------+---------------------+-----------------+-----------------+--------------+--------------+
3 rows in set (1.111 sec)

mysql> SELECT *
    -> FROM proveedor
    -> WHERE ciudad='Bogotá'
    -> AND estado='Activo';
+--------------+-----------+-------------------+--------------+------------+-------------------+-----------------+--------+--------+
| id_proveedor | nit       | nombre            | contacto     | telefono   | correo            | direccion       | ciudad | estado |
+--------------+-----------+-------------------+--------------+------------+-------------------+-----------------+--------+--------+
|            1 | 900100001 | Industrial Truper | Carlos Gómez | 3001111111 | ventas@truper.com | Cra 10 #20-30   | Bogotá | Activo |
|            4 | 900100004 | Suministros ABC   | Laura Díaz   | 3004444444 | abc@gmail.com     | Calle 12 #14-22 | Bogotá | Activo |
|            8 | 900100008 | Todo Construcción | Sandra López | 3008888888 | todo@gmail.com    | Calle 55 #10-12 | Bogotá | Activo |
+--------------+-----------+-------------------+--------------+------------+-------------------+-----------------+--------+--------+
3 rows in set (1.114 sec)

mysql> -- 9. Mostrar los proveedores cuyo nombre contenga la palabra Industrial o cuya ciudad sea Cali.
Query OK, 0 rows affected (1.107 sec)

mysql>
mysql> SELECT *
    -> FROM proveedor
    -> WHERE nombre LIKE '%Industrial%'
    -> OR ciudad='Cali';
+--------------+-----------+----------------------+--------------+------------+------------------------+-----------------+--------+--------+
| id_proveedor | nit       | nombre               | contacto     | telefono   | correo                 | direccion       | ciudad | estado |
+--------------+-----------+----------------------+--------------+------------+------------------------+-----------------+--------+--------+
|            1 | 900100001 | Industrial Truper    | Carlos Gómez | 3001111111 | ventas@truper.com      | Cra 10 #20-30   | Bogotá | Activo |
|            2 | 900100002 | FerreTodo            | Ana Ruiz     | 3002222222 | contacto@ferretodo.com | Calle 20 #30-40 | Cali   | Activo |
|            6 | 900100006 | Industrial del Norte | Paula León   | 3006666666 | norte@gmail.com        | Calle 45 #22-10 | Cali   | Activo |
+--------------+-----------+----------------------+--------------+------------+------------------------+-----------------+--------+--------+
3 rows in set (1.109 sec)

mysql> SELECT *
    -> FROM proveedor
    -> WHERE nombre LIKE '%Industrial%'
    -> OR ciudad='Cali';
+--------------+-----------+----------------------+--------------+------------+------------------------+-----------------+--------+--------+
| id_proveedor | nit       | nombre               | contacto     | telefono   | correo                 | direccion       | ciudad | estado |
+--------------+-----------+----------------------+--------------+------------+------------------------+-----------------+--------+--------+
|            1 | 900100001 | Industrial Truper    | Carlos Gómez | 3001111111 | ventas@truper.com      | Cra 10 #20-30   | Bogotá | Activo |
|            2 | 900100002 | FerreTodo            | Ana Ruiz     | 3002222222 | contacto@ferretodo.com | Calle 20 #30-40 | Cali   | Activo |
|            6 | 900100006 | Industrial del Norte | Paula León   | 3006666666 | norte@gmail.com        | Calle 45 #22-10 | Cali   | Activo |
+--------------+-----------+----------------------+--------------+------------+------------------------+-----------------+--------+--------+
3 rows in set (1.113 sec)

mysql> SELECT *
    -> FROM producto_proveedor
    -> WHERE dias_entrega > 7
    -> OR precio_compra > 500000;
+-------------+--------------+----------------------+---------------+--------------+
| id_producto | id_proveedor | referencia_proveedor | precio_compra | dias_entrega |
+-------------+--------------+----------------------+---------------+--------------+
|           3 |            3 | BOS001               |     350000.00 |            8 |
|           6 |            8 | TOD001               |      70000.00 |           10 |
|           8 |            9 | ACE002               |      18000.00 |            9 |
|          10 |            3 | BOS010               |     520000.00 |           12 |
+-------------+--------------+----------------------+---------------+--------------+
4 rows in set (1.291 sec)
