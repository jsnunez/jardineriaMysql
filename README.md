


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

5. Devuelve un listado con el nombre, apellidos y puesto de aquellos
empleados que no sean representantes de ventas.

 ```sql
SELECT nombre, apellido1, apellido2, email
FROM empleado
WHERE fkIdJefe <> 1 ;
 ```



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



7. Devuelve un listado con los distintos estados por los que puede pasar un
pedido.

```sql
select nombre from estado;
```

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

• Utilizando la función DATE_FORMAT de MySQL.
```sql
SELECT  idTransaccion
FROM pago
WHERE DATE_FORMAT(fechaPago,"%Y")='2008'
GROUP BY idTransaccion;
```
• Sin utilizar ninguna de las funciones anteriores.

```sql
SELECT  idTransaccion
FROM pago
WHERE fechaPago<'2009,01,01';
```

9. Devuelve un listado con el código de pedido, código de cliente, fecha
esperada y fecha de entrega de los pedidos que no han sido entregados a
tiempo.

```sql
SELECT p.id AS codigo_pedido, p.fkIdCodigoCliente,p.fechaEsperada,p.fechaEntrega
FROM pedido p
WHERE p.fechaEntrega> p.fechaEsperada;
```

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

• Utilizando la función DATEDIFF de MySQL.
```sql
SELECT  p.id AS codigo_pedido, p.fkIdCodigoCliente,p.fechaEsperada,p.fechaEntrega
FROM pedido p
WHERE DATEDIFF(p.fechaEsperada,p.fechaEntrega) >= 2 ;
```

11. Devuelve un listado de todos los pedidos que fueron rechazados en 2009.
```sql
SELECT p.id AS codigo_pedido
FROM pedido AS p JOIN estado AS e
ON p.fkIdEstado=e.id
WHERE e.nombre='rechazado' and year(fechaPedido) = '2009';
```

12. Devuelve un listado de todos los pedidos que han sido entregados en el
mes de enero de cualquier año.
```sql
SELECT p.id AS codigo_pedido, p.fechaEntrega
FROM pedido AS p 
WHERE MONTH(fechaEntrega)= '01';
```
13. Devuelve un listado con todos los pagos que se realizaron en el
año 2008 mediante Paypal. Ordene el resultado de mayor a menor.

```sql
SELECT p.total,p.idTransaccion,f.nombre AS forma_pago
FROM pago AS p JOIN formapago AS f
ON p.fkFormaPago=f.id
WHERE f.nombre='Paypal' AND YEAR(fechaPago)=2008
ORDER BY p.total DESC;
```

14. Devuelve un listado con todas las formas de pago que aparecen en la
tabla pago. Tenga en cuenta que no deben aparecer formas de pago
repetidas.

```sql
SELECT f.nombre
FROM pago AS p JOIN formapago AS f
ON p.fkFormaPago=f.id
GROUP BY f.id;
```

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

16. Devuelve un listado con todos los clientes que sean de la ciudad de Madrid y
cuyo representante de ventas tenga el código de empleado 11 o 30.

```sql
SELECT c.nombre,fkCodigoEmpleadoRepVentas 
FROM  cliente AS c JOIN ciudad AS ci
ON c.fkIdCiudad= ci.id
WHERE ci.nombre = 'madrid' AND fkCodigoEmpleadoRepVentas =11 OR fkCodigoEmpleadoRepVentas =30;
```

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

9. Devuelve un listado con el nombre de los empleados junto con el nombre
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

11. Devuelve un listado que muestre el nombre de cada empleados, el nombre
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

13. Devuelve el nombre de los clientes a los que no se les ha entregado a
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

15. Devuelve un listado de las diferentes gamas de producto que ha comprado
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

SELECT
FROM
LEFT

3. Devuelve un listado que muestre solamente los clientes que no han
realizado ningún pedido.
4. Devuelve un listado que muestre los clientes que no han realizado ningún
pago y los que no han realizado ningún pedido.
5. Devuelve un listado que muestre solamente los empleados que no tienen
una oficina asociada.
6. Devuelve un listado que muestre solamente los empleados que no tienen un
cliente asociado.
7. Devuelve un listado que muestre solamente los empleados que no tienen un
cliente asociado junto con los datos de la oficina donde trabajan.
8. Devuelve un listado que muestre los empleados que no tienen una oficina
asociada y los que no tienen un cliente asociado.
9. Devuelve un listado de los productos que nunca han aparecido en un
pedido.

10. Devuelve un listado de los productos que nunca han aparecido en un
pedido. El resultado debe mostrar el nombre, la descripción y la imagen del
producto.
11. Devuelve las oficinas donde no trabajan ninguno de los empleados que
hayan sido los representantes de ventas de algún cliente que haya realizado
la compra de algún producto de la gama Frutales.
12. Devuelve un listado con los clientes que han realizado algún pedido pero no
han realizado ningún pago.
13. Devuelve un listado con los datos de los empleados que no tienen clientes
asociados y el nombre de su jefe asociado.

