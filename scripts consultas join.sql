
-- Detalle completo de un pedido

SELECT 
    dp.iddetalle, 
    pr.nombre AS producto, 
    dp.cantidad, 
    dp.subtotal, 
    per.descripcion AS personalizacion
FROM detalle_pedido dp
JOIN productos pr ON dp.idproducto = pr.idproducto
LEFT JOIN personalizacion per ON dp.idpersonalizacion = per.idpersonalizacion
WHERE dp.idpedido = 3;



-- ver todos los detalles del pedido, tengan o no personalización--
SELECT dp.iddetalle, pr.nombre, per.descripcion
FROM detalle_pedido dp
LEFT JOIN productos pr ON dp.idproducto = pr.idproducto
LEFT JOIN personalizacion per ON dp.idpersonalizacion = per.idpersonalizacion;

-- Productos con rol y precio mayor a 40000 --

    SELECT p.nombre, p.precio, r.titulo
    FROM productos p
    JOIN rol r ON p.idrol = r.id
    WHERE p.precio > 40000;

