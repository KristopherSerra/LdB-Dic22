-- Script poblado de tablas

-- MESAS
INSERT INTO mesas (Num_Mesa,Exclusiva_Socio,Actualmente_Disponible) VALUES (1, FALSE, TRUE); 
INSERT INTO mesas (Num_Mesa,Exclusiva_Socio,Actualmente_Disponible) VALUES (2, FALSE, TRUE); 
INSERT INTO mesas (Num_Mesa,Exclusiva_Socio,Actualmente_Disponible) VALUES (3, FALSE, FALSE);
INSERT INTO mesas (Num_Mesa,Exclusiva_Socio,Actualmente_Disponible) VALUES (4, FALSE, TRUE); 
INSERT INTO mesas (Num_Mesa,Exclusiva_Socio,Actualmente_Disponible) VALUES (5, FALSE, TRUE); 
INSERT INTO mesas (Num_Mesa,Exclusiva_Socio,Actualmente_Disponible) VALUES (6, FALSE, FALSE);
INSERT INTO mesas (Num_Mesa,Exclusiva_Socio,Actualmente_Disponible) VALUES (7, FALSE, TRUE); 
INSERT INTO mesas (Num_Mesa,Exclusiva_Socio,Actualmente_Disponible) VALUES (8, FALSE, FALSE);
INSERT INTO mesas (Num_Mesa,Exclusiva_Socio,Actualmente_Disponible) VALUES (9, FALSE, TRUE);
INSERT INTO mesas (Num_Mesa,Exclusiva_Socio,Actualmente_Disponible) VALUES (10, FALSE, FALSE); 
INSERT INTO mesas (Num_Mesa,Exclusiva_Socio,Actualmente_Disponible) VALUES (11, FALSE, TRUE); 
INSERT INTO mesas (Num_Mesa,Exclusiva_Socio,Actualmente_Disponible) VALUES (12, FALSE, FALSE); 
INSERT INTO mesas (Num_Mesa,Exclusiva_Socio,Actualmente_Disponible) VALUES (13, FALSE, TRUE); 
INSERT INTO mesas (Num_Mesa,Exclusiva_Socio,Actualmente_Disponible) VALUES (14, FALSE, TRUE); 
INSERT INTO mesas (Num_Mesa,Exclusiva_Socio,Actualmente_Disponible) VALUES (15, FALSE, FALSE);
INSERT INTO mesas (Num_Mesa,Exclusiva_Socio,Actualmente_Disponible) VALUES (16, FALSE, TRUE); 
INSERT INTO mesas (Num_Mesa,Exclusiva_Socio,Actualmente_Disponible) VALUES (17, FALSE, FALSE); 
INSERT INTO mesas (Num_Mesa,Exclusiva_Socio,Actualmente_Disponible) VALUES (18, FALSE, FALSE); 
INSERT INTO mesas (Num_Mesa,Exclusiva_Socio,Actualmente_Disponible) VALUES (19, FALSE, TRUE); 
INSERT INTO mesas (Num_Mesa,Exclusiva_Socio,Actualmente_Disponible) VALUES (20,  TRUE, TRUE); 
INSERT INTO mesas (Num_Mesa,Exclusiva_Socio,Actualmente_Disponible) VALUES (21,  TRUE, FALSE); 
INSERT INTO mesas (Num_Mesa,Exclusiva_Socio,Actualmente_Disponible) VALUES (22,  TRUE, TRUE);
INSERT INTO mesas (Num_Mesa,Exclusiva_Socio,Actualmente_Disponible) VALUES (23,  TRUE, TRUE);
INSERT INTO mesas (Num_Mesa,Exclusiva_Socio,Actualmente_Disponible) VALUES (24,  TRUE, TRUE);
INSERT INTO mesas (Num_Mesa,Exclusiva_Socio,Actualmente_Disponible) VALUES (25,  TRUE, FALSE);

-- RESERVA
INSERT INTO reservas (Num_Mesa,Turno,Fecha,Numero_Socio) VALUES (3, 'noche','07/05/2009',159);
INSERT INTO reservas (Num_Mesa,Turno,Fecha,Numero_Socio) VALUES (8, 'mañana','06/02/2019',947);
INSERT INTO reservas (Num_Mesa,Turno,Fecha,Numero_Socio) VALUES (10, 'tarde','21/05/2018',001);
INSERT INTO reservas (Num_Mesa,Turno,Fecha,Numero_Socio) VALUES (12, 'noche','15/11/2000',007);
INSERT INTO reservas (Num_Mesa,Turno,Fecha,Numero_Socio) VALUES (17, 'mañana','21/05/2022',632);
INSERT INTO reservas (Num_Mesa,Turno,Fecha,Numero_Socio) VALUES (18, 'mañana','21/05/2022',632);
INSERT INTO reservas (Num_Mesa,Turno,Fecha,Numero_Socio) VALUES (22, 'tarde','07/05/2009',179);
INSERT INTO reservas (Num_Mesa,Turno,Fecha,Numero_Socio) VALUES (25, 'noche','07/05/2009',198);


-- PRODUCTO
INSERT INTO productos (Codigo_Producto, Descripcion, Precio) VALUES (418, 'Especial', '780');
INSERT INTO productos (Codigo_Producto, Descripcion, Precio) VALUES (424, 'Explosiva', '980');
INSERT INTO productos (Codigo_Producto, Descripcion, Precio) VALUES (300, 'Hamburguesa', '450');
INSERT INTO productos (Codigo_Producto, Descripcion, Precio) VALUES (326, 'Lomo completo', '880');
INSERT INTO productos (Codigo_Producto, Descripcion, Precio) VALUES (363, 'Milanesa Napolitana Completa', '900');
INSERT INTO productos (Codigo_Producto, Descripcion, Precio) VALUES (333, 'Milasesa Completa', '700');
INSERT INTO productos (Codigo_Producto, Descripcion, Precio) VALUES (430, 'Coca-Cola 500ml', '450');
INSERT INTO productos (Codigo_Producto, Descripcion, Precio) VALUES (420, 'Amstel 750ml', '750');
INSERT INTO productos (Codigo_Producto, Descripcion, Precio) VALUES (500, 'Villavicencio 900ml', '200');
INSERT INTO productos (Codigo_Producto, Descripcion, Precio) VALUES (508, 'Sprite 1,5 ltrs', '300');


-- PEDIDO
INSERT INTO Pedidos (Num_Pedido, preparar_para_llevar, porcentaje_descuento, nota, Num_Mesa, subtotal, precio_total, Fecha) VALUES (1, FALSE, 10, 'La pizza sin aceitunas.',1, 0,0, '21-05-2022');
INSERT INTO Pedidos (Num_Pedido, preparar_para_llevar, porcentaje_descuento, nota, Num_Mesa, subtotal, precio_total, Fecha) VALUES (2, FALSE, 10, '',2, 0,0, '18-06-2020');
INSERT INTO Pedidos (Num_Pedido, preparar_para_llevar, porcentaje_descuento, nota, Num_Mesa, subtotal, precio_total, Fecha) VALUES (3, FALSE, 10, '',3, 0,0, '21-05-2023');
INSERT INTO Pedidos (Num_Pedido, preparar_para_llevar, porcentaje_descuento, nota, Num_Mesa, subtotal, precio_total, Fecha) VALUES (4, FALSE, 10, '',4, 0,0, '11-10-2022');
INSERT INTO Pedidos (Num_Pedido, preparar_para_llevar, porcentaje_descuento, nota, Num_Mesa, subtotal, precio_total, Fecha) VALUES (5, FALSE, 10, '',5, 0,0, '13-08-2022');
INSERT INTO Pedidos (Num_Pedido, preparar_para_llevar, porcentaje_descuento, nota, Num_Mesa, subtotal, precio_total, Fecha) VALUES (6, FALSE, 10, '',6, 0,0, '15-06-2022');
INSERT INTO Pedidos (Num_Pedido, preparar_para_llevar, porcentaje_descuento, nota, Num_Mesa, subtotal, precio_total, Fecha) VALUES (7, FALSE, 10, '',7, 0,0, '05-09-2020');
INSERT INTO Pedidos (Num_Pedido, preparar_para_llevar, porcentaje_descuento, nota, Num_Mesa, subtotal, precio_total, Fecha) VALUES (8, FALSE, 10, '',8, 0,0, '01-01-2002');
INSERT INTO Pedidos (Num_Pedido, preparar_para_llevar, porcentaje_descuento, nota, Num_Mesa, subtotal, precio_total, Fecha) VALUES (9, FALSE, 10, '',9, 0,0, '18-02-2022');
INSERT INTO Pedidos (Num_Pedido, preparar_para_llevar, porcentaje_descuento, nota, Num_Mesa, subtotal, precio_total, Fecha) VALUES (10, FALSE, 10, '',10, 0,0, '19-03-2021');
INSERT INTO Pedidos (Num_Pedido, preparar_para_llevar, porcentaje_descuento, nota, Num_Mesa, subtotal, precio_total, Fecha) VALUES (11, FALSE,10, '',11,0,0, '19-12-2022');
INSERT INTO Pedidos (Num_Pedido, preparar_para_llevar, porcentaje_descuento, nota, Num_Mesa, subtotal, precio_total, Fecha) VALUES (12, TRUE, 10, 'La pizza sin aceitunas.',12,0, 0,'14-12-2022');
INSERT INTO Pedidos (Num_Pedido, preparar_para_llevar, porcentaje_descuento, nota, Num_Mesa, subtotal, precio_total, Fecha) VALUES (13, FALSE,  10, 'La hamburguesa sin queso y el lomo sin lechuga.', 13, 0,0,'30-10-2021');
INSERT INTO Pedidos (Num_Pedido, preparar_para_llevar, porcentaje_descuento, nota, Num_Mesa, subtotal, precio_total, Fecha) VALUES (14, TRUE, 10, '',14, 0, 0,'05-01-2022');
INSERT INTO Pedidos (Num_Pedido, preparar_para_llevar, porcentaje_descuento, nota, Num_Mesa, subtotal, precio_total, Fecha) VALUES (15, FALSE, 10, '',15, 0, 0, '27-02-2021');
INSERT INTO Pedidos (Num_Pedido, preparar_para_llevar, porcentaje_descuento, nota, Num_Mesa, subtotal, precio_total, Fecha) VALUES (16, TRUE, 10,'Sin Huevo', 16, 0, 0, '07-07-2020');
INSERT INTO Pedidos (Num_Pedido, preparar_para_llevar, porcentaje_descuento, nota, Num_Mesa, subtotal, precio_total, Fecha) VALUES (17, FALSE, 10, '', 17, 0, 0,'01-09-2020');
INSERT INTO Pedidos (Num_Pedido, preparar_para_llevar, porcentaje_descuento, nota, Num_Mesa, subtotal, precio_total, Fecha) VALUES (18, TRUE, 10, '',18, 0, 0, '03-01-2022');
INSERT INTO Pedidos (Num_Pedido, preparar_para_llevar, porcentaje_descuento, nota, Num_Mesa, subtotal, precio_total, Fecha) VALUES (19, FALSE, 10, '',19, 0, 0, '23-12-2022');
INSERT INTO Pedidos (Num_Pedido, preparar_para_llevar, porcentaje_descuento, nota, Num_Mesa, subtotal, precio_total, Fecha) VALUES (20, TRUE, 10,'1 sin paleta', 20, 0, 0,'15-11-2022');
INSERT INTO Pedidos (Num_Pedido, preparar_para_llevar, porcentaje_descuento, nota, Num_Mesa, subtotal, precio_total, Fecha) VALUES (21, TRUE, 10, '', 21, 0, 0, '19-09-2022');
INSERT INTO Pedidos (Num_Pedido, preparar_para_llevar, porcentaje_descuento, nota, Num_Mesa, subtotal, precio_total, Fecha) VALUES (22, TRUE, 10, '', 22, 0, 0, '30-09-2022');
INSERT INTO Pedidos (Num_Pedido, preparar_para_llevar, porcentaje_descuento, nota, Num_Mesa, subtotal, precio_total, Fecha) VALUES (23, TRUE, 10, '', 23, 0, 0, '25-09-2022');
INSERT INTO Pedidos (Num_Pedido, preparar_para_llevar, porcentaje_descuento, nota, Num_Mesa, subtotal, precio_total, Fecha) VALUES (24, TRUE, 10, '', 24, 0, 0, '08-08-2022');
INSERT INTO Pedidos (Num_Pedido, preparar_para_llevar, porcentaje_descuento, nota, Num_Mesa, subtotal, precio_total, Fecha) VALUES (25, TRUE, 10, '', 25, 0, 0, '06-08-2022');
INSERT INTO Pedidos (Num_Pedido, preparar_para_llevar, porcentaje_descuento, nota, Num_Mesa, subtotal, precio_total, Fecha) VALUES (26, TRUE, 10, '', 1, 0, 0, '15-08-2022');
INSERT INTO Pedidos (Num_Pedido, preparar_para_llevar, porcentaje_descuento, nota, Num_Mesa, subtotal, precio_total, Fecha) VALUES (27, TRUE, 10, '', 2, 0, 0, '17-07-2022');
INSERT INTO Pedidos (Num_Pedido, preparar_para_llevar, porcentaje_descuento, nota, Num_Mesa, subtotal, precio_total, Fecha) VALUES (28, TRUE, 10, '', 3, 0, 0, '22-06-2022');
INSERT INTO Pedidos (Num_Pedido, preparar_para_llevar, porcentaje_descuento, nota, Num_Mesa, subtotal, precio_total, Fecha) VALUES (29, TRUE, 10, '', 4, 0, 0, '21-05-2022');
INSERT INTO Pedidos (Num_Pedido, preparar_para_llevar, porcentaje_descuento, nota, Num_Mesa, subtotal, precio_total, Fecha) VALUES (30, TRUE, 10, '', 5, 0, 0, '26-01-2022');
INSERT INTO Pedidos (Num_Pedido, preparar_para_llevar, porcentaje_descuento, nota, Num_Mesa, subtotal, precio_total, Fecha) VALUES (31, TRUE, 10, '', 6, 0, 0, '30-09-2022');
INSERT INTO Pedidos (Num_Pedido, preparar_para_llevar, porcentaje_descuento, nota, Num_Mesa, subtotal, precio_total, Fecha) VALUES (32, TRUE, 10, '', 7, 0, 0, '01-11-2022');
INSERT INTO Pedidos (Num_Pedido, preparar_para_llevar, porcentaje_descuento, nota, Num_Mesa, subtotal, precio_total, Fecha) VALUES (33, TRUE, 10, '', 8, 0, 0, '01-11-2022');
INSERT INTO Pedidos (Num_Pedido, preparar_para_llevar, porcentaje_descuento, nota, Num_Mesa, subtotal, precio_total, Fecha) VALUES (34, TRUE, 10, '', 9, 0, 0, '20-10-2022');
INSERT INTO Pedidos (Num_Pedido, preparar_para_llevar, porcentaje_descuento, nota, Num_Mesa, subtotal, precio_total, Fecha) VALUES (35, TRUE, 10, '', 10, 0, 0, '13-10-2022');
INSERT INTO Pedidos (Num_Pedido, preparar_para_llevar, porcentaje_descuento, nota, Num_Mesa, subtotal, precio_total, Fecha) VALUES (36, TRUE, 10, '', 11, 0, 0, '11-10-2022');
INSERT INTO Pedidos (Num_Pedido, preparar_para_llevar, porcentaje_descuento, nota, Num_Mesa, subtotal, precio_total, Fecha) VALUES (37, TRUE, 10, '', 12, 0, 0, '10-12-2022');
INSERT INTO Pedidos (Num_Pedido, preparar_para_llevar, porcentaje_descuento, nota, Num_Mesa, subtotal, precio_total, Fecha) VALUES (38, TRUE, 10, '', 13, 0, 0, '19-12-2022');
INSERT INTO Pedidos (Num_Pedido, preparar_para_llevar, porcentaje_descuento, nota, Num_Mesa, subtotal, precio_total, Fecha) VALUES (39, TRUE, 10, '', 14, 0, 0, '05-12-2022');
INSERT INTO Pedidos (Num_Pedido, preparar_para_llevar, porcentaje_descuento, nota, Num_Mesa, subtotal, precio_total, Fecha) VALUES (40, TRUE, 10, '', 15, 0, 0, '09-12-2022');

-- PRODUCTOS POR PEDIDO
INSERT INTO productos_por_pedido (num_pedido, codigo_producto, cantidad) VALUES (1,363,2); --Pedido 1, 2 x Napolitanas completas
INSERT INTO productos_por_pedido (num_pedido, codigo_producto, cantidad) VALUES (1,430,2); --Pedido 1, 2 x Cocas 500ml
INSERT INTO productos_por_pedido (num_pedido, codigo_producto, cantidad) VALUES (2,418,1); --Pedido 2, 1 x Pizza Especial
INSERT INTO productos_por_pedido (num_pedido, codigo_producto, cantidad) VALUES (2,420,1); --Pedido 2, 1 x Amstel 750ml
INSERT INTO productos_por_pedido (num_pedido, codigo_producto, cantidad) VALUES (3,300,1); --Pedido 3, 1 x Hamburguesa
INSERT INTO productos_por_pedido (num_pedido, codigo_producto, cantidad) VALUES (3,326,1); --Pedido 3, 1 x Lomo Completo
INSERT INTO productos_por_pedido (num_pedido, codigo_producto, cantidad) VALUES (3,508,2); --Pedido 3, 2 x Sprite 1,5 ltrs.
INSERT INTO productos_por_pedido (num_pedido, codigo_producto, cantidad) VALUES (3,500,1); --Pedido 3, 1 x Villavicencio 900ml
INSERT INTO productos_por_pedido (num_pedido, codigo_producto, cantidad) VALUES (4,424,5); --Pedido 4, 5 x Explosiva (Pizza)
INSERT INTO productos_por_pedido (num_pedido, codigo_producto, cantidad) VALUES (5,420,4); --Pedido 5, 4 x Amstel 750 ml.
INSERT INTO productos_por_pedido (num_pedido, codigo_producto, cantidad) VALUES (6,333,2); --Pedido 6, 2 x Milanesas Completas
INSERT INTO productos_por_pedido (num_pedido, codigo_producto, cantidad) VALUES (6,508,2); --Pedido 6, 2 x Sprite 1,5 ltrs. 
INSERT INTO productos_por_pedido (num_pedido, codigo_producto, cantidad) VALUES (7,418,2); --Pedido 7, 2 x Pizza Especial
INSERT INTO productos_por_pedido (num_pedido, codigo_producto, cantidad) VALUES (7,430,2); --Pedido 7, 2 x Coca 500ml.
INSERT INTO productos_por_pedido (num_pedido, codigo_producto, cantidad) VALUES (8,326,2); --Pedido 8, 2 x Lomo Completo
INSERT INTO productos_por_pedido (num_pedido, codigo_producto, cantidad) VALUES (8,500,3); --Pedido 8, 3 x Villavicencio 900ml.
INSERT INTO productos_por_pedido (num_pedido, codigo_producto, cantidad) VALUES (9,300,1); --Pedido 9, 1 x Hamburguesa
INSERT INTO productos_por_pedido (num_pedido, codigo_producto, cantidad) VALUES (9,420,1); --Pedido 9, 1 x Amstel 750 ml.
INSERT INTO productos_por_pedido (num_pedido, codigo_producto, cantidad) VALUES (10,363,3); --Pedido 10, 3 x Napolitanas Completas

-- REPARTIDORES
INSERT INTO repartidores (dni_repartidor,Nombre,Apellido) VALUES (39293219,'Cristian','Serra');
INSERT INTO repartidores (dni_repartidor,Nombre,Apellido) VALUES (28985624,'Adriana','Rivero');
INSERT INTO repartidores (dni_repartidor,Nombre,Apellido) VALUES (96584762,'Agustina','Rivas');
INSERT INTO repartidores (dni_repartidor,Nombre,Apellido) VALUES (38595268,'Juan Pablo','Blanchoud');
INSERT INTO repartidores (dni_repartidor,Nombre,Apellido) VALUES (14859654,'Federico','Simone');
INSERT INTO repartidores (dni_repartidor,Nombre,Apellido) VALUES (43094411,'Luciano','Martinez');
INSERT INTO repartidores (dni_repartidor,Nombre,Apellido) VALUES (43568151,'Hitomi','Diaconchuk');
INSERT INTO repartidores (dni_repartidor,Nombre,Apellido) VALUES (41987562,'Sebastian','Gonzalez');
INSERT INTO repartidores (dni_repartidor,Nombre,Apellido) VALUES (39895263,'Natalia','Alvarez');
INSERT INTO repartidores (dni_repartidor,Nombre,Apellido) VALUES (30589624,'Franco','Rodriguez');

-- PEDIDO PARA LLEVAR
INSERT INTO Pedidos_para_llevar (Num_Pedido, Nombre_Completo_cliente, Horario, Direccion, DNI_Repartidor) VALUES (1, 'Pedro Alfonso', '15:30', 'Rivadavia 157', 39293219);
INSERT INTO Pedidos_para_llevar (Num_Pedido, Nombre_Completo_cliente, Horario, Direccion, DNI_Repartidor) VALUES (2, 'Abelardo Demicheli', '20:30', 'Chacabuco 302', 28985624);
INSERT INTO Pedidos_para_llevar (Num_Pedido, Nombre_Completo_cliente, Horario, Direccion, DNI_Repartidor) VALUES (3, 'Humberto Perez', '12:00', 'Pellegrini 85',96584762);
INSERT INTO Pedidos_para_llevar (Num_Pedido, Nombre_Completo_cliente, Horario, Direccion, DNI_Repartidor) VALUES (4, 'Rodrigo Saenz','13:45', 'Roque Saenz Peña 420',38595268);
INSERT INTO Pedidos_para_llevar (Num_Pedido, Nombre_Completo_cliente, Horario, Direccion, DNI_Repartidor) VALUES (5, 'Mateo Zujatovich', '17:20', 'Leandro N. Alem 1985',14859654);
INSERT INTO Pedidos_para_llevar (Num_Pedido, Nombre_Completo_cliente, Horario, Direccion, DNI_Repartidor) VALUES (6, 'Mateo Zujatovich', '17:20', 'Leandro N. Alem 1985',14859654);
INSERT INTO Pedidos_para_llevar (Num_Pedido, Nombre_Completo_cliente, Horario, Direccion, DNI_Repartidor) VALUES (7, 'Sebastian Teysera', '11:30', 'Pedro Gambaro 52',39293219);
INSERT INTO Pedidos_para_llevar (Num_Pedido, Nombre_Completo_cliente, Horario, Direccion, DNI_Repartidor) VALUES (8, 'Alvaro Perez', '11:30', 'Pedro Gambaro 79',39293219);
INSERT INTO Pedidos_para_llevar (Num_Pedido, Nombre_Completo_cliente, Horario, Direccion, DNI_Repartidor) VALUES (9, 'Pablo Guyot', '11:30', 'Pedro Gambaro 985',39293219);
INSERT INTO Pedidos_para_llevar (Num_Pedido, Nombre_Completo_cliente, Horario, Direccion, DNI_Repartidor) VALUES (10, 'Willy Iturri', '20:00', 'Pedro Gambaro 5',39293219);
INSERT INTO Pedidos_para_llevar (Num_Pedido, Nombre_Completo_cliente, Horario, Direccion, DNI_Repartidor) VALUES (11, 'Alfredo Toth', '20:00', 'Pedro Gambaro 23',39293219);
INSERT INTO Pedidos_para_llevar (Num_Pedido, Nombre_Completo_cliente, Horario, Direccion, DNI_Repartidor) VALUES (12, 'Luis Alberto Spinetta', '20:00', 'Pedro Gambaro 948',39293219);
INSERT INTO Pedidos_para_llevar (Num_Pedido, Nombre_Completo_cliente, Horario, Direccion, DNI_Repartidor) VALUES (13, 'Carlos Alberto Garcia Moreno', '20:00', 'Italia 128',14859654);
INSERT INTO Pedidos_para_llevar (Num_Pedido, Nombre_Completo_cliente, Horario, Direccion, DNI_Repartidor) VALUES (14, 'Gustavo Cerati', '20:00', 'Italia 428',14859654);
INSERT INTO Pedidos_para_llevar (Num_Pedido, Nombre_Completo_cliente, Horario, Direccion, DNI_Repartidor) VALUES (15, 'Rodolfo Paez', '20:00', 'Italia 1228',14859654);
INSERT INTO Pedidos_para_llevar (Num_Pedido, Nombre_Completo_cliente, Horario, Direccion, DNI_Repartidor) VALUES (16, 'David Gilmoure', '20:30', 'Italia 643',14859654);
INSERT INTO Pedidos_para_llevar (Num_Pedido, Nombre_Completo_cliente, Horario, Direccion, DNI_Repartidor) VALUES (17, 'Rogelio Aguas', '20:30', 'Italia 1998',14859654);
INSERT INTO Pedidos_para_llevar (Num_Pedido, Nombre_Completo_cliente, Horario, Direccion, DNI_Repartidor) VALUES (18, 'Hilda Lizarazu', '20:30', 'Italia 1198',30589624);
INSERT INTO Pedidos_para_llevar (Num_Pedido, Nombre_Completo_cliente, Horario, Direccion, DNI_Repartidor) VALUES (19, 'Fabiana Cantilo', '20:30', 'Italia 306',30589624);
INSERT INTO Pedidos_para_llevar (Num_Pedido, Nombre_Completo_cliente, Horario, Direccion, DNI_Repartidor) VALUES (20, 'Miguel Cantilo', '20:30', 'Italia 603',30589624);
INSERT INTO Pedidos_para_llevar (Num_Pedido, Nombre_Completo_cliente, Horario, Direccion, DNI_Repartidor) VALUES (21, 'Lito Nebbia', '20:30', 'Italia 287',30589624);
INSERT INTO Pedidos_para_llevar (Num_Pedido, Nombre_Completo_cliente, Horario, Direccion, DNI_Repartidor) VALUES (22, 'Nito Mestre', '20:30', 'Italia 782',30589624);
INSERT INTO Pedidos_para_llevar (Num_Pedido, Nombre_Completo_cliente, Horario, Direccion, DNI_Repartidor) VALUES (23, 'Pedro Aznar', '20:30', 'Italia 827',43094411);
INSERT INTO Pedidos_para_llevar (Num_Pedido, Nombre_Completo_cliente, Horario, Direccion, DNI_Repartidor) VALUES (24, 'David Lebon', '20:30', 'Italia 872',43094411);
INSERT INTO Pedidos_para_llevar (Num_Pedido, Nombre_Completo_cliente, Horario, Direccion, DNI_Repartidor) VALUES (25, 'Oscar Moro', '21:00', 'España 1454',43094411);
INSERT INTO Pedidos_para_llevar (Num_Pedido, Nombre_Completo_cliente, Horario, Direccion, DNI_Repartidor) VALUES (26, 'Gustavo Bazterrica', '21:00', 'España 1544',43094411);
INSERT INTO Pedidos_para_llevar (Num_Pedido, Nombre_Completo_cliente, Horario, Direccion, DNI_Repartidor) VALUES (27, 'Gustavo Cerati', '21:00', 'España 544',43094411);
INSERT INTO Pedidos_para_llevar (Num_Pedido, Nombre_Completo_cliente, Horario, Direccion, DNI_Repartidor) VALUES (28, 'Carlos Alberti', '21:00', 'España 1739',43568151);
INSERT INTO Pedidos_para_llevar (Num_Pedido, Nombre_Completo_cliente, Horario, Direccion, DNI_Repartidor) VALUES (29, 'Hector Pedro Juan Bosio', '21:00', 'España 1379',43568151);
INSERT INTO Pedidos_para_llevar (Num_Pedido, Nombre_Completo_cliente, Horario, Direccion, DNI_Repartidor) VALUES (30, 'Alejandro Sokol', '21:00', 'España 1973',43568151);
