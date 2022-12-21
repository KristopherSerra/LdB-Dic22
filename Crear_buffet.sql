--Script para crear las tablas de la base de datos del buffet

--Crear tablas
CREATE TABLE public.Productos (
                Codigo_producto INTEGER NOT NULL,
                Descripcion VARCHAR NOT NULL,
                Precio REAL NOT NULL,
                CONSTRAINT producto_pk PRIMARY KEY (Codigo_producto)
);


CREATE TABLE public.Mesas (
                Num_Mesa INTEGER NOT NULL,
                Exclusiva_socio BOOLEAN NOT NULL,
                Actualmente_disponible BOOLEAN NOT NULL,
                CONSTRAINT pk_mesa PRIMARY KEY (Num_Mesa)
);


CREATE TABLE public.Reservas (
                Num_Mesa INTEGER NOT NULL,
                Turno VARCHAR NOT NULL,
                Fecha DATE NOT NULL,
                Numero_socio INTEGER NOT NULL,
                CONSTRAINT reserva_pk PRIMARY KEY (Num_Mesa, Turno, Fecha)
);


CREATE TABLE public.Repartidores (
                DNI_Repartidor INTEGER NOT NULL,
                Nombre VARCHAR(32) NOT NULL,
                Apellido VARCHAR(32) NOT NULL,
                CONSTRAINT pk_dni PRIMARY KEY (DNI_Repartidor)
);


CREATE SEQUENCE public.pedidos_num_pedido_seq;

CREATE TABLE public.Pedidos (
                Num_Pedido INTEGER NOT NULL DEFAULT nextval('public.pedidos_num_pedido_seq'),
                Porcentaje_Descuento REAL,
                Preparar_Para_LLevar BOOLEAN NOT NULL,
                Num_Mesa INTEGER,
                Nota VARCHAR,
                Subtotal REAL NOT NULL DEFAULT 0,
                Precio_total REAL NOT NULL DEFAULT 0,
                Fecha DATE NOT NULL,
                CONSTRAINT pk_codigo_pedido PRIMARY KEY (Num_Pedido)
);


ALTER SEQUENCE public.pedidos_num_pedido_seq OWNED BY public.Pedidos.Num_Pedido;

CREATE TABLE public.Productos_por_pedido (
                Num_Pedido INTEGER NOT NULL,
                Codigo_producto INTEGER NOT NULL,
                Cantidad INTEGER NOT NULL,
                Subtotal_Producto REAL NOT NULL,
                CONSTRAINT productos_por_pedido_pk PRIMARY KEY (Num_Pedido, Codigo_producto)
);


CREATE TABLE public.Pedidos_para_llevar (
                Num_Pedido INTEGER NOT NULL,
                Nombre_completo_cliente VARCHAR NOT NULL,
                Horario TIME NOT NULL,
                Direccion VARCHAR,
                DNI_Repartidor INTEGER,
                CONSTRAINT fk_num_pedido PRIMARY KEY (Num_Pedido)
);

--Agregar constraints de claves foráneas

--Productos por pedido
ALTER TABLE public.Productos_por_pedido ADD CONSTRAINT producto_productos_por_pedido_fk
FOREIGN KEY (Codigo_producto)
REFERENCES public.Productos (Codigo_producto)
ON DELETE NO ACTION
ON UPDATE CASCADE
NOT DEFERRABLE;

--Reservas
ALTER TABLE public.Reservas ADD CONSTRAINT mesa_reservas_fk
FOREIGN KEY (Num_Mesa)
REFERENCES public.Mesas (Num_Mesa)
ON DELETE NO ACTION
ON UPDATE CASCADE
NOT DEFERRABLE;

--Pedidos
ALTER TABLE public.Pedidos ADD CONSTRAINT mesa_pedido_fk
FOREIGN KEY (Num_Mesa)
REFERENCES public.Mesas (Num_Mesa)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.Pedidos_para_llevar ADD CONSTRAINT repartidor_envios_fk
FOREIGN KEY (DNI_Repartidor)
REFERENCES public.Repartidores (DNI_Repartidor)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.Pedidos_para_llevar ADD CONSTRAINT pedido_envios_fk
FOREIGN KEY (Num_Pedido)
REFERENCES public.Pedidos (Num_Pedido)
ON DELETE CASCADE
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.Productos_por_pedido ADD CONSTRAINT pedido_productos_por_pedido_fk
FOREIGN KEY (Num_Pedido)
REFERENCES public.Pedidos (Num_Pedido)
ON DELETE CASCADE
ON UPDATE CASCADE
NOT DEFERRABLE;

-- Dominio para la columna "turno" en la tabla "reserva"
CREATE DOMAIN turno VARCHAR(6) CHECK(value in('mañana','tarde','noche'));
ALTER TABLE public.Reservas ALTER COLUMN turno TYPE turno;
