-- INNER JOIN (A y B)
SELECT * FROM empleado AS e JOIN puesto AS p ON e.id_puesto = p.id_puesto;

-- LEFT JOIN (TODO LO DE A Y (AyB))
SELECT * FROM empleado AS e LEFT JOIN puesto AS p ON e.id_puesto = p.id_puesto;

-- RIGHT JOIN (TODO LO DE B Y (AyB))
SELECT * FROM empleado AS e RIGHT JOIN puesto AS p ON e.id_puesto = p.id_puesto;

-- RETO 5 JOINS
SELECT clave, concat(nombre," ", apellido_materno) AS empleado
FROM venta AS v
JOIN empleado AS e
ON v.id_empleado = e.id_empleado
ORDER BY clave;

SELECT clave, nombre
FROM venta AS v
JOIN articulo AS a
  ON v.id_articulo = a.id_articulo
ORDER BY clave;

SELECT clave, round(sum(precio),2) AS total
FROM venta AS v
JOIN articulo AS a
  ON v.id_articulo = a.id_articulo
GROUP BY clave
ORDER BY clave;

