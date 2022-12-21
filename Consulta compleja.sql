--retorna los números de los pedidos en los cuales luciano repartió una hamburguesa
/*SELECT num_pedido FROM productos_por_pedido PPP 
NATURAL JOIN pedidos_para_llevar PPL  
WHERE PPL.dni_repartidor = 43094411 AND PPP.codigo_producto = 300;
*/

--retorna las fechas en la que luciano entregó una hamburguesa
/*
	SELECT fecha FROM pedidos 
		WHERE num_pedido = 
		(SELECT num_pedido FROM productos_por_pedido PPP 
		 NATURAL JOIN pedidos_para_llevar PPL  
		 WHERE PPL.dni_repartidor = 43094411 AND PPP.codigo_producto = 300);
*/

--retorna las mesas reservadas en las fechas en la que luciano entregó una hamburguesa
/*
SELECT num_mesa FROM reservas WHERE fecha = (SELECT fecha FROM pedidos 
	WHERE num_pedido = (SELECT num_pedido FROM productos_por_pedido PPP 
		NATURAL JOIN pedidos_para_llevar PPL  
		WHERE PPL.dni_repartidor = 43094411 AND PPP.codigo_producto = 300));
*/


/*retorna el numero de todos los pedidos hechos por las mesas reservadas en una fecha en la que
luciano haya repartido una hamburguesa*/
/*
SELECT pedidos.num_pedido FROM pedidos 
INNER JOIN mesas 
ON pedidos.num_mesa = mesas.num_mesa
AND mesas.num_mesa = (SELECT num_mesa FROM reservas 
					  WHERE fecha = (SELECT fecha FROM pedidos 
									 WHERE num_pedido = (SELECT num_pedido FROM productos_por_pedido PPP 
														 NATURAL JOIN pedidos_para_llevar PPL  
														 WHERE PPL.dni_repartidor = 43094411 AND PPP.codigo_producto = 300))) ;
*/

/*retorna todos los productos pedidos desde mesas reservadas en una fecha en la que
luciano haya repartido una hamburguesa*/
/*
SELECT * FROM productos_por_pedido 
WHERE num_pedido = (SELECT mesas.num_mesa FROM pedidos 
	INNER JOIN mesas 
	ON pedidos.num_mesa = mesas.num_mesa
	AND mesas.num_mesa = (SELECT num_mesa FROM reservas 
						  WHERE fecha = (SELECT fecha FROM pedidos 
										 WHERE num_pedido = (SELECT num_pedido FROM productos_por_pedido PPP 
															 NATURAL JOIN pedidos_para_llevar PPL  
															 WHERE PPL.dni_repartidor = 43094411 AND PPP.codigo_producto = 300))));
*/

/*retorna la cantidad de milanesas napolitanas pedidas desde mesas reservadas
en fechas en las cuales luciano haya entregado una hamburguesa.*/
SELECT SUM(cantidad) AS cant_napolitanas FROM productos_por_pedido 
WHERE num_pedido = (SELECT mesas.num_mesa FROM pedidos 
					INNER JOIN mesas 
					ON pedidos.num_mesa = mesas.num_mesa
					AND mesas.num_mesa = (SELECT num_mesa FROM reservas 
										 WHERE fecha = (SELECT fecha FROM pedidos 
										 				WHERE num_pedido = (SELECT num_pedido FROM productos_por_pedido PPP 
															 				NATURAL JOIN pedidos_para_llevar PPL  
															 				WHERE PPL.dni_repartidor = 43094411 AND PPP.codigo_producto = 300))))
AND codigo_producto = 363;