# Creación de tabla destinos
CREATE TABLE destinos
(
    idDestino tinyint unsigned not null primary key auto_increment,
    destNombre varchar(40) not null,
    idRegion tinyint unsigned not null,
        FOREIGN KEY ( idRegion )
            REFERENCES regiones ( idRegion ),
    destPrecio int unsigned not null,
    destAsientos tinyint unsigned not null,
    destDisponibles tinyint unsigned not null,
    destActivo boolean not null
);