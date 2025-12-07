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
