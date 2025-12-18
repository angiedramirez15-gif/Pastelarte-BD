-- Cambiar dirección un correo
UPDATE cliente
SET correo = 'maicol12@gmail.com'
WHERE id_cliente = 9;
-- Cambiar dirección de un cliente
UPDATE cliente
SET direccion = 'Diagonal 30 #20-19'
WHERE id_cliente = 10;

-- Aumentar stock de un producto
UPDATE productos
SET stock =  10
WHERE id_producto = 5;

UPDATE producto
SET stock = stock + 15
WHERE id_producto = 6;
 
