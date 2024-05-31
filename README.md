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



7. Devuelve el nombre de los clientes y el nombre de sus representantes junto
con la ciudad de la oficina a la que pertenece el representante.

8. Devuelve un listado con el nombre de los empleados junto con el nombre
de sus jefes.
9. Devuelve un listado que muestre el nombre de cada empleados, el nombre
de su jefe y el nombre del jefe de sus jefe.
10. Devuelve el nombre de los clientes a los que no se les ha entregado a
tiempo un pedido.
11. Devuelve un listado de las diferentes gamas de producto que ha comprado
cada cliente.
