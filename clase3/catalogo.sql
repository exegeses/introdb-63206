# Creación de tablas para proyecto catálogo

-- creación de la tabla marcas
CREATE TABLE marcas
(
    idMarca tinyint auto_increment primary key not null,
    mkNombre varchar(45) not null
);

-- creación de la tabla categorias
CREATE TABLE categorias
(
    idCategoria tinyint auto_increment primary key not null,
    catNombre varchar(45) not null
);

-- creación de la tabla productos
CREATE TABLE productos
(
    idProducto mediumint primary key auto_increment not null,
    prdNombre varchar(45) not null,
    prdPrecio float(8,2) not null,
    idMarca tinyint not null,
        foreign key (idMarca)
            references marcas (idMarca),
    idCategoria tinyint not null,
        foreign key (idCategoria)
            references categorias (idCategoria),
    prdDescripcion varchar(1000) not null,
    prdImagen varchar(45) not null,
    prdActivo boolean not null
);