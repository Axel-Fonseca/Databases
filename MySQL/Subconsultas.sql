-- SUBCONSULTAS
SELECT * FROM empleado WHERE id_puesto IN (SELECT id_puesto FROM puesto WHERE nombre = "Junior Executive");
SELECT id_articulo,min(cantidad),max(cantidad) FROM (SELECT clave, id_articulo, count(*) AS cantidad FROM venta GROUP BY clave, id_articulo ORDER BY clave) AS subconsulta GROUP BY id_articulo;
SELECT nombre, apellido_materno, (SELECT salario FROM puesto WHERE id_puesto = empleado.id_puesto) AS sueldo FROM empleado;

-- RETO 4 SUBCONSULTAS
SELECT * FROM tienda.empleado WHERE id_puesto IN (SELECT id_puestp FROM puesto WHERE salaio < 15000);
SELECT min(id_venta), max(id_venta) FROM tienda.venta  (SELECT nombre FROM tienda.puesto WHERE salario <15000);
SELECT id_empleado, nombre, (SELECT nombre FROM puesto WHERE id_puesto = e.id_puesto) AS puesto FROM empleado AS e;