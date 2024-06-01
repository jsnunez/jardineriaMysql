-- CREAR BASE DE DATOS

CREATE DATABASE jardineria2;

-- usar  base de datos jardineria


USE jardineria2;

CREATE TABLE pais (
	id INT AUTO_INCREMENT,
	nombre varchar(50),
	CONSTRAINT pkPaisId PRIMARY KEY (id)
	
);


CREATE TABLE region (
	id INT AUTO_INCREMENT,
	nombre varchar(50),
	fkidpais int(11),
	CONSTRAINT pkRegionId PRIMARY KEY (id),
	CONSTRAINT fKPaisRegionId FOREIGN KEY (fkidpais) REFERENCES pais(id)
	
);

CREATE TABLE ciudad (
	id INT AUTO_INCREMENT,
	nombre varchar(50),
	fkidregion int(11),
	codigo_postal varchar(20),
	CONSTRAINT pkCiudadId PRIMARY KEY (id),
	CONSTRAINT fKRegionCiudadId FOREIGN KEY (fkidregion) REFERENCES region(id)
	);

CREATE TABLE gamaProducto (
	id INT AUTO_INCREMENT,
	nombre varchar(50),
	descripcion_texto text,
	descripcion_html text,
	imagen varchar(250),
	CONSTRAINT pkGamaId PRIMARY KEY (id)
);



CREATE TABLE formaPago (
	id INT AUTO_INCREMENT,
	nombre varchar(50),
	CONSTRAINT pkFormaPagoId PRIMARY KEY (id)
);

CREATE TABLE estado (
	id INT AUTO_INCREMENT,
	nombre varchar(50),
	CONSTRAINT pkEstadoId PRIMARY KEY (id)
);


CREATE TABLE tipoTelefono (
	id INT AUTO_INCREMENT,
	nombre varchar(50),
	CONSTRAINT Pk_Tipo_Telefono_Id PRIMARY KEY (id)
);


CREATE TABLE proveedor (
	id INT AUTO_INCREMENT,
	nombre varchar(50),
	nit varchar(20),
	fkCiudad int(11),
	CONSTRAINT pkProveedorId PRIMARY KEY (id),
CONSTRAINT fKProveedorCiudadId FOREIGN KEY (fkCiudad) REFERENCES ciudad(id)
);


CREATE TABLE telefonoProveedor (
	id INT AUTO_INCREMENT,
	numero varchar(50),
	fkTipoTelefono int(11),
	fkIdProveedor int(11),
	CONSTRAINT pkTelefonoProveedor_Id PRIMARY KEY (id),
CONSTRAINT fKTelefonoTipoTelefonoId FOREIGN KEY (fkTipoTelefono) REFERENCES tipoTelefono(id),
CONSTRAINT fkTelefonoProveedorId FOREIGN KEY (fkIdProveedor) REFERENCES proveedor(id)
);





CREATE TABLE tipoDireccion (
	id INT AUTO_INCREMENT,
	nombre varchar(50),
	CONSTRAINT Pk_Tipo_Direccion_Id PRIMARY KEY (id)
);

CREATE TABLE direccionProveedor (
	id INT AUTO_INCREMENT,
	direccion varchar(50),
	fkTipoDireccion int(11),
	fkIdProveedor int(11),
	CONSTRAINT Pk_direccionProveedor_Id PRIMARY KEY (id),
CONSTRAINT FK_direccion_Tipo_Direccion_Id FOREIGN KEY (fkTipoDireccion) REFERENCES tipoDireccion(id),
CONSTRAINT FK_direccion_Proveedor_Id FOREIGN KEY (fkIdProveedor) REFERENCES proveedor(id)
);
 


CREATE TABLE producto(
	id INT AUTO_INCREMENT,
	nombre varchar(50),
	fkIdGama int(11),
	dimension varchar(25),
	fkIdProveedor int(11),
	descripcion TEXT,
	cantidadEnStock SMALLINT(6),
	precioVenta DEcimal(15,2),
	precioProveedor Decimal(15,2),
	CONSTRAINT Pk_Producto_Id PRIMARY KEY (id),
CONSTRAINT FK_producto_gama_Id FOREIGN KEY (fkIdGama) REFERENCES gamaProducto(id),
CONSTRAINT FK_producto_Proveedor_Id FOREIGN KEY (fkIdProveedor) REFERENCES proveedor(id)
);


CREATE TABLE oficina(
	id INT AUTO_INCREMENT,
	nombre varchar(50),
	fkIdCiudad int(11),
	CONSTRAINT pkOficinaId PRIMARY KEY (id),
CONSTRAINT fKOficinaCiudadId FOREIGN KEY (fkIdCiudad) REFERENCES ciudad(id)
);
-- oficina
CREATE TABLE telefonoOficina(
	id INT AUTO_INCREMENT,
	numero varchar(50),
	fkTipoTelefono int(11),
	fkIdOficina int(11),
	CONSTRAINT pktelefonoOficinaId PRIMARY KEY (id),
CONSTRAINT fKTelefonoOTipoTelefonoId FOREIGN KEY (fkTipoTelefono) REFERENCES tipoTelefono(id),
CONSTRAINT fkTelefonoOficinaID FOREIGN KEY (fkIdOficina) REFERENCES oficina(id)
);






CREATE TABLE direccionOficina (
	id INT AUTO_INCREMENT,
	direccion varchar(50),
	fkTipoDireccion int(11),
	fkIdOficina int(11),
	CONSTRAINT pkDireccionOficinaId PRIMARY KEY (id),
CONSTRAINT fKDireccionTipoDireccionId FOREIGN KEY (fkTipoDireccion) REFERENCES tipoDireccion(id),
CONSTRAINT fKDireccionProveedorId FOREIGN KEY (fkIdOficina) REFERENCES oficina(id)
);

CREATE TABLE puesto (
	id INT AUTO_INCREMENT,
	nombre varchar(50),
	CONSTRAINT pkPuestoId PRIMARY KEY (id)
);
 
CREATE TABLE empleado (
	id INT AUTO_INCREMENT,
	nombre varchar(50),
	apellido1 varchar(50),
	apellido2 varchar(50),
	extension varchar(10),
	email varchar(100),
	fkIdOficina int(11),
	fkIdJefe int(11),
	fkPuesto int(11),
	CONSTRAINT pkEmpleadoId PRIMARY KEY (id),
CONSTRAINT fKEmpleadoOficinaId FOREIGN KEY (fkIdOficina) REFERENCES oficina(id),
CONSTRAINT fKJefeId FOREIGN KEY (fkIdJefe) REFERENCES empleado(id),
CONSTRAINT fKPuestoId FOREIGN KEY (fkPuesto) REFERENCES puesto(id)
);
 

CREATE TABLE cliente (
	id INT AUTO_INCREMENT,
	nombre varchar(50),
	nombreContacto varchar(50),
	apellidoContacto varchar(50),
	fkIdCiudad int(11),
	fkCodigoEmpleadoRepVentas int(11),
limiteCredito Decimal(15,2),
	CONSTRAINT pkClienteId PRIMARY KEY (id),
CONSTRAINT fkCiudadId FOREIGN KEY (fkIdCiudad) REFERENCES ciudad(id),
CONSTRAINT fKRepresentanteI FOREIGN KEY (fkCodigoEmpleadoRepVentas) REFERENCES empleado(id)
);


CREATE TABLE pago (
	idTransaccion INT AUTO_INCREMENT,
	fkFormaPago int(11),
	fkIdCodigoCliente int(11),
	fechaPago Date,
	total DECIMAL(15,2),
	CONSTRAINT pkPagoId PRIMARY KEY (idTransaccion),
CONSTRAINT fkCodigoClienteid FOREIGN KEY (fkIdCodigoCliente) REFERENCES cliente(id),
CONSTRAINT fkPagoFormaid FOREIGN KEY (fkFormaPago) REFERENCES formaPago(id)
);


CREATE TABLE pedido (
	id INT AUTO_INCREMENT,
	fechaPedido DATE,
	fechaEsperada DATE,
	fechaEntrega DATE,
	fkIdEstado int(11),
	comentario text,
	fkIdCodigoCliente int(11),
	CONSTRAINT pkpedidoId PRIMARY KEY (id),
CONSTRAINT fkPedidoEstadoid FOREIGN KEY (fkIdEstado) REFERENCES estado(id),
CONSTRAINT fkPedidoClienteid FOREIGN KEY (fkIdCodigoCliente) REFERENCES cliente(id)
);


CREATE TABLE detallePedido (
	fkIdPedido int(11),
	fkIdProducto int(11),
	cantidad int(11),
	precioUnidad DECIMAL(15,2),
	numeroLinea SMALLINT(6),
	CONSTRAINT pkpedidoId PRIMARY KEY (fkIdPedido,fkIdProducto),
CONSTRAINT fkDetallePedidoId FOREIGN KEY (fkIdPedido) REFERENCES pedido(id),
CONSTRAINT fkDetalleProductoId FOREIGN KEY (fkIdProducto) REFERENCES producto(id)
);


CREATE TABLE telefonoCliente(
	id INT AUTO_INCREMENT,
	numero varchar(50),
	fkTipoTelefono int(11),
	fkIdCliente int(11),
	CONSTRAINT pktelefonoClienteId PRIMARY KEY (id),
CONSTRAINT fKTelefonoCTipoTelefonoId FOREIGN KEY (fkTipoTelefono) REFERENCES tipoTelefono(id),
CONSTRAINT fkTelefonoClienteID FOREIGN KEY (fkIdCliente) REFERENCES cliente(id)
);




CREATE TABLE direccionCliente (
	id INT AUTO_INCREMENT,
	direccion varchar(50),
	fkTipoDireccion int(11),
	fkIdCliente int(11),
	CONSTRAINT pkDireccionClienteId PRIMARY KEY (id),
CONSTRAINT fKDireccionCTipoDireccionId FOREIGN KEY (fkTipoDireccion) REFERENCES tipoDireccion(id),
CONSTRAINT fKDireccionClienteId FOREIGN KEY (fkIdCliente) REFERENCES cliente(id)
);

