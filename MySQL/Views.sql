CREATE VIEW tickets_123 AS
(SELECT v.clave, v.fecha, a.nombre AS producto, a.precio, concat(e.nombre, " ", e.apellido_paterno) AS empleado
	FROM venta v JOIN empleado e ON v.id_empleado = e.id_empleado JOIN articulo AS a ON v.id_articulo = a.id_articulo ORDER BY fecha);
    
    SELECT * FROM tickets_123;