-- Borrar un cliente específico
DELETE FROM cliente
WHERE id_cliente = 8;

DELETE FROM clientes
WHERE id_cliente = 8;


-- Borrar pedidos 
DELETE FROM pedido
WHERE fecha < '2024-01-01';

DELETE FROM pedido
WHERE id_pedido=1;

DELETE FROM pedido
WHERE id_pedido=2;