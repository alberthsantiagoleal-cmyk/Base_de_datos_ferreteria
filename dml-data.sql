mysql> INSERT INTO categoria (nombre, descripcion) VALUES
    -> ('Herramientas Manuales','Herramientas de uso manual'),
    -> ('Electricidad','Materiales eléctricos'),
    -> ('Plomería','Accesorios para plomería'),
    -> ('Pinturas','Pinturas y accesorios'),
    -> ('Seguridad','Elementos de protección'),
    -> ('Ferretería Pesada','Herramientas industriales'),
    -> ('Jardinería','Herramientas para jardín'),
    -> ('Tornillería','Tornillos y pernos'),
    -> ('Construcción','Materiales para construcción'),
    -> ('Medición','Instrumentos de medición');
Query OK, 10 rows affected (1.835 sec)
Records: 10  Duplicates: 0  Warnings: 0

mysql> INSERT INTO ubicacion (pasillo, estante) VALUES
    -> ('A','1'),
    -> ('A','2'),
    -> ('A','3'),
    -> ('B','1'),
    -> ('B','2'),
    -> ('B','3'),
    -> ('C','1'),
    -> ('C','2'),
    -> ('C','3'),
    -> ('D','1');
Query OK, 10 rows affected (1.140 sec)
Records: 10  Duplicates: 0  Warnings: 0

mysql> INSERT INTO proveedor
    -> (nit,nombre,contacto,telefono,correo,direccion,ciudad,estado)
    -> VALUES
    -> ('900100001','Industrial Truper','Carlos Gómez','3001111111','ventas@truper.com','Cra 10 #20-30','Bogotá','Activo'),
    -> ('900100002','FerreTodo','Ana Ruiz','3002222222','contacto@ferretodo.com','Calle 20 #30-40','Cali','Activo'),
    -> ('900100003','Distribuciones Omega','Luis Pérez','3003333333','omega@gmail.com','Cra 15 #50-20','Medellín','Activo'),
    -> ('900100004','Suministros ABC','Laura Díaz','3004444444','abc@gmail.com','Calle 12 #14-22','Bogotá','Activo'),
    -> ('900100005','Importadora Central','Mario Rojas','3005555555','importadora@gmail.com','Cra 9 #8-10','Barranquilla','Inactivo'),
    -> ('900100006','Industrial del Norte','Paula León','3006666666','norte@gmail.com','Calle 45 #22-10','Cali','Activo'),
    -> ('900100007','Herramax','Jorge Niño','3007777777','herramax@gmail.com','Cra 30 #44-12','Bucaramanga','Activo'),
    -> ('900100008','Todo Construcción','Sandra López','3008888888','todo@gmail.com','Calle 55 #10-12','Bogotá','Activo'),
    -> ('900100009','Acero SAS','David Rincón','3009999999','acero@gmail.com','Cra 70 #22-33','Cúcuta','Activo'),
    -> ('900100010','Proveedor Global','Natalia Castro','3010000000','global@gmail.com','Calle 100 #20-10','Cartagena','Activo');
Query OK, 10 rows affected (1.165 sec)
Records: 10  Duplicates: 0  Warnings: 0

mysql> INSERT INTO producto
    -> (referencia,nombre,descripcion,marca,unidad_venta,precio_venta,estado,cantidad_disponible,cantidad_minima,cantidad_maxima,id_categoria,id_ubicacion)
    -> VALUES
    -> ('P001','Martillo Carpintero','Martillo de acero 16 oz','Truper','Unidad',45000,'Disponible',15,10,50,1,1),
    -> ('P002','Martillo Demoledor','Martillo de acero reforzado','Truper','Unidad',85000,'Disponible',5,10,40,1,2),
    -> ('P003','Taladro Percutor','Taladro eléctrico 750W','Bosch','Unidad',420000,'Disponible',20,5,40,2,3),
    -> ('P004','Llave Inglesa','Llave ajustable de acero','Stanley','Unidad',65000,'Disponible',12,8,30,1,4),
    -> ('P005','Tubo PVC','Tubo PVC 1 pulgada','Pavco','Unidad',18000,'Disponible',80,30,150,3,5),
    -> ('P006','Pintura Blanca','Pintura acrílica blanca','Pintuco','Galón',95000,'Disponible',8,10,50,4,6),
    -> ('P007','Casco Seguridad','Casco industrial amarillo','3M','Unidad',55000,'Disponible',30,15,60,5,7),
    -> ('P008','Guantes Carnaza','Guantes de cuero','3M','Par',25000,'Descontinuado',4,5,25,5,8),
    -> ('P009','Flexómetro','Cinta métrica 5 metros','Truper','Unidad',28000,'Disponible',25,10,60,10,9),
    -> ('P010','Nivel Láser','Nivel láser profesional','Bosch','Unidad',650000,'Disponible',3,2,15,10,10);
Query OK, 10 rows affected (1.145 sec)
Records: 10  Duplicates: 0  Warnings: 0

mysql> INSERT INTO producto_proveedor
    -> (id_producto,id_proveedor,referencia_proveedor,precio_compra,dias_entrega)
    -> VALUES
    -> (1,1,'TRU001',32000,3),
    -> (2,1,'TRU002',60000,4),
    -> (3,3,'BOS001',350000,8),
    -> (4,7,'HER001',45000,5),
    -> (5,2,'FER001',12000,6),
    -> (6,8,'TOD001',70000,10),
    -> (7,9,'ACE001',40000,7),
    -> (8,9,'ACE002',18000,9),
    -> (9,1,'TRU009',18000,4),
    -> (10,3,'BOS010',520000,12);
Query OK, 10 rows affected (1.234 sec)
Records: 10  Duplicates: 0  Warnings: 0
