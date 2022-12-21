-- Listar el nombre y apellido de los empleados que hicieron entregas a domicilio el 10/05/2021

SELECT E.nombre, E.apellido FROM empleado E 
INNER JOIN pedido_para_llevar L ON L.dni_delivery = E.dni_empleado 
INNER JOIN pedido P ON L.num_pedido = P.num_pedido AND P.fecha = '10/05/2021';