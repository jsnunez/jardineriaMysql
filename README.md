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


