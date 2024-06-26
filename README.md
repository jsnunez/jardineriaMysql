


1. Devuelve un listado con el código de oficina y la ciudad donde hay oficinas.
    ```sql
    SELECT o.id As id_oficina, c.nombre
        FROM oficina AS o JOIN ciudad AS c
        ON c.id=fkIdCiudad;

     ```


## Tabla de Oficinas

Aquí tienes la tabla `oficinas` con sus datos:

| id_oficina | nombre                 |
|------------|------------------------|
|          1 | Medellín               |
|         30 | Medellín               |
|          2 | Barcelona              |
|         31 | Barcelona              |
|          3 | Los Angeles            |
|         32 | Los Angeles            |
|          4 | Lima                   |
|         33 | Lima                   |
|          5 | Toronto                |
|         34 | Toronto                |
|          6 | Bogotá                 |
|         35 | Bogotá                 |
|          7 | Sevilla                |
|          8 | Houston                |
|          9 | Cusco                  |
|         10 | Montreal               |
|         11 | Tunja                  |
|         12 | Valencia               |
|         13 | New York City          |
|         14 | Arequipa               |
|         15 | Vancouver              |
|         16 | Bucaramanga            |
|         17 | Madrid                 |
|         18 | Miami                  |
|         19 | Piura                  |
|         20 | Calgary                |
|         21 | Pasto                  |
|         22 | Santiago de Compostela |
|         23 | Chicago                |
|         24 | Tacna                  |
|         25 | Halifax                |
|         26 | Manizales              |
|         27 | Fuenlabrada            |
|         28 | Atlanta                |
|         29 | Huancayo               |


2. Devuelve un listado con la ciudad y el teléfono de las oficinas de España.

 ```sql
SELECT c.nombre As id_oficina, telo.numero
FROM oficina AS o JOIN telefonoOficina AS telO
ON o.id=telO.fkIdOficina
JOIN ciudad AS c
ON c.id=fkIdCiudad
JOIN region AS r 
ON r.id = c.fkidregion
JOIN  pais AS p
ON p.id=fkidpais
WHERE p.nombre='españa';

 ```

| id_oficina             | numero     |
|------------------------|------------|
| Barcelona              | 1122334455 |
| Sevilla                | 6677889900 |
| Valencia               | 1122334455 |
| Madrid                 | 6677889900 |
| Santiago de Compostela | 1122334455 |
| Fuenlabrada            | 6677889900 |


3. Devuelve un listado con el nombre, apellidos y email de los empleados cuyo
jefe tiene un código de jefe igual a 7.

 ```sql
SELECT nombre, apellido1, apellido2, email
FROM empleado
WHERE fkIdJefe =7;
 ```

| nombre | apellido1 | apellido2 | email                       |
|--------|-----------|-----------|-----------------------------|
| Marta  | Ruiz      | Sanchez   | marta.ruiz@company.com      |
| Pablo  | Hernandez | Garcia    | pablo.hernandez@company.com |
| Lucía  | Sánchez   | Álvarez   | lucia.sanchez@empresa.com   |


4. Devuelve el nombre del puesto, nombre, apellidos y email del jefe de la
empresa.
 ```sql
SELECT nombre, apellido1, apellido2, email
FROM empleado
WHERE fkIdJefe IS NULL;
 ```
| nombre | apellido1 | apellido2 | email                  |
|--------|-----------|-----------|------------------------|
| Juan   | Perez     | Lopez     | juan.perez@company.com |

5. Devuelve un listado con el nombre, apellidos y puesto de aquellos
empleados que no sean representantes de ventas.

 ```sql
SELECT nombre, apellido1, apellido2, email
FROM empleado
WHERE fkIdJefe <> 1 ;
 ```
| nombre  | apellido1  | apellido2  | email                        |
|---------|------------|------------|------------------------------|
| Luis    | Lopez      | Perez      | luis.lopez@company.com       |
| Elena   | Hernandez  | Gonzalez   | elena.hernandez@company.com  |
| Silvia  | Martinez   | Ramirez    | silvia.martinez@company.com  |
| David   | Sanchez    | Fernandez  | david.sanchez@company.com    |
| Pedro   | Diaz       | Ruiz       | pedro.diaz@company.com       |
| Marta   | Ruiz       | Sanchez    | marta.ruiz@company.com       |
| Carmen  | Gomez      | Lopez      | carmen.gomez@company.com     |
| Pablo   | Hernandez  | Garcia     | pablo.hernandez@company.com  |
| Carlos  | Pérez      | García     | juan.perez@empresa.com       |
| Carlos  | Rodríguez  | Fernández  | carlos.rodriguez@empresa.com |
| Ana     | González   | Hernández  | ana.gonzalez@empresa.com     |
| Luis    | Martín     | Gómez      | luis.martin@empresa.com      |
| Sofía   | Hernández  | Jiménez    | sofia.hernandez@empresa.com  |
| Miguel  | Ruiz       | Díaz       | miguel.ruiz@empresa.com      |
| Lucía   | Sánchez    | Álvarez    | lucia.sanchez@empresa.com    |
| Javier  | Ramírez    | Castillo   | javier.ramirez@empresa.com   |
| Isabel  | Torres     | Ortiz      | isabel.torres@empresa.com    |
| Diego   | Gutiérrez  | Silva      | diego.gutierrez@empresa.com  |
| Natalia | Romero     | Ramos      | natalia.romero@empresa.com   |
| Pedro   | Marín      | Vargas     | pedro.marin@empresa.com      |
| Carmen  | Iglesias   | Morales    | carmen.iglesias@empresa.com  |
| Antonio | Santos     | Pérez      | antonio.santos@empresa.com   |
| Paula   | Medina     | Mendoza    | paula.medina@empresa.com     |
| Manuel  | Guerrero   | Cruz       | manuel.guerrero@empresa.com  |
| Sara    | Castro     | Herrera    | sara.castro@empresa.com      |
| José    | Vega       | Flores     | jose.vega@empresa.com        |
| Raquel  | Suárez     | Campos     | raquel.suarez@empresa.com    |


6. Devuelve un listado con el nombre de los todos los clientes españoles.

   
```sql
SELECT cl.nombre As Nombre_Cliente ,p.nombre AS pais
FROM cliente AS cl 
JOIN ciudad AS c
ON c.id=fkIdCiudad
JOIN region AS r 
ON r.id = c.fkidregion
JOIN  pais AS p
ON p.id=fkidpais
WHERE p.nombre='españa';
```

| Nombre_Cliente    | pais    |
|-------------------|---------|
| Industria Beta    | españa  |
| Automotriz Chi    | españa  |
| Fabricaciones Eta | españa  |
| Transporte Mu     | españa  |
| Exportaciones Rho | españa  |

7. Devuelve un listado con los distintos estados por los que puede pasar un
pedido.

```sql
select nombre from estado;
```
| nombre    |
|-----------|
| Entregado |
| Rechazado |
| Pendiente |


8. Devuelve un listado con el código de cliente de aquellos clientes que
realizaron algún pago en 2008. Tenga en cuenta que deberá eliminar
aquellos códigos de cliente que aparezcan repetidos. Resuelva la consulta:

• Utilizando la función YEAR de MySQL.
```sql
SELECT idTransaccion
FROM pago
WHERE year(fechaPago)='2008'
GROUP BY idTransaccion ;
```
| idTransaccion |
|---------------|
|             1 |
|             2 |
|             3 |
|             4 |
|             5 |
|             6 |

• Utilizando la función DATE_FORMAT de MySQL.
```sql
SELECT  idTransaccion
FROM pago
WHERE DATE_FORMAT(fechaPago,"%Y")='2008'
GROUP BY idTransaccion;
```

| idTransaccion |
|---------------|
|             1 |
|             2 |
|             3 |
|             4 |
|             5 |
|             6 |

• Sin utilizar ninguna de las funciones anteriores.

```sql
SELECT  idTransaccion
FROM pago
WHERE fechaPago<'2009,01,01';
```
| idTransaccion |
|---------------|
|             1 |
|             2 |
|             3 |
|             4 |
|             5 |
|             6 |

9. Devuelve un listado con el código de pedido, código de cliente, fecha
esperada y fecha de entrega de los pedidos que no han sido entregados a
tiempo.

```sql
SELECT p.id AS codigo_pedido, p.fkIdCodigoCliente,p.fechaEsperada,p.fechaEntrega
FROM pedido p
WHERE p.fechaEntrega> p.fechaEsperada;
```
| codigo_pedido | fkIdCodigoCliente | fechaEsperada | fechaEntrega |
|---------------|-------------------|---------------|--------------|
|             3 |                 8 | 2009-05-25    | 2009-05-28   |
|             5 |                 8 | 2010-09-17    | 2010-09-25   |
|            11 |                 1 | 2008-03-02    | 2008-03-05   |
|            12 |                12 | 2008-04-23    | 2008-04-25   |
|            19 |                 1 | 2012-06-15    | 2012-06-17   |
10. Devuelve un listado con el código de pedido, código de cliente, fecha
esperada y fecha de entrega de los pedidos cuya fecha de entrega ha sido al
menos dos días antes de la fecha esperada.
• Utilizando la función ADDDATE de MySQL.
```sql
SELECT  p.id AS codigo_pedido, p.fkIdCodigoCliente,p.fechaEsperada,p.fechaEntrega
FROM pedido p
WHERE ADDDATE(p.fechaEsperada, INTERVAL 2 DAY)>p.fechaEntrega
 ;
```
| codigo_pedido | fkIdCodigoCliente | fechaEsperada | fechaEntrega |
|---------------|-------------------|---------------|--------------|
|             1 |                 1 | 2008-01-20    | 2008-01-18   |
|             2 |                 2 | 2008-03-15    | 2008-03-13   |
|             4 |                 4 | 2009-07-30    | 2009-07-28   |
|             6 |                 6 | 2010-11-15    | 2010-11-12   |
|             7 |                 5 | 2011-01-10    | 2011-01-08   |
|             8 |                10 | 2011-03-25    | 2011-03-22   |
|             9 |                 9 | 2012-05-23    | 2012-05-20   |
|            10 |                 1 | 2012-07-19    | 2012-07-17   |
|            13 |                13 | 2009-06-10    | 2009-06-08   |
|            14 |                 4 | 2009-08-24    | 2009-08-21   |
|            15 |                 5 | 2010-10-30    | 2010-10-27   |
|            16 |                16 | 2010-12-19    | 2010-12-16   |
|            17 |                15 | 2011-03-05    | 2011-03-03   |
|            18 |                 9 | 2011-04-21    | 2011-04-18   |
|            20 |                20 | 2012-08-29    | 2012-08-27   |
• Utilizando la función DATEDIFF de MySQL.
```sql
SELECT  p.id AS codigo_pedido, p.fkIdCodigoCliente,p.fechaEsperada,p.fechaEntrega
FROM pedido p
WHERE DATEDIFF(p.fechaEsperada,p.fechaEntrega) >= 2 ;
```
| codigo_pedido | fkIdCodigoCliente | fechaEsperada | fechaEntrega |
|---------------|-------------------|---------------|--------------|
|             1 |                 1 | 2008-01-20    | 2008-01-18   |
|             2 |                 2 | 2008-03-15    | 2008-03-13   |
|             4 |                 4 | 2009-07-30    | 2009-07-28   |
|             6 |                 6 | 2010-11-15    | 2010-11-12   |
|             7 |                 5 | 2011-01-10    | 2011-01-08   |
|             8 |                10 | 2011-03-25    | 2011-03-22   |
|             9 |                 9 | 2012-05-23    | 2012-05-20   |
|            10 |                 1 | 2012-07-19    | 2012-07-17   |
|            13 |                13 | 2009-06-10    | 2009-06-08   |
|            14 |                 4 | 2009-08-24    | 2009-08-21   |
|            15 |                 5 | 2010-10-30    | 2010-10-27   |
|            16 |                16 | 2010-12-19    | 2010-12-16   |
|            17 |                15 | 2011-03-05    | 2011-03-03   |
|            18 |                 9 | 2011-04-21    | 2011-04-18   |
|            20 |                20 | 2012-08-29    | 2012-08-27   |
11. Devuelve un listado de todos los pedidos que fueron rechazados en 2009.
```sql
SELECT p.id AS codigo_pedido
FROM pedido AS p JOIN estado AS e
ON p.fkIdEstado=e.id
WHERE e.nombre='rechazado' and year(fechaPedido) = '2009';
```
| codigo_pedido |
|---------------|
|            14 |
12. Devuelve un listado de todos los pedidos que han sido entregados en el
mes de enero de cualquier año.
```sql
SELECT p.id AS codigo_pedido, p.fechaEntrega
FROM pedido AS p 
WHERE MONTH(fechaEntrega)= '01';
```
| codigo_pedido | fechaEntrega |
|---------------|--------------|
|             1 | 2008-01-18   |
|             7 | 2011-01-08   |
13. Devuelve un listado con todos los pagos que se realizaron en el
año 2008 mediante Paypal. Ordene el resultado de mayor a menor.

```sql
SELECT p.total,p.idTransaccion,f.nombre AS forma_pago
FROM pago AS p JOIN formapago AS f
ON p.fkFormaPago=f.id
WHERE f.nombre='Paypal' AND YEAR(fechaPago)=2008
ORDER BY p.total DESC;
```

| total    | idTransaccion | forma_pago |
|----------|---------------|------------|
| 30000.00 |             2 | Paypal     |
| 20000.00 |             4 | Paypal     |
|  2600.00 |             5 | Paypal     |
|  2010.00 |             3 | Paypal     |


14. Devuelve un listado con todas las formas de pago que aparecen en la
tabla pago. Tenga en cuenta que no deben aparecer formas de pago
repetidas.

```sql
SELECT f.nombre
FROM pago AS p JOIN formapago AS f
ON p.fkFormaPago=f.id
GROUP BY f.id;
```
| nombre          |
|-----------------|
| Paypal          |
| Nequi           |
| Tarjeta credito |
| Tarjeta débito  |
| PSE             |

15. Devuelve un listado con todos los productos que pertenecen a la
gama Ornamentales y que tienen más de 100 unidades en stock. El listado
deberá estar ordenado por su precio de venta, mostrando en primer lugar
los de mayor precio.

```sql
SELECT p.nombre, p.cantidadEnStock 
FROM gamaproducto AS g JOIN producto AS p
ON  g.id =p.fkIdGama
WHERE g.nombre='ornamentales' AND cantidadEnStock > 100 ;
```
| nombre     | cantidadEnStock |
|------------|-----------------|
| Filodendro |             150 |
| Planta ZZ  |             270 |
| Anturio    |             240 |


16. Devuelve un listado con todos los clientes que sean de la ciudad de Madrid y
cuyo representante de ventas tenga el código de empleado 11 o 30.

```sql
SELECT c.nombre,fkCodigoEmpleadoRepVentas 
FROM  cliente AS c JOIN ciudad AS ci
ON c.fkIdCiudad= ci.id
WHERE ci.nombre = 'madrid' AND fkCodigoEmpleadoRepVentas =11 OR fkCodigoEmpleadoRepVentas =30;
```
Empty set (0.00 sec)

Consultas multitabla (Composición interna)
Resuelva todas las consultas utilizando la sintaxis de SQL1 y SQL2. Las consultas con
sintaxis de SQL2 se deben resolver con INNER JOIN y NATURAL JOIN.


1. Obtén un listado con el nombre de cada cliente y el nombre y apellido de su
representante de ventas.

```sql
SELECT c.nombre, e.nombre AS Nombre_Represente, concat( e.apellido1, '  ',  e.apellido2) AS Apellidos_Repesentantes
FROM cliente AS c JOIN empleado AS e
ON c.fkCodigoEmpleadoRepVentas=e.id;
```
| nombre             | Nombre_Represente | Apellidos_Repesentantes |
|--------------------|-------------------|-------------------------|
| Empresa Alpha      | Juan              | Perez  Lopez            |
| Industria Beta     | Maria             | Gonzalez  Martinez      |
| Comercio Gamma     | Ana               | Martinez  Hernandez     |
| Servicios Delta    | Luis              | Lopez  Perez            |
| Tecnologia Epsilon | Elena             | Hernandez  Gonzalez     |
| Distribuidora Zeta | Jorge             | Garcia  Lopez           |
| Fabricaciones Eta  | Marta             | Ruiz  Sanchez           |
| Consultoria Theta  | David             | Sanchez  Fernandez      |
| Desarrollos Iota   | Laura             | Fernandez  Gomez        |
| Proyectos Kappa    | Pedro             | Diaz  Ruiz              |
| Soluciones Lambda  | Marta             | Ruiz  Sanchez           |
| Transporte Mu      | Alberto           | Garcia  Martinez        |
| Finanzas Nu        | Carmen            | Gomez  Lopez            |
| Construcciones Xi  | Pablo             | Hernandez  Garcia       |
| Alimentos Omicron  | Elena             | Hernandez  Gonzalez     |
| Importaciones Pi   | Juan              | Perez  Lopez            |
| Exportaciones Rho  | Pablo             | Hernandez  Garcia       |
| Agricultura Sigma  | David             | Sanchez  Fernandez      |
| Mineria Tau        | Silvia            | Martinez  Ramirez       |
| Energia Upsilon    | Elena             | Hernandez  Gonzalez     |
| Quimica Phi        | Marta             | Ruiz  Sanchez           |
| Automotriz Chi     | Maria             | Gonzalez  Martinez      |
| Metales Psi        | Ana               | Martinez  Hernandez     |
| Textiles Omega     | Elena             | Hernandez  Gonzalez     |
| Medicina Alpha2    | Maria             | Gonzalez  Martinez      |
| Educacion Beta2    | Jorge             | Garcia  Lopez           |


2. Muestra el nombre de los clientes que hayan realizado pagos junto con el
nombre de sus representantes de ventas.

```sql
SELECT c.nombre, e.nombre AS Nombre_Represente, concat( e.apellido1, '  ',  e.apellido2) AS Apellidos_Repesentantes
FROM cliente AS c JOIN empleado AS e
ON c.fkCodigoEmpleadoRepVentas=e.id
left JOIN pago AS p
ON c.id=p.fkIdCodigoCliente
WHERE p.total is not null
GROUP BY c.id;
```

| nombre             | Nombre_Represente | Apellidos_Repesentantes |
|--------------------|-------------------|-------------------------|
| Fabricaciones Eta  | Marta             | Ruiz  Sanchez           |
| Transporte Mu      | Alberto           | Garcia  Martinez        |
| Medicina Alpha2    | Maria             | Gonzalez  Martinez      |
| Tecnologia Epsilon | Elena             | Hernandez  Gonzalez     |
| Alimentos Omicron  | Elena             | Hernandez  Gonzalez     |
| Energia Upsilon    | Elena             | Hernandez  Gonzalez     |
| Consultoria Theta  | David             | Sanchez  Fernandez      |
| Agricultura Sigma  | David             | Sanchez  Fernandez      |
| Automotriz Chi     | Maria             | Gonzalez  Martinez      |
| Construcciones Xi  | Pablo             | Hernandez  Garcia       |
| Quimica Phi        | Marta             | Ruiz  Sanchez           |
| Desarrollos Iota   | Laura             | Fernandez  Gomez        |
| Exportaciones Rho  | Pablo             | Hernandez  Garcia       |
| Metales Psi        | Ana               | Martinez  Hernandez     |
| Soluciones Lambda  | Marta             | Ruiz  Sanchez           |
| Mineria Tau        | Silvia            | Martinez  Ramirez       |
| Industria Beta     | Maria             | Gonzalez  Martinez      |



3. Muestra el nombre de los clientes que no hayan realizado pagos junto con
el nombre de sus representantes de ventas.

```sql
SELECT c.nombre, e.nombre AS Nombre_Represente, concat( e.apellido1, '  ',  e.apellido2) AS Apellidos_Repesentantes
FROM cliente AS c JOIN empleado AS e
ON c.fkCodigoEmpleadoRepVentas=e.id
left JOIN pago AS p
ON c.id=p.fkIdCodigoCliente
WHERE p.total is null 
GROUP BY c.id;
```

| nombre             | Nombre_Represente | Apellidos_Repesentantes |
|--------------------|-------------------|-------------------------|
| Empresa Alpha      | Juan              | Perez  Lopez            |
| Comercio Gamma     | Ana               | Martinez  Hernandez     |
| Servicios Delta    | Luis              | Lopez  Perez            |
| Distribuidora Zeta | Jorge             | Garcia  Lopez           |
| Proyectos Kappa    | Pedro             | Diaz  Ruiz              |
| Finanzas Nu        | Carmen            | Gomez  Lopez            |
| Importaciones Pi   | Juan              | Perez  Lopez            |
| Textiles Omega     | Elena             | Hernandez  Gonzalez     |
| Educacion Beta2    | Jorge             | Garcia  Lopez           |



4. Devuelve el nombre de los clientes que han hecho pagos y el nombre de sus
representantes junto con la ciudad de la oficina a la que pertenece el
representante.

```sql
SELECT c.nombre, e.nombre AS Nombre_Represente, concat( e.apellido1, '  ',  e.apellido2) AS Apellidos_Repesentantes, ci.nombre
FROM cliente AS c JOIN empleado AS e
ON c.fkCodigoEmpleadoRepVentas=e.id
left JOIN pago AS p
ON c.id=p.fkIdCodigoCliente
JOIN oficina AS o
ON  e.fkIdOficina=o.id
JOIN ciudad AS ci 
ON o.fkIdCiudad=ci.id
WHERE p.total is not null
GROUP BY c.id;
```

| nombre             | Nombre_Represente | Apellidos_Repesentantes | nombre      |
|--------------------|-------------------|-------------------------|-------------|
| Fabricaciones Eta  | Marta             | Ruiz  Sanchez           | Los Angeles |
| Transporte Mu      | Alberto           | Garcia  Martinez        | Medellín    |
| Medicina Alpha2    | Maria             | Gonzalez  Martinez      | Barcelona   |
| Tecnologia Epsilon | Elena             | Hernandez  Gonzalez     | Los Angeles |
| Alimentos Omicron  | Elena             | Hernandez  Gonzalez     | Los Angeles |
| Energia Upsilon    | Elena             | Hernandez  Gonzalez     | Los Angeles |
| Consultoria Theta  | David             | Sanchez  Fernandez      | Los Angeles |
| Agricultura Sigma  | David             | Sanchez  Fernandez      | Los Angeles |
| Automotriz Chi     | Maria             | Gonzalez  Martinez      | Barcelona   |
| Construcciones Xi  | Pablo             | Hernandez  Garcia       | Los Angeles |
| Quimica Phi        | Marta             | Ruiz  Sanchez           | Los Angeles |
| Desarrollos Iota   | Laura             | Fernandez  Gomez        | Medellín    |
| Exportaciones Rho  | Pablo             | Hernandez  Garcia       | Los Angeles |
| Metales Psi        | Ana               | Martinez  Hernandez     | Medellín    |
| Soluciones Lambda  | Marta             | Ruiz  Sanchez           | Los Angeles |
| Mineria Tau        | Silvia            | Martinez  Ramirez       | Barcelona   |
| Industria Beta     | Maria             | Gonzalez  Martinez      | Barcelona   |


5. Devuelve el nombre de los clientes que no hayan hecho pagos y el nombre
de sus representantes junto con la ciudad de la oficina a la que pertenece el
representante.

```sql
SELECT c.nombre, e.nombre AS Nombre_Represente, concat( e.apellido1, '  ',  e.apellido2) AS Apellidos_Repesentantes, ci.nombre
FROM cliente AS c JOIN empleado AS e
ON c.fkCodigoEmpleadoRepVentas=e.id
left JOIN pago AS p
ON c.id=p.fkIdCodigoCliente
JOIN oficina AS o
ON  e.fkIdOficina=o.id
JOIN ciudad AS ci 
ON o.fkIdCiudad=ci.id
WHERE p.total is null
GROUP BY c.id;
```

| nombre             | Nombre_Represente | Apellidos_Repesentantes | nombre      |
|--------------------|-------------------|-------------------------|-------------|
| Empresa Alpha      | Juan              | Perez  Lopez            | Medellín    |
| Comercio Gamma     | Ana               | Martinez  Hernandez     | Medellín    |
| Servicios Delta    | Luis              | Lopez  Perez            | Barcelona   |
| Distribuidora Zeta | Jorge             | Garcia  Lopez           | Medellín    |
| Proyectos Kappa    | Pedro             | Diaz  Ruiz              | Barcelona   |
| Finanzas Nu        | Carmen            | Gomez  Lopez            | Barcelona   |
| Importaciones Pi   | Juan              | Perez  Lopez            | Medellín    |
| Textiles Omega     | Elena             | Hernandez  Gonzalez     | Los Angeles |
| Educacion Beta2    | Jorge             | Garcia  Lopez           | Medellín    |



6. Lista la dirección de las oficinas que tengan clientes en Fuenlabrada.

```sql
SELECT c.nombre, do.direccion AS Direccion_oficina
FROM ciudad AS ci
JOIN cliente AS c
ON c.fkIdCiudad=ci.id
jOIN empleado AS e
ON c.fkCodigoEmpleadoRepVentas=e.id
JOIN oficina AS o
ON e.fkIdOficina =o.id
JOIN direccionoficina AS do
ON do.fkIdOficina=o.id
WHERE ci.nombre='Fuenlabrada';
```

| nombre            | Direccion_oficina                  |
|-------------------|------------------------------------|
| Fabricaciones Eta | Calle de la Amargura 456           |
| Transporte Mu     | Avenida Siempre Viva 742           |
| Transporte Mu     | Boulevard de los Sueños Rotos 123  |
| Exportaciones Rho | Plaza de la Alegría 789            |

7. Devuelve el nombre de los clientes y el nombre de sus representantes junto
con la ciudad de la oficina a la que pertenece el representante.


```sql
SELECT c.nombre,e.nombre AS representante_venta,ci.nombre AS ciudad_oficina
FROM  cliente AS c 
JOIN empleado AS e
ON c.fkCodigoEmpleadoRepVentas= e.id
JOIN oficina AS o
ON e.fkIdOficina=o.id
JOIN ciudad AS ci
ON o.fkIdCiudad=ci.id;

```
| nombre             | representante_venta | ciudad_oficina |
|--------------------|---------------------|----------------|
| Empresa Alpha      | Juan                | Medellín       |
| Industria Beta     | Maria               | Barcelona      |
| Comercio Gamma     | Ana                 | Medellín       |
| Servicios Delta    | Luis                | Barcelona      |
| Tecnologia Epsilon | Elena               | Los Angeles    |
| Distribuidora Zeta | Jorge               | Medellín       |
| Fabricaciones Eta  | Silvia              | Barcelona      |
| Consultoria Theta  | David               | Los Angeles    |
| Desarrollos Iota   | Laura               | Medellín       |
| Proyectos Kappa    | Pedro               | Barcelona      |
| Soluciones Lambda  | Marta               | Los Angeles    |
| Transporte Mu      | Alberto             | Medellín       |
| Finanzas Nu        | Carmen              | Barcelona      |
| Construcciones Xi  | Pablo               | Los Angeles    |
| Alimentos Omicron  | Juan                | Medellín       |
| Importaciones Pi   | María               | Barcelona      |
| Exportaciones Rho  | Carlos              | Los Angeles    |
| Agricultura Sigma  | Ana                 | Lima           |
| Mineria Tau        | Luis                | Toronto        |
| Energia Upsilon    | Sofía               | Bogotá         |
| Quimica Phi        | Miguel              | Sevilla        |
| Automotriz Chi     | Lucía               | Houston        |
| Metales Psi        | Javier              | Cusco          |
| Textiles Omega     | Isabel              | Montreal       |
| Medicina Alpha2    | Diego               | Tunja          |
| Educacion Beta2    | Natalia             | Valencia       |

8. Devuelve un listado con el nombre de los empleados junto con el nombre
de sus jefes.


```sql
SELECT e2.nombre,e1.nombre AS nombre_jefe
FROM empleado AS e1
right JOIN empleado AS e2
ON e1.id=e2.fkIdJefe;
```
| nombre  | nombre_jefe |
|---------|-------------|
| Juan    | NULL        |
| Maria   | Juan        |
| Ana     | Juan        |
| Luis    | Maria       |
| Elena   | Ana         |
| Jorge   | Juan        |
| Silvia  | Maria       |
| David   | Ana         |
| Laura   | Juan        |
| Pedro   | Maria       |
| Marta   | Silvia      |
| Alberto | Juan        |
| Carmen  | Maria       |
| Pablo   | Silvia      |
| Carlos  | Maria       |
| Antonia | Juan        |
| Carlos  | Maria       |
| Ana     | Ana         |
| Luis    | Luis        |
| Sofía   | Elena       |
| Miguel  | Jorge       |
| Lucía   | Silvia      |
| Javier  | David       |
| Isabel  | Laura       |
| Diego   | Pedro       |
| Natalia | Marta       |
| Pedro   | Alberto     |
| Carmen  | Carmen      |
| Antonio | Pablo       |
| Paula   | Carlos      |
| Manuel  | Antonia     |
| Sara    | Carlos      |
| José    | Ana         |
| Raquel  | Luis        |

9. Devuelve un listado que muestre el nombre de cada empleados, el nombre
de su jefe y el nombre del jefe de sus jefe.

```sql
SELECT e3.nombre AS nombre_embpleado,e2.nombre AS nombre_jefe1,e1.nombre AS nombre_jefe2
FROM empleado AS e1
right JOIN empleado AS e2
ON e1.id=e2.fkIdJefe
right JOIN empleado AS e3
ON e2.id=e3.fkIdJefe;

```

| nombre_embpleado | nombre_jefe1 | nombre_jefe2 |
|------------------|--------------|--------------|
| Juan             | NULL         | NULL         |
| Maria            | Juan         | NULL         |
| Ana              | Juan         | NULL         |
| Luis             | Maria        | Juan         |
| Elena            | Ana          | Juan         |
| Jorge            | Juan         | NULL         |
| Silvia           | Maria        | Juan         |
| David            | Ana          | Juan         |
| Laura            | Juan         | NULL         |
| Pedro            | Maria        | Juan         |
| Marta            | Silvia       | Maria        |
| Alberto          | Juan         | NULL         |
| Carmen           | Maria        | Juan         |
| Pablo            | Silvia       | Maria        |
| Carlos           | Maria        | Juan         |
| Antonia          | Juan         | NULL         |
| Carlos           | Maria        | Juan         |
| Ana              | Ana          | Juan         |
| Luis             | Luis         | Maria        |
| Sofía            | Elena        | Ana          |
| Miguel           | Jorge        | Juan         |
| Lucía            | Silvia       | Maria        |
| Javier           | David        | Ana          |
| Isabel           | Laura        | Juan         |
| Diego            | Pedro        | Maria        |
| Natalia          | Marta        | Silvia       |
| Pedro            | Alberto      | Juan         |
| Carmen           | Carmen       | Maria        |
| Antonio          | Pablo        | Silvia       |
| Paula            | Carlos       | Maria        |
| Manuel           | Antonia      | Juan         |
| Sara             | Carlos       | Maria        |
| José             | Ana          | Ana          |
| Raquel           | Luis         | Luis         |

10. Devuelve el nombre de los clientes a los que no se les ha entregado a
tiempo un pedido.

```sql
SELECT c.nombre,p.fechaEsperada,p.fechaEntrega
FROM cliente AS c
JOIN pedido AS p
ON p.fkIdCodigoCliente=c.id
WHERE p.fechaEsperada<p.fechaEntrega;
```
| nombre            | fechaEsperada | fechaEntrega |
|-------------------|---------------|--------------|
| Consultoria Theta | 2009-05-25    | 2009-05-28   |
| Consultoria Theta | 2010-09-17    | 2010-09-25   |
| Empresa Alpha     | 2008-03-02    | 2008-03-05   |
| Transporte Mu     | 2008-04-23    | 2008-04-25   |
| Empresa Alpha     | 2012-06-15    | 2012-06-17   |

11. Devuelve un listado de las diferentes gamas de producto que ha comprado
cada cliente.

```sql
SELECT c.nombre,g.nombre
FROM cliente AS c
JOIN pedido AS p
ON c.id=p.fkIdCodigoCliente
JOIN detallepedido AS dp
ON dp.fkIdPedido=p.id
JOIN producto AS pr
ON dp.fkIdProducto=pr.id
JOIN gamaproducto AS g
ON pr.fkIdGama=g.id;
```
| nombre             | nombre       |
|--------------------|--------------|
| Empresa Alpha      | Herbaceas    |
| Empresa Alpha      | Herbaceas    |
| Consultoria Theta  | Herbaceas    |
| Consultoria Theta  | Herbaceas    |
| Tecnologia Epsilon | Herbaceas    |
| Desarrollos Iota   | Herbaceas    |
| Empresa Alpha      | Herbaceas    |
| Transporte Mu      | Herramientas |
| Consultoria Theta  | Herramientas |
| Servicios Delta    | Herramientas |
| Distribuidora Zeta | Herramientas |
| Desarrollos Iota   | Herramientas |
| Empresa Alpha      | Herramientas |
| Transporte Mu      | Aromáticas   |
| Servicios Delta    | Aromáticas   |
| Distribuidora Zeta | Aromáticas   |
| Tecnologia Epsilon | Aromáticas   |
| Proyectos Kappa    | Aromáticas   |
| Consultoria Theta  | Ornamentales |
| Proyectos Kappa    | Ornamentales |


Consultas multitabla (Composición externa)
Resuelva todas las consultas utilizando las cláusulas LEFT JOIN, RIGHT JOIN, NATURAL
LEFT JOIN y NATURAL RIGHT JOIN.
1. Devuelve un listado que muestre solamente los clientes que no han
realizado ningún pago.

```sql
SELECT c.nombre
FROM cliente AS c
LEFT JOIN pago AS p
ON c.id = p.fkIdCodigoCliente
WHERE p.idTransaccion is null;
```
| nombre             |
|--------------------|
| Empresa Alpha      |
| Comercio Gamma     |
| Servicios Delta    |
| Distribuidora Zeta |
| Proyectos Kappa    |
| Finanzas Nu        |
| Importaciones Pi   |
| Textiles Omega     |
| Educacion Beta2    |


2. Devuelve un listado que muestre solamente los clientes que no han
realizado ningún pedido.
```sql
SELECT c.nombre
FROM cliente AS c
LEFT JOIN pedido AS p
ON p.fkIdCodigoCliente=c.id
WHERE  p.id is null;
```
| nombre            |
|-------------------|
| Comercio Gamma    |
| Fabricaciones Eta |
| Soluciones Lambda |
| Construcciones Xi |
| Exportaciones Rho |
| Agricultura Sigma |
| Mineria Tau       |
| Quimica Phi       |
| Automotriz Chi    |
| Metales Psi       |
| Textiles Omega    |
| Medicina Alpha2   |
| Educacion Beta2   |



3. Devuelve un listado que muestre los clientes que no han realizado ningún
pago y los que no han realizado ningún pedido.
```sql
SELECT c.nombre AS Cliente
FROM cliente AS c
LEFT JOIN pedido AS p
ON p.fkIdCodigoCliente=c.id
LEFT JOIN pago AS pa
ON pa.fkIdCodigoCliente=c.id
WHERE p.id is null AND pa.idTransaccion is null;
```

| Cliente         |
|-----------------|
| Comercio Gamma  |
| Textiles Omega  |
| Educacion Beta2 |


4. Devuelve un listado que muestre solamente los empleados que no tienen
una oficina asociada.
```sql
SELECT e.nombre,o.id
FROM empleado AS e
left JOIN oficina AS o
ON e.fkIdOficina=o.id
WHERE o.id is null;
```

| nombre  | id   |
|---------|------|
| Pedro   | NULL |
| Antonia | NULL |
| Pedro   | NULL |


5. Devuelve un listado que muestre solamente los empleados que no tienen un
cliente asociado.
```sql
SELECT concat(e.nombre, ' ',e.apellido1) AS empleado
FROM empleado AS e
left JOIN cliente AS c
ON c.fkCodigoEmpleadoRepVentas =e.id
WHERE c.id is null;
```

| empleado          |
|-------------------|
| Carlos Pérez      |
| Antonia López     |
| Carlos Rodríguez  |
| Ana González      |
| Luis Martín       |
| Sofía Hernández   |
| Miguel Ruiz       |
| Lucía Sánchez     |
| Javier Ramírez    |
| Isabel Torres     |
| Diego Gutiérrez   |
| Natalia Romero    |
| Pedro Marín       |
| Carmen Iglesias   |
| Antonio Santos    |
| Paula Medina      |
| Manuel Guerrero   |
| Sara Castro       |
| José Vega         |
| Raquel Suárez     |


6. Devuelve un listado que muestre solamente los empleados que no tienen un
cliente asociado junto con los datos de la oficina donde trabajan.

```sql

SELECT concat(e.nombre, ' ',e.apellido1) AS empleado, o.nombre
FROM empleado AS e
left JOIN cliente AS c
ON c.fkCodigoEmpleadoRepVentas =e.id
left JOIN oficina AS o
ON e.fkIdOficina=o.id
WHERE c.id is null;
```

| empleado          | nombre                    |
|-------------------|---------------------------|
| Carlos Pérez      | Oficina Medellín Centro   |
| Antonia López     | NULL                      |
| Carlos Rodríguez  | Oficina Los Angeles Oeste |
| Ana González      | Oficina Lima Central      |
| Luis Martín       | Oficina Toronto Este      |
| Sofía Hernández   | Oficina Bogotá Norte      |
| Miguel Ruiz       | Oficina Sevilla Sur       |
| Lucía Sánchez     | Oficina Houston Central   |
| Javier Ramírez    | Oficina Cusco Centro      |
| Isabel Torres     | Oficina Montreal Sur      |
| Diego Gutiérrez   | Oficina Tunja Centro      |
| Natalia Romero    | Oficina Valencia Este     |
| Pedro Marín       | NULL                      |
| Carmen Iglesias   | Oficina Arequipa Sur      |
| Antonio Santos    | Oficina Vancouver Norte   |
| Paula Medina      | Oficina Bucaramanga Este  |
| Manuel Guerrero   | Oficina Madrid Centro     |
| Sara Castro       | Oficina Miami Beach       |
| José Vega         | Oficina Piura Norte       |
| Raquel Suárez     | Oficina Calgary Centro    |


7. Devuelve un listado que muestre los empleados que no tienen una oficina
asociada y los que no tienen un cliente asociado.
```sql
SELECT concat(e.nombre, ' ',e.apellido1) AS empleado, o.nombre
FROM empleado AS e
left JOIN cliente AS c
ON c.fkCodigoEmpleadoRepVentas =e.id
left JOIN oficina AS o
ON e.fkIdOficina=o.id
WHERE c.id is null AND o.id is null;

```

| empleado       | nombre |
|----------------|--------|
| Antonia López  | NULL   |
| Pedro Marín    | NULL   |


8. Devuelve un listado de los productos que nunca han aparecido en un
pedido.
```sql
SELECT p.nombre
FROM producto AS p
left JOIN detallepedido AS d
ON d.fkIdProducto=p.id
WHERE d.cantidad is not null;
```

| nombre            |
|-------------------|
| Helecho de Boston |
| Ficus             |
| Calatea           |
| Monstera          |
| Snake Plant       |
| Lirio de la Paz   |
| Aloe Vera         |
| Planta Araña      |
| Planta ZZ         |
| Rubber Plant      |
| Boston Fern       |
| Calathea          |
| Dracaena          |
| Bamboo Palm       |
| Ficus             |
| Monstera          |
| Pothos            |
| Dracaena          |
| Philodendron      |
| Orchid            |


9. Devuelve un listado de los productos que nunca han aparecido en un
pedido. El resultado debe mostrar el nombre, la descripción y la imagen del
producto.
```sql

SELECT p.nombre,p.descripcion, g.imagen
FROM producto AS p
left JOIN detallepedido AS d
ON d.fkIdProducto=p.id
JOIN gamaproducto AS g
on g.id=p.fkIdGama
WHERE d.cantidad is not null;
```


| nombre            | descripcion

  | imagen           |
|-------------------|-------------------------------------------------------------------------------------------------------------------------------------|------------------|
| Pothos            | Epipremnum aureum, también conocido como potos dorado, es una especie de planta con flores en la familia de las aráceas.
  | herbaceas.jpg    |
| Dracaena          | Dracaena es un género de aproximadamente 120 especies de árboles y arbustos suculentos.
  | herbaceas.jpg    |
| Ficus             | Ficus es un género de aproximadamente 850 especies de árboles, arbustos, vides, epífitas y hemiepífitas en la familia Moraceae.     | herbaceas.jpg    |
| Snake Plant       | Sansevieria es un género de aproximadamente 70 especies de plantas con flores, nativas de África, Madagascar y el sur de Asia.      | herbaceas.jpg    |
| Rubber Plant      | Ficus elastica, el árbol del caucho, arbusto de caucho, planta de caucho o arbusto de caucho indio.
  | herbaceas.jpg    |
| Dracaena          | Dracaena es un género de aproximadamente 120 especies de árboles y arbustos suculentos.
  | herbaceas.jpg    |
| Ficus             | Ficus es un género de aproximadamente 850 especies de árboles, arbustos, vides, epífitas y hemiepífitas en la familia Moraceae.     | herbaceas.jpg    |
| Orchid            | Orchidaceae, comúnmente conocida como la familia de las orquídeas, es una familia diversa y extendida de plantas con flores.        | Herramientas.jpg |
| Helecho de Boston | Nephrolepis exaltata, conocido como el helecho de Boston, es una especie de helecho en la familia Lomariopsidaceae.
  | Herramientas.jpg |
| Monstera          | Monstera es un género de 45 especies de plantas con flores en la familia de las aráceas.
  | Herramientas.jpg |
| Planta Araña      | Chlorophytum comosum, a menudo llamada planta araña, es una especie de planta perenne con flores.                                   | Herramientas.jpg |
| Bamboo Palm       | Chamaedorea seifrizii, la palma de bambú o palma de caña, es una especie de Chamaedorea.
  | Herramientas.jpg |
| Monstera          | Monstera es un género de 45 especies de plantas con flores en la familia de las aráceas.
  | Herramientas.jpg |
| Philodendron      | Philodendron es un gran género de plantas con flores en la familia Araceae.
  | Aromáticas.jpg   |
| Calatea           | Calathea es un género de plantas pertenecientes a la familia Marantaceae.
  | Aromáticas.jpg   |
| Aloe Vera         | Aloe vera es una especie de planta suculenta del género Aloe.
  | Aromáticas.jpg   |
| Planta ZZ         | Zamioculcas es un género de planta con flores en la familia Araceae, que contiene la única especie Zamioculcas zamiifolia.          | Aromáticas.jpg   |
| Calathea          | Calathea es un género de plantas pertenecientes a la familia Marantaceae.
  | Aromáticas.jpg   |
| Lirio de la Paz   | Spathiphyllum es un género de aproximadamente 40 especies de plantas con flores comúnmente llamadas "lirios de la paz".
  | NULL             |
| Boston Fern       | Nephrolepis exaltata, conocido como el helecho de Boston, es una especie de helecho en la familia Lomariopsidaceae.
  | NULL             |

10. Devuelve las oficinas donde no trabajan ninguno de los empleados que
hayan sido los representantes de ventas de algún cliente que haya realizado
la compra de algún producto de la gama Frutales.
```sql
SELECT *
FROM oficina o 
WHERE o.codigo_oficina 
NOT IN (SELECT DISTINCT ofi.id
FROM oficina ofi
JOIN empleado emp 
on
JOIN cliente cli 
ON cli.fkCodigoEmpleadoRepVentas = emp.id
JOIN pedido pe USING(codigo_cliente)
JOIN detallepedido dp USING(codigo_pedido)
JOIN producto prod USING(prod.id)
                               WHERE prod.gama = 'Frutales')

```

11. Devuelve un listado con los clientes que han realizado algún pedido pero no
han realizado ningún pago.
```sql
SELECT c.nombre,p.fkIdCodigoCliente,pa.fkIdCodigoCliente
FROM cliente AS c
LEFT JOIN pedido AS p
ON p.fkIdCodigoCliente=c.id
LEFT JOIN pago AS pa
on pa.fkIdCodigoCliente=c.id
WHERE p.id is not null and pa.idtransaccion is null 
group by c.id;
```

| nombre             | fkIdCodigoCliente | fkIdCodigoCliente |
|--------------------|-------------------|-------------------|
| Empresa Alpha      |                 1 |              NULL |
| Servicios Delta    |                 4 |              NULL |
| Distribuidora Zeta |                 6 |              NULL |
| Proyectos Kappa    |                10 |              NULL |
| Finanzas Nu        |                13 |              NULL |
| Importaciones Pi   |                16 |              NULL |


12. Devuelve un listado con los datos de los empleados que no tienen clientes
asociados y el nombre de su jefe asociado.

```sql
SELECT e.nombre AS empleado ,e1.nombre AS jefe
FROM empleado AS e
LEFT JOIN cliente AS c
ON c.fkCodigoEmpleadoRepVentas=e.id
JOIN empleado AS e1
on e.id=e1.fkIdJefe
WHERE c.id is null;
```

| empleado | jefe   |
|----------|--------|
| Carlos   | Paula  |
| Antonia  | Manuel |
| Carlos   | Sara   |
| Ana      | José   |
| Luis     | Raquel |



Consultas resumen
1. ¿Cuántos empleados hay en la compañía?
```sql
SELECT count(id) from empleado;
```

| count(id) |
|-----------|
|        34 |


2. ¿Cuántos clientes tiene cada país?
```sql
SELECT p.nombre, count(c.id) AS cantidadClientes
FROM cliente AS c
JOIN ciudad AS ci
ON c.fkIdCiudad =ci.id
JOIN region AS  r
ON  ci.fkidregion=r.id
JOIN pais AS p
ON r.fkidpais = p.id
group by p.Id
;
```

| nombre   | cantidadClientes |
|----------|------------------|
| colombia |                6 |
| españa   |                5 |
| usa      |                5 |
| peru     |                5 |
| canada   |                5 |


3. ¿Cuál fue el pago medio en 2009?
```sql
SELECT avg(total)
FROM pago
WHERE year(fechaPago) =2009;
```

| avg(total) |
|------------|
| 550.000000 |


4. ¿Cuántos pedidos hay en cada estado? Ordena el resultado de forma
descendente por el número de pedidos.
```sql
SELECT  r.nombre, count(p.id)
FROM region AS r
JOIN ciudad AS c
ON c.fkidregion=r.id
JOIN cliente AS cl
ON cl.fkIdCiudad = c.id
JOIN pedido AS p
ON p.fkIdCodigoCliente=cl.id
group by r.nombre
ORDER BY  count(p.id) desc;
```


| nombre           | count(p.id) |
|------------------|-------------|
| Boyacá           |           4 |
| Arequipa         |           2 |
| British Columbia |           2 |
| Florida          |           2 |
| Piura            |           2 |
| Valencia         |           1 |
| Santander        |           1 |
| Alberta          |           1 |
| Basque Country   |           1 |
| Illinois         |           1 |
| Nova Scotia      |           1 |
| Caldas           |           1 |
| Manitoba         |           1 |

```

5. Calcula el precio de venta del producto más caro y más barato en una
misma consulta.
```sql
SELECT max(precioVenta) AS masCaro ,min(precioVenta) AS masBarato
FROM producto;
```

| masCaro | masBarato |
|---------|-----------|
|  240.00 |     50.00 |


6. Calcula el número de clientes que tiene la empresa.
```sql
SELECT count(id) AS numeroClientes
FROM cliente;
```

| numeroClientes |
|----------------|
|             26 |


7. ¿Cuántos clientes existen con domicilio en la ciudad de Madrid?
```sql
SELECT count(ci.nombre) AS clientesEnMadrid
FROM cliente as c
JOIN ciudad as ci
ON c.fkIdCiudad=ci.id
WHERE ci.nombre='madrid';
```

| clientesEnMadrid |
|------------------|
|                3 |


8. ¿Calcula cuántos clientes tiene cada una de las ciudades que empiezan
por M?
```sql
SELECT ci.nombre,count(c.id)
FROM cliente as c
JOIN ciudad as ci
ON c.fkIdCiudad=ci.id
WHERE c.nombre LIKE 'M%'
GROUP BY ci.id;
```

| nombre  | count(c.id) |
|---------|-------------|
| Piura   |           1 |
| Chicago |           1 |
| Halifax |           1 |


9. Devuelve el nombre de los representantes de ventas y el número de clientes
al que atiende cada uno.
```sql
SELECT e.nombre AS representanteVenta, count(c.id) AS cliente
FROM empleado AS e
JOIN cliente AS c
ON e.id=c.fkCodigoEmpleadoRepVentas
group by e.nombre;
```

| representanteVenta | cliente |
|--------------------|---------|
| Juan               |       2 |
| Maria              |       3 |
| Ana                |       2 |
| Luis               |       1 |
| Elena              |       4 |
| Jorge              |       2 |
| Silvia             |       1 |
| David              |       2 |
| Laura              |       1 |
| Pedro              |       1 |
| Marta              |       3 |
| Alberto            |       1 |
| Carmen             |       1 |
| Pablo              |       2 |

10. Calcula el número de clientes que no tiene asignado representante de
ventas.
```sql
SELECT count(c.nombre) AS clienteNoTieneRep
FROM cliente AS c
left JOIN  empleado AS e
ON e.id=c.fkCodigoEmpleadoRepVentas
WHERE  e.id is null;
```

| clienteNoTieneRep |
|-------------------|
|                 3 |


11. Calcula la fecha del primer y último pago realizado por cada uno de los
clientes. El listado deberá mostrar el nombre y los apellidos de cada cliente.
```sql
SELECT c.nombre,min(p.fechaPago),max(p.fechaPago)
FROM pago AS p
JOIN cliente AS c
ON p.fkIdCodigoCliente=c.id
group by c.id;
```

| nombre             | min(p.fechaPago) | max(p.fechaPago) |
|--------------------|------------------|------------------|
| Fabricaciones Eta  | 2008-01-17       | 2008-01-17       |
| Transporte Mu      | 2008-01-25       | 2008-01-25       |
| Medicina Alpha2    | 2008-02-11       | 2012-12-11       |
| Tecnologia Epsilon | 2008-10-11       | 2011-01-09       |
| Alimentos Omicron  | 2008-07-12       | 2008-07-12       |
| Energia Upsilon    | 2009-06-29       | 2010-10-30       |
| Consultoria Theta  | 2010-02-14       | 2010-02-14       |
| Agricultura Sigma  | 2010-04-21       | 2010-04-21       |
| Automotriz Chi     | 2010-08-08       | 2012-05-12       |
| Construcciones Xi  | 2011-04-16       | 2011-04-16       |
| Quimica Phi        | 2011-06-25       | 2011-06-25       |
| Desarrollos Iota   | 2011-09-03       | 2011-09-03       |
| Exportaciones Rho  | 2011-12-20       | 2011-12-20       |
| Metales Psi        | 2012-03-05       | 2012-03-05       |
| Soluciones Lambda  | 2012-08-19       | 2012-08-19       |
| Mineria Tau        | 2012-10-28       | 2012-10-28       |
| Industria Beta     | 2012-12-31       | 2012-12-31       |

;

12. Calcula el número de productos diferentes que hay en cada uno de los
pedidos.
```sql
SELECT pe.id, COUNT(DISTINCT pr.id) AS 'Cantidad de productos distintos'
FROM (producto AS pr 
JOIN detallepedido AS dp 
ON pr.id = dp.fkIdPedido)
JOIN pedido AS pe 
ON dp.fkIdPedido = pe.id
GROUP BY pe.id;
```

| id | Cantidad de productos distintos |
|----|---------------------------------|
|  3 |                               1 |
|  4 |                               1 |
|  5 |                               1 |
|  6 |                               1 |
|  7 |                               1 |
|  8 |                               1 |
|  9 |                               1 |
| 10 |                               1 |
| 11 |                               1 |
| 12 |                               1 |


13. Calcula la suma de la cantidad total de todos los productos que aparecen en
cada uno de los pedidos.
```sql
SELECT p.nombre, sum(dp.fkIdProducto) AS sumaProducto
FROM producto AS p
JOIN detallepedido AS dp
ON p.id=dp.fkIdProducto
group by p.id;
```


| nombre            | sumaProducto |
|-------------------|--------------|
| Pothos            |            1 |
| Dracaena          |            2 |
| Philodendron      |            3 |
| Orchid            |            4 |
| Helecho de Boston |            5 |
| Ficus             |            6 |
| Calatea           |            7 |
| Monstera          |            8 |
| Snake Plant       |            9 |
| Lirio de la Paz   |           10 |
| Aloe Vera         |           11 |
| Planta Araña      |           12 |
| Planta ZZ         |           13 |
| Rubber Plant      |           14 |
| Boston Fern       |           15 |
| Calathea          |           16 |
| Dracaena          |           17 |
| Bamboo Palm       |           18 |
| Ficus             |           19 |
| Monstera          |           20 |

14. Devuelve un listado de los 20 productos más vendidos y el número total de
unidades que se han vendido de cada uno. El listado deberá estar ordenado
por el número total de unidades vendidas.

```sql
SELECT p.nombre, sum(dp.fkIdProducto) AS sumaProducto
FROM producto AS p
JOIN detallepedido AS dp
ON p.id=dp.fkIdProducto
group by p.id
order by sumaProducto desc
limit 20;
```

| nombre            | sumaProducto |
|-------------------|--------------|
| Monstera          |           20 |
| Ficus             |           19 |
| Bamboo Palm       |           18 |
| Dracaena          |           17 |
| Calathea          |           16 |
| Boston Fern       |           15 |
| Rubber Plant      |           14 |
| Planta ZZ         |           13 |
| Planta Araña      |           12 |
| Aloe Vera         |           11 |
| Lirio de la Paz   |           10 |
| Snake Plant       |            9 |
| Monstera          |            8 |
| Calatea           |            7 |
| Ficus             |            6 |
| Helecho de Boston |            5 |
| Orchid            |            4 |
| Philodendron      |            3 |
| Dracaena          |            2 |
| Pothos            |            1 |


15. La facturación que ha tenido la empresa en toda la historia, indicando la
base imponible, el IVA y el total facturado. La base imponible se calcula
sumando el coste del producto por el número de unidades vendidas de la
tabla detalle_pedido. El IVA es el 21 % de la base imponible, y el total la
suma de los dos campos anteriores.
```sql
SELECT SUM(dp.precioUnidad * dp.cantidad) AS 'Base Imponible', 
       SUM((dp.precioUnidad * dp.cantidad) * 0.21) AS 'IVA', 
       SUM(dp.precioUnidad * dp.cantidad | ((dp.precioUnidad * dp.cantidad) * 0.21)) AS 'Total'
FROM ((((producto pr 
JOIN detallepedido dp 
ON pr.id = dp.fkIdPedido)
                  JOIN pedido pe ON dp.fkIdPedido = pe.id)
                 JOIN cliente c ON c.id = pe.fkIdCodigoCliente)
JOIN pago pa ON pa.fkIdCodigoCliente = c.id);

```

| Base Imponible | IVA      | Total     |
|----------------|----------|-----------|
|        2330.00 | 489.3000 | 2819.3000 |





16. La misma información que en la pregunta anterior, pero agrupada por
código de producto.
```sql
SELECT pr.nombre, SUM(dp.precioUnidad * dp.cantidad) AS 'Base Imponible', 
       SUM((dp.precioUnidad * dp.cantidad) * 0.21) AS 'IVA', 
       SUM(dp.precioUnidad * dp.cantidad | ((dp.precioUnidad * dp.cantidad) * 0.21)) AS 'Total'
FROM ((((producto pr 
JOIN detallepedido dp 
ON pr.id = dp.fkIdPedido)
                  JOIN pedido pe ON dp.fkIdPedido = pe.id)
                 JOIN cliente c ON c.id = pe.fkIdCodigoCliente)
JOIN pago pa ON pa.fkIdCodigoCliente = c.id)
group by pr.id;
```

| nombre            | Base Imponible | IVA      | Total     |
|-------------------|----------------|----------|-----------|
| Philodendron      |         120.00 |  25.2000 |  145.2000 |
| Helecho de Boston |         330.00 |  69.3000 |  399.3000 |
| Calatea           |         740.00 | 155.4000 |  895.4000 |
| Snake Plant       |         245.00 |  51.4500 |  296.4500 |
| Planta Araña      |         895.00 | 187.9500 | 1082.9500 |

17. La misma información que en la pregunta anterior, pero agrupada por
código de producto filtrada por los códigos que empiecen por OR.
```sql

SELECT pr.nombre, SUM(dp.precioUnidad * dp.cantidad) AS 'Base Imponible', 
       SUM((dp.precioUnidad * dp.cantidad) * 0.21) AS 'IVA', 
       SUM(dp.precioUnidad * dp.cantidad | ((dp.precioUnidad * dp.cantidad) * 0.21)) AS 'Total'
FROM ((((producto pr 
JOIN detallepedido dp 
ON pr.id = dp.fkIdPedido)
                  JOIN pedido pe ON dp.fkIdPedido = pe.id)
                 JOIN cliente c ON c.id = pe.fkIdCodigoCliente)
JOIN pago pa ON pa.fkIdCodigoCliente = c.id)
where pr.nombre like 'or%'
group by pr.id;
```

Empty set (0.00 sec)


18. Lista las ventas totales de los productos que hayan facturado más de 3000
euros. Se mostrará el nombre, unidades vendidas, total facturado y total
facturado con impuestos (21% IVA).
```sql

SELECT pr.nombre, SUM(dp.precioUnidad * dp.cantidad) AS 'Base Imponible', 
       SUM((dp.precioUnidad * dp.cantidad) * 0.21) AS 'IVA', 
       SUM(dp.precioUnidad * dp.cantidad | ((dp.precioUnidad * dp.cantidad) * 0.21)) AS Total
FROM ((((producto pr 
JOIN detallepedido dp 
ON pr.id = dp.fkIdPedido)
                  JOIN pedido pe ON dp.fkIdPedido = pe.id)
                 JOIN cliente c ON c.id = pe.fkIdCodigoCliente)
JOIN pago pa ON pa.fkIdCodigoCliente = c.id)
where  Total>3000
group by pr.id;
```

Empty set (0.00 sec)

19. Muestre la suma total de todos los pagos que se realizaron para cada uno
de los años que aparecen en la tabla pagos.

```sql
SELECT pa.fechaPago, SUM(dp.precioUnidad * dp.cantidad) AS 'Base Imponible', 
       SUM((dp.precioUnidad * dp.cantidad) * 0.21) AS 'IVA', 
       SUM(dp.precioUnidad * dp.cantidad | ((dp.precioUnidad * dp.cantidad) * 0.21)) AS 'Total'
FROM ((((producto pr 
JOIN detallepedido dp 
ON pr.id = dp.fkIdPedido)
                  JOIN pedido pe ON dp.fkIdPedido = pe.id)
                 JOIN cliente c ON c.id = pe.fkIdCodigoCliente)
JOIN pago pa ON pa.fkIdCodigoCliente = c.id)
group by pa.fechaPago;
```
| fechaPago  | Base Imponible | IVA      | Total     |
|------------|----------------|----------|-----------|
| 2010-02-14 |         450.00 |  94.5000 |  544.5000 |
| 2008-10-11 |         370.00 |  77.7000 |  447.7000 |
| 2011-01-09 |         370.00 |  77.7000 |  447.7000 |
| 2011-09-03 |         245.00 |  51.4500 |  296.4500 |
| 2008-01-25 |         895.00 | 187.9500 | 1082.9500 |



Subconsultas
Con operadores básicos de comparación

1. Devuelve el nombre del cliente con mayor límite de crédito.
```sql
SELECT nombre
FROM cliente
WHERE limiteCredito =( SELECT  max(limiteCredito) from cliente);
```
| nombre         |
|----------------|
| Industria Beta |


2. Devuelve el nombre del producto que tenga el precio de venta más caro.
```sql
SELECT nombre
FROM producto
WHERE precioVenta=( SELECT  max(precioVenta) from producto);
```
| nombre            |
|-------------------|
| Árbol del Dinero  |


3. Devuelve el nombre del producto del que se han vendido más unidades.
(Tenga en cuenta que tendrá que calcular cuál es el número total de
unidades que se han vendido de cada producto a partir de los datos de la
tabla detalle_pedido)
```sql
SELECT p.nombre, sum(dp.cantidad)
FROM producto p
JOIN detallepedido dp
on p.id=dp.fkIdProducto
WHERE dp.cantidad= (SELECT MAX(dp.cantidad)
                     FROM detallepedido dp)
group by p.nombre ;
```
| nombre      | sum(dp.cantidad) |
|-------------|------------------|
| Snake Plant |                6 |



4. Los clientes cuyo límite de crédito sea mayor que los pagos que haya
realizado. (Sin utilizar INNER JOIN).

```sql
SELECT id, Nombre
FROM Cliente
WHERE LimiteCredito > (
    SELECT SUM(total)
    FROM Pago
    WHERE Pago.fkIdCodigoCliente = Cliente.id
);
```
| id | Nombre             |
|----|--------------------|
|  2 | Industria Beta     |
|  5 | Tecnologia Epsilon |
|  7 | Fabricaciones Eta  |
|  8 | Consultoria Theta  |
|  9 | Desarrollos Iota   |
| 11 | Soluciones Lambda  |
| 12 | Transporte Mu      |
| 14 | Construcciones Xi  |
| 15 | Alimentos Omicron  |
| 17 | Exportaciones Rho  |
| 18 | Agricultura Sigma  |
| 19 | Mineria Tau        |
| 20 | Energia Upsilon    |
| 25 | Medicina Alpha2    |


5. Devuelve el producto que más unidades tiene en stock.
```sql
SELECT nombre
FROM producto
WHERE cantidadEnStock = (SELECT max(cantidadEnStock) FROM producto);
```
| nombre          |
|-----------------|
| Lirio de la Paz |


6. Devuelve el producto que menos unidades tiene en stock.
```sql
SELECT nombre
FROM producto
WHERE cantidadEnStock = (SELECT min(cantidadEnStock) FROM producto);
```
| nombre      |
|-------------|
| Boston Fern |



7. Devuelve el nombre, los apellidos y el email de los empleados que están a
cargo de Elena Hernandez.
```sql
SELECT concat(nombre,apellido1,apellido2) AS empleadosAcargo, email
from empleado
where fkIdJefe=(SELECT id from empleado where nombre ='Elena' ) AND apellido1='Hernandez';
```
| empleadosAcargo          | email                       |
|--------------------------|-----------------------------|
| SofíaHernándezJiménez    | sofia.hernandez@empresa.com |

Subconsultas con ALL y ANY



8. Devuelve el nombre del cliente con mayor límite de crédito.
```sql
SELECT nombre
FROM Cliente
WHERE LimiteCredito >= ALL (SELECT LimiteCredito FROM Cliente);
```

| nombre         |
|----------------|
| Industria Beta |


9. Devuelve el nombre del producto que tenga el precio de venta más caro.
```sql
SELECT nombre
FROM producto
WHERE precioVenta>= ALL (SELECT precioVenta FROM producto);
```
| nombre            |
|-------------------|
| Árbol del Dinero  |

10. Devuelve el producto que menos unidades tiene en stock.
```sql
SELECT nombre
FROM producto
WHERE cantidadEnStock <= ANY (SELECT MIN(cantidadEnStock) FROM producto);
```
| nombre      |
|-------------|
| Boston Fern |

Subconsultas con IN y NOT IN
11. Devuelve el nombre, apellido1 y cargo de los empleados que no
representen a ningún cliente.
```sql	
SELECT e.nombre,e.apellido1,p.nombre AS puesto
FROM empleado AS e
JOIN puesto AS p
ON e.fkPuesto =p.id
WHERE e.id  not  IN (SELECT fkCodigoEmpleadoRepVentas from cliente   );
```
| nombre  | apellido1  | puesto                  |
|---------|------------|-------------------------|
| Carlos  | Pérez      | Representante de Ventas |
| Carlos  | Rodríguez  | Representante de Ventas |
| Luis    | Martín     | Representante de Ventas |
| Miguel  | Ruiz       | Representante de Ventas |
| Javier  | Ramírez    | Representante de Ventas |
| Diego   | Gutiérrez  | Representante de Ventas |
| Pedro   | Marín      | Representante de Ventas |
| Antonio | Santos     | Representante de Ventas |
| Manuel  | Guerrero   | Representante de Ventas |
| José    | Vega       | Representante de Ventas |
| Antonia | López      | Gerente de Ventas       |
| Ana     | González   | Gerente de Ventas       |
| Sofía   | Hernández  | Gerente de Ventas       |
| Lucía   | Sánchez    | Gerente de Ventas       |
| Isabel  | Torres     | Gerente de Ventas       |
| Natalia | Romero     | Gerente de Ventas       |
| Carmen  | Iglesias   | Gerente de Ventas       |
| Paula   | Medina     | Gerente de Ventas       |
| Sara    | Castro     | Gerente de Ventas       |
| Raquel  | Suárez     | Gerente de Ventas       |


12. Devuelve un listado que muestre solamente los clientes que no han
realizado ningún pago.
```sql
SELECT nombre AS cliente
from cliente
where id in (SELECT fkIdCodigoCliente from pago);
```
| cliente            |
|--------------------|
| Empresa Alpha      |
| Comercio Gamma     |
| Servicios Delta    |
| Distribuidora Zeta |
| Proyectos Kappa    |
| Finanzas Nu        |
| Importaciones Pi   |
| Textiles Omega     |
| Educacion Beta2    |


13. Devuelve un listado que muestre solamente los clientes que sí han realizado
algún pago.
```sql
SELECT nombre AS cliente
from cliente
where id in (SELECT fkIdCodigoCliente from pago);
```
| cliente            |
|--------------------|
| Industria Beta     |
| Tecnologia Epsilon |
| Fabricaciones Eta  |
| Consultoria Theta  |
| Desarrollos Iota   |
| Soluciones Lambda  |
| Transporte Mu      |
| Construcciones Xi  |
| Alimentos Omicron  |
| Exportaciones Rho  |
| Agricultura Sigma  |
| Mineria Tau        |
| Energia Upsilon    |
| Quimica Phi        |
| Automotriz Chi     |
| Metales Psi        |
| Medicina Alpha2    |


14. Devuelve un listado de los productos que nunca han aparecido en un
pedido.
```sql
SELECT nombre AS productos
FROM  producto
WHERE id not in (SELECT fkIdProducto from detallepedido );
```
| productos                |
|--------------------------|
| Filodendro               |
| Sansevieria              |
| Lirio de la Paz          |
| Aloe Vera                |
| Poto                     |
| Planta Araña             |
| Planta ZZ                |
| Planta de Caucho         |
| Helecho de Boston        |
| Calatea                  |
| Drácena                  |
| Palma de Bambú           |
| Ave del Paraíso          |
| Planta de Interior China |
| Orquídea                 |
| Anturio                  |
| Bambú de la Suerte       |
| Árbol del Dinero         |


15. Devuelve el nombre, apellidos, puesto y teléfono de la oficina de aquellos
empleados que no sean representante de ventas de ningún cliente.
```sql
SELECT concat(e.nombre,e.apellido1),p.nombre AS puesto,t.numero
FROM empleado AS e
JOIN puesto AS p
ON e.fkPuesto =p.id
JOIN oficina AS o
ON  e.fkIdOficina=o.id
JOIN telefonooficina AS t
ON t.fkIdOficina=o.id
WHERE e.id not in (SELECT fkCodigoEmpleadoRepVentas from cliente);
```
| concat(e.nombre,e.apellido1) | puesto                  | numero     |
|------------------------------|-------------------------|------------|
| CarlosPérez                  | Representante de Ventas | 1234567890 |
| CarlosPérez                  | Representante de Ventas | 0987654321 |
| CarlosRodríguez              | Representante de Ventas | 2233445566 |
| LuisMartín                   | Representante de Ventas | 4455667788 |
| MiguelRuiz                   | Representante de Ventas | 6677889900 |
| JavierRamírez                | Representante de Ventas | 8899001122 |
| DiegoGutiérrez               | Representante de Ventas | 0011223344 |
| AntonioSantos                | Representante de Ventas | 4455667788 |
| ManuelGuerrero               | Representante de Ventas | 6677889900 |
| JoséVega                     | Representante de Ventas | 8899001122 |
| AnaGonzález                  | Gerente de Ventas       | 3344556677 |
| SofíaHernández               | Gerente de Ventas       | 5566778899 |
| LucíaSánchez                 | Gerente de Ventas       | 7788990011 |
| IsabelTorres                 | Gerente de Ventas       | 9900112233 |
| NataliaRomero                | Gerente de Ventas       | 1122334455 |
| CarmenIglesias               | Gerente de Ventas       | 3344556677 |
| PaulaMedina                  | Gerente de Ventas       | 5566778899 |
| SaraCastro                   | Gerente de Ventas       | 7788990011 |
| RaquelSuárez                 | Gerente de Ventas       | 9900112233 |


16. Devuelve las oficinas donde no trabajan ninguno de los empleados que
hayan sido los representantes de ventas de algún cliente que haya realizado
la compra de algún producto de la gama Frutales.

```sql
SELECT o.Nombre  AS oficina
FROM Oficina AS o
WHERE o.id NOT IN (
    SELECT e.fkIdOficina
    FROM Empleado AS e
    WHERE e.id IN (
        SELECT c.fkCodigoEmpleadoRepVentas
        FROM Cliente AS c
        WHERE c.id IN (
            SELECT p.id
            FROM Pedido AS p
            WHERE p.id IN (
                SELECT dp.fkIdPedido
                FROM DetallePedido AS dp
                JOIN Producto AS prod 
ON dp.fkIdPedido = prod.id
                WHERE prod.fkIdGama = 'Frutales'
            )
        )
    )
);
```
| oficina                      |
|------------------------------|
| Oficina Medellín Centro      |
| Oficina Barcelona Norte      |
| Oficina Los Angeles Oeste    |
| Oficina Lima Central         |
| Oficina Toronto Este         |
| Oficina Bogotá Norte         |
| Oficina Sevilla Sur          |
| Oficina Houston Central      |
| Oficina Cusco Centro         |
| Oficina Montreal Sur         |
| Oficina Tunja Centro         |
| Oficina Valencia Este        |
| Oficina New York Downtown    |
| Oficina Arequipa Sur         |
| Oficina Vancouver Norte      |
| Oficina Bucaramanga Este     |
| Oficina Madrid Centro        |
| Oficina Miami Beach          |
| Oficina Piura Norte          |
| Oficina Calgary Centro       |
| Oficina Pasto Centro         |
| Oficina Santiago Compostela  |
| Oficina Chicago Norte        |
| Oficina Tacna Centro         |
| Oficina Halifax Este         |
| Oficina Manizales Sur        |
| Oficina Bilbao Norte         |
| Oficina Atlanta Midtown      |
| Oficina Huancayo Norte       |
| Oficina Medellín Poblado     |
| Oficina Barcelona Centro     |
| Oficina Los Angeles Downtown |
| Oficina Lima Este            |
| Oficina Toronto Oeste        |
| Oficina Bogotá Centro        |


17. Devuelve un listado con los clientes que han realizado algún pedido pero no
han realizado ningún pago.


```sql
SELECT c.Nombre
FROM Cliente AS c
WHERE c.id IN (SELECT p.fkIdCodigoCliente FROM Pedido AS p)
  AND c.id NOT IN (SELECT pa.fkIdCodigoCliente FROM Pago AS pa);
```
| Nombre             |
|--------------------|
| Empresa Alpha      |
| Servicios Delta    |
| Distribuidora Zeta |
| Proyectos Kappa    |
| Finanzas Nu        |
| Importaciones Pi   |






Subconsultas con EXISTS y NOT EXISTS
18. Devuelve un listado que muestre solamente los clientes que no han
realizado ningún pago.
```sql
SELECT c.Nombre
FROM Cliente AS c
WHERE NOT EXISTS (
    SELECT 1
    FROM Pago AS p
    WHERE p.fkIdCodigoCliente = c.id
);
```
| Nombre             |
|--------------------|
| Empresa Alpha      |
| Comercio Gamma     |
| Servicios Delta    |
| Distribuidora Zeta |
| Proyectos Kappa    |
| Finanzas Nu        |
| Importaciones Pi   |
| Textiles Omega     |
| Educacion Beta2    |

19. Devuelve un listado que muestre solamente los clientes que sí han realizado
algún pago.

```sql
SELECT c.Nombre
FROM Cliente AS c
WHERE EXISTS (
    SELECT 1
    FROM Pago AS p
    WHERE p.fkIdCodigoCliente = c.id
);
```
| Nombre             |
|--------------------|
| Industria Beta     |
| Tecnologia Epsilon |
| Fabricaciones Eta  |
| Consultoria Theta  |
| Desarrollos Iota   |
| Soluciones Lambda  |
| Transporte Mu      |
| Construcciones Xi  |
| Alimentos Omicron  |
| Exportaciones Rho  |
| Agricultura Sigma  |
| Mineria Tau        |
| Energia Upsilon    |
| Quimica Phi        |
| Automotriz Chi     |
| Metales Psi        |
| Medicina Alpha2    |

20. Devuelve un listado de los productos que nunca han aparecido en un
pedido.
```sql
SELECT p.Nombre
FROM Producto AS p
WHERE NOT EXISTS (
    SELECT 1
    FROM DetallePedido AS dp
    WHERE dp.fkIdProducto = p.id
);
```
| Nombre                   |
|--------------------------|
| Filodendro               |
| Sansevieria              |
| Lirio de la Paz          |
| Aloe Vera                |
| Poto                     |
| Planta Araña             |
| Planta ZZ                |
| Planta de Caucho         |
| Helecho de Boston        |
| Calatea                  |
| Drácena                  |
| Palma de Bambú           |
| Ave del Paraíso          |
| Planta de Interior China |
| Orquídea                 |
| Anturio                  |
| Bambú de la Suerte       |
| Árbol del Dinero         |

21. Devuelve un listado de los productos que han aparecido en un pedido
alguna vez.

```sql
SELECT p.Nombre
FROM Producto AS p
WHERE EXISTS (
    SELECT 1
    FROM DetallePedido AS dp
    WHERE dp.fkIdProducto = p.id
);
```
| Nombre            |
|-------------------|
| Pothos            |
| Dracaena          |
| Philodendron      |
| Orchid            |
| Helecho de Boston |
| Ficus             |
| Calatea           |
| Monstera          |
| Snake Plant       |
| Lirio de la Paz   |
| Aloe Vera         |
| Planta Araña      |
| Planta ZZ         |
| Rubber Plant      |
| Boston Fern       |
| Calathea          |
| Dracaena          |
| Bamboo Palm       |
| Ficus             |
| Monstera          |



Subconsultas correlacionadas
Consultas variadas
1. Devuelve el listado de clientes indicando el nombre del cliente y cuántos
pedidos ha realizado. Tenga en cuenta que pueden existir clientes que no
han realizado ningún pedido.

```sql
SELECT c.Nombre, COUNT(p.id) AS NumPedidos
FROM Cliente AS c
LEFT JOIN Pedido AS p ON c.id = p.id
GROUP BY c.id, c.Nombre;
```
| Nombre             | NumPedidos |
|--------------------|------------|
| Empresa Alpha      |          1 |
| Industria Beta     |          1 |
| Comercio Gamma     |          1 |
| Servicios Delta    |          1 |
| Tecnologia Epsilon |          1 |
| Distribuidora Zeta |          1 |
| Fabricaciones Eta  |          1 |
| Consultoria Theta  |          1 |
| Desarrollos Iota   |          1 |
| Proyectos Kappa    |          1 |
| Soluciones Lambda  |          1 |
| Transporte Mu      |          1 |
| Finanzas Nu        |          1 |
| Construcciones Xi  |          1 |
| Alimentos Omicron  |          1 |
| Importaciones Pi   |          1 |
| Exportaciones Rho  |          1 |
| Agricultura Sigma  |          1 |
| Mineria Tau        |          1 |
| Energia Upsilon    |          1 |
| Quimica Phi        |          0 |
| Automotriz Chi     |          0 |
| Metales Psi        |          0 |
| Textiles Omega     |          0 |
| Medicina Alpha2    |          0 |
| Educacion Beta2    |          0 |


2. Devuelve un listado con los nombres de los clientes y el total pagado por
cada uno de ellos. Tenga en cuenta que pueden existir clientes que no han
realizado ningún pago.

```sql
SELECT c.Nombre, COALESCE(SUM(pa.total), 0) AS TotalPagado
FROM Cliente AS c
LEFT JOIN Pago AS pa ON c.id = pa.idTransaccion
GROUP BY c.id, c.Nombre;
```
| Nombre             | TotalPagado |
|--------------------|-------------|
| Empresa Alpha      |      200.00 |
| Industria Beta     |    30000.00 |
| Comercio Gamma     |     2010.00 |
| Servicios Delta    |    20000.00 |
| Tecnologia Epsilon |     2600.00 |
| Distribuidora Zeta |      400.00 |
| Fabricaciones Eta  |      500.00 |
| Consultoria Theta  |      600.00 |
| Desarrollos Iota   |      700.00 |
| Proyectos Kappa    |      800.00 |
| Soluciones Lambda  |    90000.00 |
| Transporte Mu      |     1000.00 |
| Finanzas Nu        |     1100.00 |
| Construcciones Xi  |     1200.00 |
| Alimentos Omicron  |   130000.00 |
| Importaciones Pi   |     1400.00 |
| Exportaciones Rho  |     1500.00 |
| Agricultura Sigma  |   160000.00 |
| Mineria Tau        |     1700.00 |
| Energia Upsilon    |     1800.00 |
| Quimica Phi        |     1900.00 |
| Automotriz Chi     |     2000.00 |
| Metales Psi        |     2100.00 |
| Textiles Omega     |        0.00 |
| Medicina Alpha2    |        0.00 |
| Educacion Beta2    |        0.00 |

3. Devuelve el nombre de los clientes que hayan hecho pedidos en 2008
ordenados alfabéticamente de menor a mayor.

```sql
SELECT DISTINCT c.Nombre
FROM Cliente AS c
JOIN Pedido AS p ON c.id = p.id
WHERE YEAR(p.FechaPedido) = 2008
ORDER BY c.Nombre;
```

| Nombre            |
|-------------------|
| Empresa Alpha     |
| Industria Beta    |
| Soluciones Lambda |
| Transporte Mu     |

4. Devuelve el nombre del cliente, el nombre y primer apellido de su
representante de ventas y el número de teléfono de la oficina del
representante de ventas, de aquellos clientes que no hayan realizado ningún
pago.

```sql
SELECT c.Nombre AS NombreCliente, e.Nombre AS NombreRepresentante, e.Apellido1, t.numero
FROM Cliente AS c
JOIN Empleado AS e ON c.fkCodigoEmpleadoRepVentas = e.id
JOIN Oficina AS o ON e.fkIdOficina = o.id
join telefonooficina AS t ON  t.fkIdOficina=o.id
WHERE NOT EXISTS (
    SELECT 1
    FROM Pago AS pa
    WHERE pa.fkIdCodigoCliente = c.id
);
```
| NombreCliente      | NombreRepresentante | Apellido1 | numero     |
|--------------------|---------------------|-----------|------------|
| Empresa Alpha      | Juan                | Perez     | 1234567890 |
| Empresa Alpha      | Juan                | Perez     | 0987654321 |
| Comercio Gamma     | Ana                 | Martinez  | 1234567890 |
| Comercio Gamma     | Ana                 | Martinez  | 0987654321 |
| Servicios Delta    | Luis                | Lopez     | 1122334455 |
| Distribuidora Zeta | Jorge               | Garcia    | 1234567890 |
| Distribuidora Zeta | Jorge               | Garcia    | 0987654321 |
| Finanzas Nu        | Carmen              | Gomez     | 1122334455 |
| Importaciones Pi   | Juan                | Perez     | 1234567890 |
| Importaciones Pi   | Juan                | Perez     | 0987654321 |
| Textiles Omega     | Elena               | Hernandez | 2233445566 |
| Educacion Beta2    | Jorge               | Garcia    | 1234567890 |
| Educacion Beta2    | Jorge               | Garcia    | 0987654321 |


5. Devuelve el listado de clientes donde aparezca el nombre del cliente, el
nombre y primer apellido de su representante de ventas y la ciudad donde
está su oficina.

```sql
SELECT c.Nombre AS NombreCliente, e.Nombre AS NombreRepresentante, e.Apellido1,ci.nombre
FROM Cliente AS c
JOIN Empleado AS e ON c.fkCodigoEmpleadoRepVentas = e.id
JOIN Oficina AS o ON e.fkIdOficina = o.id
join ciudad AS ci ON o.fkIdCiudad = ci.id;
```
| NombreCliente      | NombreRepresentante | Apellido1 | nombre      |
|--------------------|---------------------|-----------|-------------|
| Empresa Alpha      | Juan                | Perez     | Medellín    |
| Industria Beta     | Maria               | Gonzalez  | Barcelona   |
| Comercio Gamma     | Ana                 | Martinez  | Medellín    |
| Servicios Delta    | Luis                | Lopez     | Barcelona   |
| Tecnologia Epsilon | Elena               | Hernandez | Los Angeles |
| Distribuidora Zeta | Jorge               | Garcia    | Medellín    |
| Fabricaciones Eta  | Laura               | Fernandez | Medellín    |
| Consultoria Theta  | David               | Sanchez   | Los Angeles |
| Desarrollos Iota   | Laura               | Fernandez | Medellín    |
| Soluciones Lambda  | Marta               | Ruiz      | Los Angeles |
| Transporte Mu      | Alberto             | Garcia    | Medellín    |
| Finanzas Nu        | Carmen              | Gomez     | Barcelona   |
| Construcciones Xi  | Pablo               | Hernandez | Los Angeles |
| Alimentos Omicron  | Elena               | Hernandez | Los Angeles |
| Importaciones Pi   | Juan                | Perez     | Medellín    |
| Exportaciones Rho  | Pablo               | Hernandez | Los Angeles |
| Mineria Tau        | Silvia              | Martinez  | Barcelona   |
| Energia Upsilon    | Elena               | Hernandez | Los Angeles |
| Quimica Phi        | Marta               | Ruiz      | Los Angeles |
| Automotriz Chi     | Maria               | Gonzalez  | Barcelona   |
| Metales Psi        | Ana                 | Martinez  | Medellín    |
| Textiles Omega     | Elena               | Hernandez | Los Angeles |
| Medicina Alpha2    | Laura               | Fernandez | Medellín    |
| Educacion Beta2    | Jorge               | Garcia    | Medellín    |

6. Devuelve el nombre, apellidos, puesto y teléfono de la oficina de aquellos
empleados que no sean representante de ventas de ningún cliente.

```sql
SELECT e.Nombre, e.Apellido1, e.Apellido2, p.Nombre AS Puesto, t.numero
FROM Empleado AS e
JOIN Puesto AS p ON e.fkPuesto = p.id
JOIN Oficina AS o ON e.fkIdOficina = o.id
JOIN telefonooficina AS t ON t.fkIdOficina= o.id
WHERE NOT EXISTS (
    SELECT 1
    FROM Cliente AS c
    WHERE c.fkCodigoEmpleadoRepVentas = e.id
);
```
| Nombre  | Apellido1  | Apellido2  | Puesto                  | numero     |
|---------|------------|------------|-------------------------|------------|
| Carlos  | Pérez      | García     | Representante de Ventas | 1234567890 |
| Carlos  | Pérez      | García     | Representante de Ventas | 0987654321 |
| Carlos  | Rodríguez  | Fernández  | Representante de Ventas | 2233445566 |
| Luis    | Martín     | Gómez      | Representante de Ventas | 4455667788 |
| Miguel  | Ruiz       | Díaz       | Representante de Ventas | 6677889900 |
| Javier  | Ramírez    | Castillo   | Representante de Ventas | 8899001122 |
| Diego   | Gutiérrez  | Silva      | Representante de Ventas | 0011223344 |
| Antonio | Santos     | Pérez      | Representante de Ventas | 4455667788 |
| Manuel  | Guerrero   | Cruz       | Representante de Ventas | 6677889900 |
| José    | Vega       | Flores     | Representante de Ventas | 8899001122 |
| Ana     | González   | Hernández  | Gerente de Ventas       | 3344556677 |
| Sofía   | Hernández  | Jiménez    | Gerente de Ventas       | 5566778899 |
| Lucía   | Sánchez    | Álvarez    | Gerente de Ventas       | 7788990011 |
| Isabel  | Torres     | Ortiz      | Gerente de Ventas       | 9900112233 |
| Natalia | Romero     | Ramos      | Gerente de Ventas       | 1122334455 |
| Carmen  | Iglesias   | Morales    | Gerente de Ventas       | 3344556677 |
| Paula   | Medina     | Mendoza    | Gerente de Ventas       | 5566778899 |
| Sara    | Castro     | Herrera    | Gerente de Ventas       | 7788990011 |
| Raquel  | Suárez     | Campos     | Gerente de Ventas       | 9900112233 |

7. Devuelve un listado indicando todas las ciudades donde hay oficinas y el
número de empleados que tiene.


```sql
SELECT c.nombre, COUNT(e.id) AS NumEmpleados
FROM Oficina AS o
LEFT JOIN Empleado AS e ON o.id = e.fkIdOficina
JOIN ciudad AS c ON o.fkIdCiudad =c.id
GROUP BY c.nombre;
```
| nombre                 | NumEmpleados |
|------------------------|--------------|
| Medellín               |            6 |
| Barcelona              |            4 |
| Los Angeles            |            5 |
| Lima                   |            1 |
| Toronto                |            1 |
| Bogotá                 |            1 |
| Sevilla                |            1 |
| Houston                |            1 |
| Cusco                  |            1 |
| Montreal               |            1 |
| Tunja                  |            1 |
| Valencia               |            1 |
| New York City          |            0 |
| Arequipa               |            1 |
| Vancouver              |            1 |
| Bucaramanga            |            1 |
| Madrid                 |            1 |
| Miami                  |            1 |
| Piura                  |            1 |
| Calgary                |            1 |
| Pasto                  |            0 |
| Santiago de Compostela |            0 |
| Chicago                |            0 |
| Tacna                  |            0 |
| Halifax                |            0 |
| Manizales              |            0 |
| Fuenlabrada            |            0 |
| Atlanta                |            0 |
| Huancayo               |            0 |

