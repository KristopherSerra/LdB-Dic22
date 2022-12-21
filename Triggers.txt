 --CALCULAR SUBTOTAL POR CADA PRODUCTO
 
 --funcion
CREATE OR REPLACE FUNCTION calcular_subtotal()
    RETURNS trigger AS
$$
DECLARE
    PRECIO REAL := (SELECT precio FROM productoS P WHERE P.codigo_producto = NEW.codigo_producto);
BEGIN
    NEW.subtotal_producto := NEW.cantidad*PRECIO;
	RETURN NEW;
END;
$$
LANGUAGE plpgsql;

 --trigger
 CREATE OR REPLACE TRIGGER A_insert_product_por_pedido
    BEFORE INSERT
    ON productos_por_pedido
    FOR EACH ROW
    EXECUTE PROCEDURE calcular_subtotal();
 
 
 
  --CALCULAR SUBTOTAL POR PEDIDO
  
 --funcion
 CREATE OR REPLACE FUNCTION calcular_subtotal_pedido()
    RETURNS trigger AS
$$
DECLARE
    sumTOTAL REAL := (SELECT SUM(subtotal_producto) FROM productos_por_pedido P WHERE P.num_pedido = NEW.num_pedido);
BEGIN
    UPDATE pedidos SET subtotal = sumTOTAL WHERE pedidos.num_pedido = NEW.num_pedido;
	RETURN NEW;
END;
$$
LANGUAGE plpgsql;
 -- fin funcion
 
 --trigger
  CREATE OR REPLACE TRIGGER B_calcular_subtotal
    AFTER INSERT
    ON productos_por_pedido
    FOR EACH ROW
    EXECUTE PROCEDURE calcular_subtotal_pedido();
 --fin trigger
 
 
 
 
   --CALCULAR TOTAL POR PEDIDO APLICANDO DESCUENTO
  
 --funcion
 CREATE OR REPLACE FUNCTION calcular_total_pedido()
    RETURNS trigger AS
$$
DECLARE
    descuentoSOCIO INTEGER := (SELECT Porcentaje_Descuento FROM pedidos P WHERE P.num_pedido = NEW.num_pedido);
BEGIN
    IF descuentoSOCIO IS NOT NULL THEN
        UPDATE pedidos SET precio_total = subtotal-(subtotal*(porcentaje_descuento::float/100)) WHERE pedidos.num_pedido = NEW.num_pedido;
    ELSE UPDATE pedidos SET precio_total = (SELECT subtotal FROM pedidos P WHERE P.num_pedido = NEW.num_pedido) WHERE pedidos.num_pedido = NEW.num_pedido;
	END IF;
	RETURN NEW;
END;
$$
LANGUAGE plpgsql;
 -- fin funcion
 
 --trigger
  CREATE OR REPLACE TRIGGER C_calcular_total
    AFTER INSERT
    ON productos_por_pedido
    FOR EACH ROW
    EXECUTE PROCEDURE calcular_total_pedido();
 --fin trigger