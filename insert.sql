

insert into pais (nombre) 
values ('colombia'), 
('españa'),
 ('usa'),
 ('peru'),
 ('canada');

INSERT INTO region (nombre, fkidpais) 
VALUES 
   ('Boyacá', 1),
    ('Valencia', 2),
    ('New York', 3),
    ('Arequipa', 4),
    ('British Columbia', 5),
    ('Santander', 1),
    ('Madrid', 2),
    ('Florida', 3),
    ('Piura', 4),
    ('Alberta', 5),
    ('Nariño', 1),
    ('Galicia', 2),
    ('Illinois', 3),
    ('Tacna', 4),
    ('Nova Scotia', 5),
    ('Caldas', 1),
    ('Basque Country', 2),
    ('Georgia', 3),
    ('Junín', 4),
    ('Manitoba', 5),
    ('Antioquia', 1), 
    ('Cataluña', 2),
    ('California', 3),
    ('Lima', 4),
    ('Ontario', 5),
    ('Cundinamarca', 1),
    ('Andalucía', 2),
    ('Texas', 3),
    ('Cusco', 4),
    ('Quebec', 5);

INSERT INTO ciudad (nombre, fkidregion, codigo_postal) 
VALUES 
    ('Medellín', 1, '050001'),
    ('Barcelona', 2, '08001'),
    ('Los Angeles', 3, '90001'),
    ('Lima', 4, '15001'),
    ('Toronto', 5, 'M5A'),
    ('Bogotá', 6, '11001'),
    ('Sevilla', 7, '41001'),
    ('Houston', 8, '77001'),
    ('Cusco', 9, '08001'),
    ('Montreal', 10, 'H1A'),
    ('Tunja', 11, '15001'),
    ('Valencia', 12, '46001'),
    ('New York City', 13, '10001'),
    ('Arequipa', 14, '04001'),
    ('Vancouver', 15, 'V5K'),
    ('Bucaramanga', 16, '68001'),
    ('Madrid', 17, '28001'),
    ('Miami', 18, '33101'),
    ('Piura', 19, '20001'),
    ('Calgary', 20, 'T2A'),
    ('Pasto', 21, '52001'),
    ('Santiago de Compostela', 22, '15701'),
    ('Chicago', 23, '60601'),
    ('Tacna', 24, '23001'),
    ('Halifax', 25, 'B3H'),
    ('Manizales', 26, '17001'),
    ('Fuenlabrada', 27, '48001'),
    ('Atlanta', 28, '30301'),
    ('Huancayo', 29, '12001');

INSERT INTO oficina (nombre, fkIdCiudad)
 VALUES ('Oficina Medellín Centro', 1), 
('Oficina Barcelona Norte', 2),
 ('Oficina Los Angeles Oeste', 3), 
('Oficina Lima Central', 4),
 ('Oficina Toronto Este', 5), 
('Oficina Bogotá Norte', 6), 
('Oficina Sevilla Sur', 7),
 ('Oficina Houston Central', 8), 
('Oficina Cusco Centro', 9), 
('Oficina Montreal Sur', 10), 
('Oficina Tunja Centro', 11), 
('Oficina Valencia Este', 12),
 ('Oficina New York Downtown', 13),
 ('Oficina Arequipa Sur', 14), 
('Oficina Vancouver Norte', 15), 
('Oficina Bucaramanga Este', 16), 
('Oficina Madrid Centro', 17),
('Oficina Miami Beach', 18), 
('Oficina Piura Norte', 19), 
('Oficina Calgary Centro', 20),
 ('Oficina Pasto Centro', 21),
 ('Oficina Santiago Compostela', 22),
 ('Oficina Chicago Norte', 23),
 ('Oficina Tacna Centro', 24), 
('Oficina Halifax Este', 25), 
('Oficina Manizales Sur', 26),
 ('Oficina Bilbao Norte', 27),
 ('Oficina Atlanta Midtown', 28), 
('Oficina Huancayo Norte', 29), 
('Oficina Medellín Poblado', 1), 
('Oficina Barcelona Centro', 2), 
('Oficina Los Angeles Downtown', 3), 
('Oficina Lima Este', 4), 
('Oficina Toronto Oeste', 5),
 ('Oficina Bogotá Centro', 6);

INSERT INTO tipoTelefono (nombre) 
VALUES 
    ('Fijo'), 
    ('Móvil'),
    ('Fax');


INSERT INTO tipoDireccion (nombre) 
VALUES 
    ('Principal'), 
    ('Secundaria'),
    ('Correspondencia');


INSERT INTO telefonoOficina (numero, fkTipoTelefono, fkIdOficina)
VALUES
    ('1234567890', 1, 1),
    ('0987654321', 2, 1),
    ('1122334455', 3, 2),
    ('2233445566', 1, 3),
    ('3344556677', 2, 4),
    ('4455667788', 3, 5),
    ('5566778899', 1, 6),
    ('6677889900', 2, 7),
    ('7788990011', 3, 8),
    ('8899001122', 1, 9),
    ('9900112233', 2, 10),
    ('0011223344', 3, 11),
    ('1122334455', 1, 12),
    ('2233445566', 2, 13),
    ('3344556677', 3, 14),
    ('4455667788', 1, 15),
    ('5566778899', 2, 16),
    ('6677889900', 3, 17),
    ('7788990011', 1, 18),
    ('8899001122', 2, 19),
    ('9900112233', 3, 20),
    ('0011223344', 1, 21),
    ('1122334455', 2, 22),
    ('2233445566', 3, 23),
    ('3344556677', 1, 24),
    ('4455667788', 2, 25),
    ('5566778899', 3, 26),
    ('6677889900', 1, 27),
    ('7788990011', 2, 28),
    ('8899001122', 3, 29),
    ('9900112233', 1, 30);




INSERT INTO direccionOficina (direccion, fkTipoDireccion, fkIdOficina)
VALUES
    ('Avenida Siempre Viva 742', 1, 1),
    ('Boulevard de los Sueños Rotos 123', 2, 1),
    ('Calle de la Amargura 456', 3, 2),
    ('Plaza de la Alegría 789', 1, 3),
    ('Camino Real 101', 2, 4),
    ('Ruta del Sol 202', 3, 5),
    ('Avenida Libertador 303', 1, 6),
    ('Paseo de la Reforma 404', 2, 7),
    ('Callejón del Beso 505', 3, 8),
    ('Autopista Norte 606', 1, 9),
    ('Vía Láctea 707', 2, 10),
    ('Sendero Luminoso 808', 3, 11),
    ('Carretera Central 909', 1, 12),
    ('Calle del Comercio 1010', 2, 13),
    ('Avenida Principal 1111', 3, 14),
    ('Boulevard del Mar 1212', 1, 15),
    ('Calle de los Poetas 1313', 2, 16),
    ('Camino de Santiago 1414', 3, 17),
    ('Paseo del Prado 1515', 1, 18),
    ('Calle de la Luna 1616', 2, 19),
    ('Vía Appia 1717', 3, 20),
    ('Autopista del Sur 1818', 1, 21),
    ('Camino al Cielo 1919', 2, 22),
    ('Avenida del Libertador 2020', 3, 23),
    ('Callejón de los Milagros 2121', 1, 24),
    ('Ruta de la Plata 2222', 2, 25),
    ('Camino de los Andes 2323', 3, 26),
    ('Vía del Mar 2424', 1, 27),
    ('Avenida de los Volcanes 2525', 2, 28),
    ('Calle del Sol 2626', 3, 29),
    ('Boulevard de la Paz 2727', 1, 30);

INSERT INTO puesto (nombre)
VALUES 
    ('Representante de Ventas'), 
    ('Gerente de Ventas'), 
    ('Asistente Administrativo'),
    ('Coordinador de Marketing'),
    ('Analista Financiero'),
    ('Desarrollador de Software'),
    ('Gerente de Proyecto'),
('Especialista en Recursos Humanos'),
    ('Director de Operaciones'),
    ('Consultor de Negocios'),
    ('Ingeniero de Soporte'),
    ('Contador'),
    ('Diseñador Gráfico'),
    ('Jefe de Logística'),
    ('Asesor Jurídico'),
    ('Técnico de Mantenimiento'),
    ('Especialista en Redes'),
    ('Supervisor de Producción'),
    ('Analista de Datos'),
    ('Coordinador de Eventos');

INSERT INTO empleado (nombre, apellido1, apellido2, extension, email, fkIdOficina, fkIdJefe, fkPuesto)
VALUES

    ('Juan', 'Perez', 'Lopez', '1010', 'juan.perez@company.com', 1, NULL, 2),
    ('Maria', 'Gonzalez', 'Martinez', '1020', 'maria.gonzalez@company.com', 2, 1, 8),
   ('Ana', 'Martinez', 'Hernandez', '1040', 'ana.martinez@company.com', 1, 1, 1),  
    ('Luis', 'Lopez', 'Perez', '1050', 'luis.lopez@company.com', 2, 2, 3),  
    ('Elena', 'Hernandez', 'Gonzalez', '1060', 'elena.hernandez@company.com', 3, 3, 4),      ('Jorge', 'Garcia', 'Lopez', '1070', 'jorge.garcia@company.com', 1, 1, 1),  
    ('Silvia', 'Martinez', 'Ramirez', '1080', 'silvia.martinez@company.com', 2, 2, 3), 
    ('David', 'Sanchez', 'Fernandez', '1090', 'david.sanchez@company.com', 3, 3, 6),     ('Laura', 'Fernandez', 'Gomez', '1100', 'laura.fernandez@company.com', 1, 1, 7), 
    ('Pedro', 'Diaz', 'Ruiz', '1110', 'pedro.diaz@company.com', null, 2, 10), 
    ('Marta', 'Ruiz', 'Sanchez', '1120', 'marta.ruiz@company.com', 3, 7, 11),  
    ('Alberto', 'Garcia', 'Martinez', '1130', 'alberto.garcia@company.com', 1, 1, 1), 
    ('Carmen', 'Gomez', 'Lopez', '1140', 'carmen.gomez@company.com', 2, 2, 5),
    ('Pablo', 'Hernandez', 'Garcia', '1150', 'pablo.hernandez@company.com', 3, 7, 12),
('Carlos', 'Pérez', 'García', '1234', 'juan.perez@empresa.com', 1, 2, 1),
    ('Antonia', 'López', 'Martínez', '1235', 'maria.lopez@empresa.com', null, 1, 2),
    ('Carlos', 'Rodríguez', 'Fernández', '1236', 'carlos.rodriguez@empresa.com', 3, 2, 1),
    ('Ana', 'González', 'Hernández', '1237', 'ana.gonzalez@empresa.com', 4, 3, 2),
    ('Luis', 'Martín', 'Gómez', '1238', 'luis.martin@empresa.com', 5, 4, 1),
    ('Sofía', 'Hernández', 'Jiménez', '1239', 'sofia.hernandez@empresa.com', 6, 5, 2),
    ('Miguel', 'Ruiz', 'Díaz', '1240', 'miguel.ruiz@empresa.com', 7, 6, 1),
    ('Lucía', 'Sánchez', 'Álvarez', '1241', 'lucia.sanchez@empresa.com', 8, 7, 2),
    ('Javier', 'Ramírez', 'Castillo', '1242', 'javier.ramirez@empresa.com', 9, 8, 1),
    ('Isabel', 'Torres', 'Ortiz', '1243', 'isabel.torres@empresa.com', 10, 9, 2),
    ('Diego', 'Gutiérrez', 'Silva', '1244', 'diego.gutierrez@empresa.com', 11, 10, 1),
    ('Natalia', 'Romero', 'Ramos', '1245', 'natalia.romero@empresa.com', 12, 11, 2),
    ('Pedro', 'Marín', 'Vargas', '1246', 'pedro.marin@empresa.com', null, 12, 1),
    ('Carmen', 'Iglesias', 'Morales', '1247', 'carmen.iglesias@empresa.com', 14, 13, 2),
    ('Antonio', 'Santos', 'Pérez', '1248', 'antonio.santos@empresa.com', 15, 14, 1),
    ('Paula', 'Medina', 'Mendoza', '1249', 'paula.medina@empresa.com', 16, 15, 2),
    ('Manuel', 'Guerrero', 'Cruz', '1250', 'manuel.guerrero@empresa.com', 17, 16, 1),
    ('Sara', 'Castro', 'Herrera', '1251', 'sara.castro@empresa.com', 18, 17, 2),
    ('José', 'Vega', 'Flores', '1252', 'jose.vega@empresa.com', 19, 18, 1),
    ('Raquel', 'Suárez', 'Campos', '1253', 'raquel.suarez@empresa.com', 20, 19, 2);


INSERT INTO cliente (nombre, nombreContacto, apellidoContacto, fkIdCiudad, fkCodigoEmpleadoRepVentas, limiteCredito)
VALUES
    ('Empresa Alpha', 'Carlos', 'Mendez', 1, 1, 50000.00),
    ('Industria Beta', 'Laura', 'Gonzalez', 2, 2, 75000.00),
    ('Comercio Gamma', 'Luis', 'Rodriguez', 3, 3, 30000.00),
    ('Servicios Delta', 'Ana', 'Martinez', 4, 4, 60000.00),
    ('Tecnologia Epsilon', 'Elena', 'Hernandez', 5, 5, 45000.00),
    ('Distribuidora Zeta', 'Jorge', 'Garcia', 6, 6, 70000.00),
    ('Fabricaciones Eta', 'Silvia', 'Martinez',17, null, 52000.00),
    ('Consultoria Theta', 'David', 'Sanchez', 8, 8, 65000.00),
    ('Desarrollos Iota', 'Laura', 'Fernandez', 9, 9, 48000.00),
    ('Proyectos Kappa', 'Pedro', 'Diaz', 10, 10, 55000.00),
    ('Soluciones Lambda', 'Marta', 'Ruiz', 11, 11, 60000.00),
    ('Transporte Mu', 'Alberto', 'Garcia', 17, 12, 72000.00),
    ('Finanzas Nu', 'Carmen', 'Gomez', 13, 13, 34000.00),
    ('Construcciones Xi', 'Pablo', 'Hernandez', 14, 14, 41000.00),
    ('Alimentos Omicron', 'Eva', 'Lopez', 15, 5, 63000.00),
    ('Importaciones Pi', 'Rosa', 'Martinez', 16, 1, 54000.00),
    ('Exportaciones Rho', 'Miguel', 'Garcia', 17, 14, 45000.00),
    ('Agricultura Sigma', 'Julia', 'Perez', 18, null, 58000.00),
    ('Mineria Tau', 'Antonio', 'Gomez', 19, 7, 62000.00),
    ('Energia Upsilon', 'Francisco', 'Hernandez', 20, 5, 49000.00),
    ('Quimica Phi', 'Teresa', 'Lopez', 21, 11, 51000.00),
    ('Automotriz Chi', 'Andres', 'Martinez', 2, 2, 43000.00),
    ('Metales Psi', 'Clara', 'Garcia', 23, 3, 47000.00),
    ('Textiles Omega', 'Raul', 'Perez', 24, 5, 64000.00),
    ('Medicina Alpha2', 'Isabel', 'Gomez', 25, null, 58000.00),
    ('Educacion Beta2', 'Fernando', 'Hernandez', 6, 6, 40000.00)
;


INSERT INTO estado(nombre)
VALUES
('Entregado'),
('Rechazado'),
('Pendiente');

INSERT INTO formapago(nombre)
VALUES
('Paypal'),
('Nequi'),
('Tarjeta credito'),
('Tarjeta débito'),
('PSE'),
('Daviplata');


INSERT INTO pago (fkFormaPago, fkIdCodigoCliente, fechaPago, total)
VALUES
    (3, 7, '2008-01-17', 200.00),
    (1, 12, '2008-01-25', 300.00),
   (1, 25, '2008-12-11', 2010.00),
 (1, 5, '2008-10-11', 2000.00),
 (1, 25, '2008-2-11', 2600.00),
    (4, 15, '2008-07-12', 400.00),
    (2, 20, '2009-06-29', 500.00),
    (5, 25, '2009-09-03', 600.00),
    (1, 8, '2010-02-14', 700.00),
    (3, 18, '2010-04-21', 800.00),
    (2, 22, '2010-08-08', 900.00),
    (4, 20, '2010-10-30', 1000.00),
    (5, 5, '2011-01-09', 1100.00),
    (3, 14, '2011-04-16', 1200.00),
    (2, 21, '2011-06-25', 1300.00),
    (1, 9, '2011-09-03', 1400.00),
    (4, 17, '2011-12-20', 1500.00),
    (5, 23, '2012-03-05', 1600.00),
    (1, 22, '2012-05-12', 1700.00),
    (2, 11, '2012-08-19', 1800.00),
    (3, 19, '2012-10-28', 1900.00),
    (4, 25, '2012-12-11', 2000.00),
    (5, 2, '2012-12-31', 2100.00);

INSERT INTO pedido (fechaPedido, fechaEsperada, fechaEntrega, fkIdEstado, comentario, fkIdCodigoCliente)
VALUES
    ('2008-01-15', '2008-01-20', '2008-01-18', 1, 'First order', 1),
    ('2008-03-10', '2008-03-15', '2008-03-13', 2, 'Second order', 2),
    ('2009-05-20', '2009-05-25', '2009-05-28', 3, 'Third order', 8),
    ('2009-07-25', '2009-07-30', '2009-07-28', 1, 'Fourth order', 4),
    ('2010-09-12', '2010-09-17', '2010-09-25', 2, 'Fifth order', 8),
    ('2010-11-10', '2010-11-15', '2010-11-12', 3, 'Sixth order', 6),
    ('2011-01-05', '2011-01-10', '2011-01-08', 1, 'Seventh order', 5),
    ('2011-03-20', '2011-03-25', '2011-03-22', 2, 'Eighth order', 10),
    ('2012-05-18', '2012-05-23', '2012-05-20', 3, 'Ninth order', 9),
    ('2012-07-14', '2012-07-19', '2012-07-17', 1, 'Tenth order', 1),
    ('2008-02-25', '2008-03-02', '2008-03-05', 2, 'Eleventh order', 1),
    ('2008-04-18', '2008-04-23', '2008-04-25', 3, 'Twelfth order', 12),
    ('2009-06-05', '2009-06-10', '2009-06-08', 1, 'Thirteenth order', 13),
    ('2009-08-19', '2009-08-24', '2009-08-21', 2, 'Fourteenth order', 4),
    ('2010-10-25', '2010-10-30', '2010-10-27', 3, 'Fifteenth order', 5),
    ('2010-12-14', '2010-12-19', '2010-12-16', 1, 'Sixteenth order', 16),
    ('2011-02-28', '2011-03-05', '2011-03-03', 2, 'Seventeenth order', 15),
    ('2011-04-16', '2011-04-21', '2011-04-18', 3, 'Eighteenth order', 9),
    ('2012-06-10', '2012-06-15', '2012-06-17', 1, 'Nineteenth order', 1),
    ('2012-08-24', '2012-08-29', '2012-08-27', 2, 'Twentieth order', 20);

INSERT INTO gamaproducto (nombre,descripcion_texto,descripcion_html,imagen)
VALUES
 ('Herbaceas','Plantas para jardin decorativas','descripcion herbaceas','herbaceas.jpg'),
('Herramientas','Herramientas para todo tipo de acción','Descripcion Herramientas','Herramientas.jpg'),
('Aromáticas','Plantas aromáticas','Descripcion Aromáticas','Aromáticas.jpg'),
('Frutales','Árboles pequeños de producción frutal','DeFrutales','Frutales.jpg'),
('Ornamentales','Plantas vistosas para la decoración del jardín',NULL,NULL);


INSERT INTO proveedor (nombre, nit, fkCiudad)
VALUES
    ('Plantas Tropicales', '100001', 1),
    ('Verdes y Más', '100002', 2),
    ('Jardines del Sol', '100003', 3),
    ('Naturaleza Viva', '100004', 4),
    ('Flora y Fauna', '100005', 5),
    ('Verde Esperanza', '100006', 6),
    ('EcoPlantas', '100007', 7),
    ('Plantas del Caribe', '100008', 8),
    ('Botánica Bella', '100009', 9),
    ('Green World', '100010', 10),
    ('Hojas y Flores', '100011', 11),
    ('Naturaleza Eterna', '100012', 12),
    ('EcoJardines', '100013', 13),
    ('Bosques y Jardines', '100014', 14),
    ('Verde Natural', '100015', 15),
    ('Jardines y Plantas', '100016', 16),
    ('Flor y Verde', '100017', 17),
    ('Plantas de la Sierra', '100018', 18),
    ('Naturaleza en Casa', '100019', 19),
    ('Verde Hogar', '100020', 20);


INSERT INTO telefonoProveedor (numero, fkTipoTelefono, fkIdProveedor)
VALUES
    ('123456789', 1, 1),
    ('987654321', 2, 2),
    ('456123789', 1, 3),
    ('789456123', 2, 4),
    ('321654987', 1, 5),
    ('654987321', 2, 6),
    ('147258369', 1, 7),
    ('369258147', 2, 8),
    ('258147369', 1, 9),
    ('741852963', 2, 10),
    ('963852741', 1, 11),
    ('159753486', 2, 12),
    ('486351792', 1, 13),
    ('753159486', 2, 14),
    ('852963741', 1, 15),
    ('147369258', 2, 16),
    ('258963147', 1, 17),
    ('369741852', 2, 18),
    ('741258963', 1, 19),
    ('963147852', 2, 20);


INSERT INTO direccionProveedor (direccion, fkTipoDireccion, fkIdProveedor)
VALUES
    ('123 Plantas St.', 1, 1),
    ('456 Verdes Ave.', 2, 2),
    ('789 Jardines Rd.', 1, 3),
    ('101 Naturaleza Blvd.', 2, 4),
    ('102 Flora St.', 1, 5),
    ('103 Esperanza Ave.', 2, 6),
    ('104 EcoPlantas Rd.', 1, 7),
    ('105 Caribe Blvd.', 2, 8),
    ('106 Bella St.', 1, 9),
    ('107 World Ave.', 2, 10),
    ('108 Flores Rd.', 1, 11),
    ('109 Eterna Blvd.', 2, 12),
    ('110 EcoJardines St.', 1, 13),
    ('111 Bosques Ave.', 2, 14),
    ('112 Natural Rd.', 1, 15),
    ('113 Plantas Blvd.', 2, 16),
    ('114 Verde St.', 1, 17),
    ('115 Sierra Ave.', 2, 18),
    ('116 Casa Rd.', 1, 19),
    ('117 Hogar Blvd.', 2, 20);


INSERT INTO producto (nombre, fkIdGama, dimension, fkIdProveedor, descripcion, cantidadEnStock, precioVenta, precioProveedor)
VALUES
    ('Pothos', 1, '70x80x90', 7, 'Epipremnum aureum, también conocido como potos dorado, es una especie de planta con flores en la familia de las aráceas.', 180, 110.00, 75.00),
    ('Dracaena', 1, '130x140x150', 13, 'Dracaena es un género de aproximadamente 120 especies de árboles y arbustos suculentos.', 190, 170.00, 105.00),
    ('Philodendron', 3, '30x40x50', 3, 'Philodendron es un gran género de plantas con flores en la familia Araceae.', 150, 70.00, 50.00),
    ('Orchid', 2, '170x180x190', 17, 'Orchidaceae, comúnmente conocida como la familia de las orquídeas, es una familia diversa y extendida de plantas con flores.', 170, 210.00, 125.00),
    ('Helecho de Boston', 2, '110x120x130', 11, 'Nephrolepis exaltata, conocido como el helecho de Boston, es una especie de helecho en la familia Lomariopsidaceae.', 110, 150.00, 95.00),
    ('Ficus', 1, '10x20x30', 5, 'Ficus es un género de aproximadamente 850 especies de árboles, arbustos, vides, epífitas y hemiepífitas en la familia Moraceae.', 100, 50.00, 30.00),
    ('Calatea', 3, '120x130x140', 12, 'Calathea es un género de plantas pertenecientes a la familia Marantaceae.', 160, 160.00, 100.00),
    ('Monstera', 2, '20x30x40', 2, 'Monstera es un género de 45 especies de plantas con flores en la familia de las aráceas.', 200, 60.00, 40.00),
    ('Snake Plant', 1, '40x50x60', 4, 'Sansevieria es un género de aproximadamente 70 especies de plantas con flores, nativas de África, Madagascar y el sur de Asia.', 120, 80.00, 55.00),
    ('Lirio de la Paz', 5, '50x60x70', 5, 'Spathiphyllum es un género de aproximadamente 40 especies de plantas con flores comúnmente llamadas "lirios de la paz".', 30, 90.00, 60.00),
    ('Aloe Vera', 3, '60x70x80', 6, 'Aloe vera es una especie de planta suculenta del género Aloe.', 250, 100.00, 70.00),
    ('Planta Araña', 2, '80x90x100', 8, 'Chlorophytum comosum, a menudo llamada planta araña, es una especie de planta perenne con flores.', 220, 120.00, 80.00),
    ('Planta ZZ', 3, '90x100x110', 9, 'Zamioculcas es un género de planta con flores en la familia Araceae, que contiene la única especie Zamioculcas zamiifolia.', 270, 130.00, 85.00),
    ('Rubber Plant', 1, '100x110x120', 10, 'Ficus elastica, el árbol del caucho, arbusto de caucho, planta de caucho o arbusto de caucho indio.', 130, 140.00, 90.00),
    ('Boston Fern', 5, '110x120x130', 11, 'Nephrolepis exaltata, conocido como el helecho de Boston, es una especie de helecho en la familia Lomariopsidaceae.', 10, 150.00, 95.00),
    ('Calathea', 3, '120x130x140', 12, 'Calathea es un género de plantas pertenecientes a la familia Marantaceae.', 160, 160.00, 100.00),
    ('Dracaena', 1, '130x140x150', 13, 'Dracaena es un género de aproximadamente 120 especies de árboles y arbustos suculentos.', 190, 170.00, 105.00),
    ('Bamboo Palm', 2, '140x150x160', 14, 'Chamaedorea seifrizii, la palma de bambú o palma de caña, es una especie de Chamaedorea.', 210, 180.00, 110.00),
('Ficus', 1, '10x20x30', 1, 'Ficus es un género de aproximadamente 850 especies de árboles, arbustos, vides, epífitas y hemiepífitas en la familia Moraceae.', 100, 50.00, 30.00),
    ('Monstera', 2, '20x30x40', 2, 'Monstera es un género de 45 especies de plantas con flores en la familia de las aráceas.', 200, 60.00, 40.00),
    ('Filodendro', 5, '30x40x50', 3, 'Philodendron es un gran género de plantas con flores en la familia Araceae.', 150, 70.00, 50.00),
    ('Sansevieria', 1, '40x50x60', 4, 'Sansevieria es un género de aproximadamente 70 especies de plantas con flores, nativas de África, Madagascar y el sur de Asia.', 120, 80.00, 55.00),
    ('Lirio de la Paz', 2, '50x60x70', 5, 'Spathiphyllum es un género de aproximadamente 40 especies de plantas con flores comúnmente llamadas "lirios de la paz".', 300, 90.00, 60.00),
    ('Aloe Vera', 3, '60x70x80', 6, 'Aloe vera es una especie de planta suculenta del género Aloe.', 250, 100.00, 70.00),
    ('Poto', 1, '70x80x90', 7, 'Epipremnum aureum, también conocido como potos dorado, es una especie de planta con flores en la familia de las aráceas.', 180, 110.00, 75.00),
    ('Planta Araña', 2, '80x90x100', 8, 'Chlorophytum comosum, a menudo llamada planta araña, es una especie de planta perenne con flores.', 220, 120.00, 80.00),
    ('Planta ZZ', 5, '90x100x110', 9, 'Zamioculcas es un género de planta con flores en la familia Araceae, que contiene la única especie Zamioculcas zamiifolia.', 270, 130.00, 85.00),
    ('Planta de Caucho', 1, '100x110x120', 10, 'Ficus elastica, el árbol del caucho, arbusto de caucho, planta de caucho o arbusto de caucho indio.', 130, 140.00, 90.00),
    ('Helecho de Boston', 2, '110x120x130', 11, 'Nephrolepis exaltata, conocido como el helecho de Boston, es una especie de helecho en la familia Lomariopsidaceae.', 110, 150.00, 95.00),
    ('Calatea', 3, '120x130x140', 12, 'Calathea es un género de plantas pertenecientes a la familia Marantaceae.', 160, 160.00, 100.00),
    ('Drácena', 1, '130x140x150', 13, 'Dracaena es un género de aproximadamente 120 especies de árboles y arbustos suculentos.', 190, 170.00, 105.00),
    ('Palma de Bambú', 2, '140x150x160', 14, 'Chamaedorea seifrizii, la palma de bambú o palma de caña, es una especie de Chamaedorea.', 210, 180.00, 110.00),
    ('Ave del Paraíso', 3, '150x160x170', 15, 'Strelitzia es un género de cinco especies de plantas perennes, nativas de Sudáfrica.', 140, 190.00, 115.00),
    ('Planta de Interior China', 1, '160x170x180', 16, 'Aglaonema es un género de plantas con flores en la familia de las aráceas.', 230, 200.00, 120.00),
    ('Orquídea', 2, '170x180x190', 17, 'Orchidaceae, comúnmente conocida como la familia de las orquídeas, es una familia diversa y extendida de plantas con flores.', 170, 210.00, 125.00),
    ('Anturio', 5, '180x190x200', 18, 'Anthurium es un género de aproximadamente 1,000 especies de plantas con flores, nativas de las Américas.', 240, 220.00, 130.00),
    ('Bambú de la Suerte', 1, '190x200x210', 19, 'Dracaena sanderiana, comúnmente conocida como bambú de la suerte, es una especie de planta con flores en la familia Asparagaceae.', 250, 230.00, 135.00),
    ('Árbol del Dinero', 2, '200x210x220', 20, 'Pachira aquatica es un árbol tropical de humedales nativo de Centro y Sudamérica.', 200, 240.00, 140.00);



   INSERT INTO detallePedido (fkIdPedido, fkIdProducto, cantidad, precioUnidad, numeroLinea)
VALUES
    (3, 5, 4, 18.75, 1),
    (3, 6, 2, 22.50, 2),
    (4, 7, 3, 30.00, 1),
    (4, 8, 1, 35.00, 2),
    (5, 9, 6, 40.00, 1),
    (5, 10, 2, 45.00, 2),
    (6, 11, 3, 50.00, 1),
    (6, 12, 1, 55.00, 2),
    (7, 13, 4, 60.00, 1),
    (7, 14, 2, 65.00, 2),
    (8, 15, 5, 70.00, 1),
    (8, 16, 3, 75.00, 2),
    (9, 17, 2, 80.00, 1),
    (9, 18, 1, 85.00, 2),
    (10, 19, 4, 90.00, 1),
    (10, 20, 2, 95.00, 2),
    (11, 1, 3, 100.00, 1),
    (11, 2, 1, 105.00, 2),
    (12, 3, 5, 110.00, 1),
    (12, 4, 3, 115.00, 2);
