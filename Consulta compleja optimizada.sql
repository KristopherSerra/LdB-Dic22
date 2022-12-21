/*Retorna solo los números de los pedidos repartidos por luciano que tienen hamburguesa.
Se implementa una subconsulta para separar la búsqueda con ambas condiciones (dni_repartidor = 43094411,
codigo_producto=300) en dos búsquedas separadas.
*/
/*
SELECT num_pedido FROM (SELECT PPP.num_pedido,PPP.codigo_producto, PPL.dni_repartidor 
	FROM productos_por_pedido PPP 
	NATURAL JOIN pedidos_para_llevar PPL 
	WHERE PPL.dni_repartidor = 43094411) AS entregasluciano
WHERE codigo_producto = 300;
*/

--retorna las fechas en la que luciano entregó una hamburguesa
/*
	SELECT fecha FROM pedidos 
		WHERE num_pedido = 
		(SELECT num_pedido FROM (SELECT PPP.num_pedido,PPP.codigo_producto, PPL.dni_repartidor 
	FROM productos_por_pedido PPP 
	NATURAL JOIN pedidos_para_llevar PPL 
	WHERE PPL.dni_repartidor = 43094411) AS entregasluciano
WHERE codigo_producto = 300);
*/

--retorna las mesas reservadas en las fechas en la que luciano entregó una hamburguesa
/*
	SELECT num_mesa FROM reservas WHERE fecha = (SELECT fecha FROM pedidos 
		WHERE num_pedido = 
		(SELECT num_pedido FROM (SELECT PPP.num_pedido,PPP.codigo_producto, PPL.dni_repartidor 
	FROM productos_por_pedido PPP 
	NATURAL JOIN pedidos_para_llevar PPL 
	WHERE PPL.dni_repartidor = 43094411) AS entregasluciano
WHERE codigo_producto = 300));
*/


/*retorna el numero de todos los pedidos hechos por las mesas reservadas en una fecha en la que
luciano haya repartido una hamburguesa*/

/* SELECT num_pedido FROM pedidos WHERE num_mesa = (SELECT num_mesa FROM reservas WHERE fecha = (SELECT fecha FROM pedidos 
		WHERE num_pedido = 
		(SELECT num_pedido FROM (SELECT PPP.num_pedido,PPP.codigo_producto, PPL.dni_repartidor 
	FROM productos_por_pedido PPP 
	NATURAL JOIN pedidos_para_llevar PPL 
	WHERE PPL.dni_repartidor = 43094411) AS entregasluciano
WHERE codigo_producto = 300)));
 */

/* retorna todos los productos que se pidieron desde mesas reservadas en las fechas en las cules
luciano haya repartido una hamburguesa*/

/* SELECT * FROM productos_por_pedido WHERE num_pedido = (SELECT num_pedido FROM pedidos WHERE num_mesa = (SELECT num_mesa FROM reservas WHERE fecha = (SELECT fecha FROM pedidos 
		WHERE num_pedido = 
		(SELECT num_pedido FROM (SELECT PPP.num_pedido,PPP.codigo_producto, PPL.dni_repartidor 
	FROM productos_por_pedido PPP 
	NATURAL JOIN pedidos_para_llevar PPL 
	WHERE PPL.dni_repartidor = 43094411) AS entregasluciano
WHERE codigo_producto = 300)))); */


/*retorna la cantidad de milanesas napolitanas pedidas desde mesas reservadas
en fechas en las cuales luciano haya entregado una hamburguesa.*/

SELECT SUM(cantidad) AS total_napolitanas FROM (SELECT * FROM productos_por_pedido WHERE num_pedido = (SELECT num_pedido FROM pedidos WHERE num_mesa = (SELECT num_mesa FROM reservas WHERE fecha = (SELECT fecha FROM pedidos 
		WHERE num_pedido = 
		(SELECT num_pedido FROM (SELECT PPP.num_pedido,PPP.codigo_producto, PPL.dni_repartidor 
	FROM productos_por_pedido PPP 
	NATURAL JOIN pedidos_para_llevar PPL 
	WHERE PPL.dni_repartidor = 43094411) AS entregasluciano
WHERE codigo_producto = 300))))) AS prod_pedidos_por_reservadas
WHERE codigo_producto = 363;
