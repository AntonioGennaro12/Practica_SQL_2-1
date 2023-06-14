CREATE DATABASE clientes_db; /* Crea la base de Clientes */

SHOW DATABASES;

USE clientes_db; /*  inicio sesión con base de datos Clientes */

SHOW TABLES;

/* Creo la tabla segun los datos mínimos requeridos */
CREATE TABLE tabla_datos(
    nro_orden INT NOT NULL AUTO_INCREMENT,
    rs_nombre VARCHAR(40) NOT NULL,
    nro_cuit BIGINT NOT NULL,
    email VARCHAR (40) NOT NULL,
    telefono BIGINT,  
    PRIMARY KEY (nro_orden)
);

SHOW TABLES;

/* Describe la estructura de la tabla de datos */
DESCRIBE tabla_datos;

/*Muestra TODO(*) el contenido de la tabla indicada*/
SELECT * FROM tabla_datos;
/* indica "Empty set" */

/* Inserta varios registros en la tabla creada */
INSERT INTO tabla_datos (rs_nombre, nro_cuit, email, telefono) VALUES ("CFP_5 (Caballito)", 30444488881, "cfp5_de7@bue.edu.ar", 114902597);
SELECT * FROM tabla_datos;
/* muestra registro nro 1 OK */
INSERT INTO tabla_datos (rs_nombre, nro_cuit, email, telefono) VALUES ("Mc Donald's (Boedo)", 30111122229, "mcdonaldsboedo@gmail.com", 1149322896);
SELECT * FROM tabla_datos;
/* muestra registro nro 1 y 2 OK */ 
/* Ahor ingreso de una 3 regstros más */
INSERT INTO tabla_datos (rs_nombre, nro_cuit, email, telefono) VALUES ("Burger King (Caballito)", 30333355557, "burgerking@gmsil.com", 1155556666);
INSERT INTO tabla_datos (rs_nombre, nro_cuit, email, telefono) VALUES ("Mostaza (Boedo)", 30666677775, "mostazaboedo@gmail.com", 1166667777);
INSERT INTO tabla_datos (rs_nombre, nro_cuit, email, telefono) VALUES ("Starbucks (Caballito)", 30888844442, "starbucks@gmail.com", 1145458989);/*Seleccionar informacion de una tabla*/
SELECT * FROM tabla_datos;
/* muestra los 5 registros correctamente ! */

SELECT rs_nombre FROM tabla_datos;
/* Muestra todos los campos "rs_nombre" que son 5 */
SELECT rs_nombre, nro_cuit FROM tabla_datos;
/* Muestra todos los campos "rs_nombre" y "nro_cuit" que son 5 */
SELECT * FROM tabla_datos WHERE nro_orden = 2;
/* Muestra el registro nro 2 completo  */
SELECT * FROM tabla_datos WHERE nro_orden = 7;
/* NO muestra ningún registro ("Empty set") */
SELECT * FROM tabla_datos LIMIT 3;
SELECT * FROM tabla_datos LIMIT 5;
SELECT * FROM tabla_datos LIMIT 8;
/* Muestra los 3 primeros registros, luego los 5 primeros y por ultimo también los 5 priemros xq son solo 5 */

/* Actualiza un registro: cambia el número de CUIT del registro Nro 1 */
UPDATE tabla_datos SET nro_cuit = 30888844441 WHERE nro_orden =  1; 
/* esta es la salida */ 
/*
mysql> SELECT * FROM tabla_datos LIMIT 1;
+-----------+-------------------+-------------+---------------------+------------+
| nro_orden | rs_nombre         | nro_cuit    | email               | telefono   |
+-----------+-------------------+-------------+---------------------+------------+
|         1 | CFP_5 (Caballito) | 30888844441 | cfp5_de7@bue.edu.ar | 1149022597 |
+-----------+-------------------+-------------+---------------------+------------+
1 row in set (0.00 sec) */


/*muestro los 5 registros antes del "DELETE" del reg Nro 2 */
/*
mysql> SELECT * FROM tabla_datos LIMIT 8;
+-----------+-------------------------+-------------+--------------------------+------------+
| nro_orden | rs_nombre               | nro_cuit    | email                    | telefono   |
+-----------+-------------------------+-------------+--------------------------+------------+
|         1 | CFP_5 (Caballito)       | 30444488881 | cfp5_de7@bue.edu.ar      | 1149022597 |
|         2 | Mc Donald's (Boedo)     | 30111122229 | mcdonaldsboedo@gmail.com | 1149322896 |
|         3 | Burger King (Caballito) | 30333355557 | burgerking@gmsil.com     | 1155556666 |
|         4 | Mostaza (Boedo)         | 30666677775 | mostazaboedo@gmail.com   | 1166667777 |
|         5 | Starbucks (Caballito)   | 30888844442 | starbucks@gmail.com      | 1145458989 |
+-----------+-------------------------+-------------+--------------------------+------------+
5 rows in set (0.00 sec)
*/

/* Elimina un registro nro 2 (McDonald´s) */
DELETE FROM tabla_datos WHERE nro_orden = 2;
/* Se eliminó el registro Nro 2 */
/*
mysql> SELECT * FROM tabla_datos LIMIT 5;
+-----------+-------------------------+-------------+------------------------+------------+
| nro_orden | rs_nombre               | nro_cuit    | email                  | telefono   |
+-----------+-------------------------+-------------+------------------------+------------+
|         1 | CFP_5 (Caballito)       | 30888844441 | cfp5_de7@bue.edu.ar    | 1149022597 |
|         3 | Burger King (Caballito) | 30333355557 | burgerking@gmsil.com   | 1155556666 |
|         4 | Mostaza (Boedo)         | 30666677775 | mostazaboedo@gmail.com | 1166667777 |
|         5 | Starbucks (Caballito)   | 30888844442 | starbucks@gmail.com    | 1145458989 |
+-----------+-------------------------+-------------+------------------------+------------+
4 rows in set (0.00 sec)
*/

/* Agrego un nuevo registro, de hecho el mismo eliminado pero con un CUIT distinto*/
INSERT INTO tabla_datos (rs_nombre, nro_cuit, email, telefono) VALUES ("Mc Donald's (Boedo)", 30222211119, "mcdonaldsboedo@gmail.com", 1149322896);

SELECT * FROM tabla_datos;
/* Pido el listado completo */
/*
mysql> SELECT * FROM tabla_datos;
+-----------+-------------------------+-------------+--------------------------+------------+
| nro_orden | rs_nombre               | nro_cuit    | email                    | telefono   |
+-----------+-------------------------+-------------+--------------------------+------------+
|         1 | CFP_5 (Caballito)       | 30888844441 | cfp5_de7@bue.edu.ar      | 1149022597 |
|         3 | Burger King (Caballito) | 30333355557 | burgerking@gmsil.com     | 1155556666 |
|         4 | Mostaza (Boedo)         | 30666677775 | mostazaboedo@gmail.com   | 1166667777 |
|         5 | Starbucks (Caballito)   | 30888844442 | starbucks@gmail.com      | 1145458989 |
|         6 | Mc Donald's (Boedo)     | 30222211119 | mcdonaldsboedo@gmail.com | 1149322896 |
+-----------+-------------------------+-------------+--------------------------+------------+
5 rows in set (0.00 sec)
*/
/* Agrego Print Screen de la venta de comandos MySQL */
/*FIN*/