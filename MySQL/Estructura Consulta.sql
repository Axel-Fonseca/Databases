SHOW tables;
DESCRIBE empleado;
SELECT nombre FROM empleado;
SELECT * FROM empleado WHERE apellido_paterno = "Potes";
SELECT id_empleado >= 100 OR id_puesto = 150 FROM empleado;

-- RETO 2 ESTRUCTURA DE CONSULTA
SELECT nombre FROM tienda.empleado WHERE id_empleado = 4;
SELECT nombre FROM tienda.puesto WHERE salario > 10000;
SELECT * FROM tienda.articulo WHERE precio > 1000 AND iva > 100;
SELECT * FROM tienda.venta WHERE id_articulo IN (135,963) AND id_empleadoIN (835,369);

-- RETO BUSQUEDA DE PATRONES
SELECT * FROM tienda.puesto ORDER BY salario DESC LIMIT 5;
SELECT * FROM tienda.articulo WHERE nombre LIKE '%pasta%';
SELECT * FROM tienda.articulo WHERE nombre LIKE '%Cannelloni%';
SELECT * FROM tienda.articulo WHERE nombre LIKE '%-%';

SELECT count(*) FROM tienda.articulo;

-- RETO 2 FUNCIONES DE AGRUPAMIENTO
SELECT format(avg(salario),2) AS promedio FROM puesto;
SELECT count(nombre) AS Cuantos FROM tienda.articulo WHERE nombre LIKE "%Pasta%";
SELECT max(salario) AS maximo, min(salario) AS minimo FROM puesto;
SELECT sum(salario) FROM (SELECT * FROM puesto ORDER BY id_puesto DESC LIMIT 5) puestos;

-- RETO 3 AGRUPAMIENTOS
SELECT nombre, count(*) "Total" FROM tienda.puesto GROUP BY nombre;
SELECT nombre, sum(salario) "Total salario" FROM tienda.puesto GROUP BY nombre;
SELECT id_empleado, count(*) "Total" FROM tienda.venta GROUP BY id_empleado;
SELECT id_articulo, count(*) "Total ventas" FROM tienda.venta GROUP BY id_articulo;

SELECT * FROM empleado WHERE id_puesto IN (SELECT id_puesto FROM puesto WHERE nombre = "Junior Executive");