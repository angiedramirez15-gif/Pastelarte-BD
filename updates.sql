-- Cambiar dirección un correo
UPDATE clientes
SET correo = 'maicol12@gmail.com'
WHERE idcliente = 9;
-- Cambiar dirección de un cliente
UPDATE clientes
SET direccion = 'Diagonal 30 #20-19'
WHERE idcliente = 10;

-- Aumentar stock de un producto
UPDATE productos
SET stock =  10
WHERE idproducto = 5;

UPDATE productos
SET stock = stock + 15
WHERE idproducto = 6;
 
