--CONSULTAS DE CAMPOS CALCULADOS
use PCVENTAS
select *,(PreVenta * Cantidad) as
subtotal
from Detalles
where (PreVenta * Cantidad) > 100