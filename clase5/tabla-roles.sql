# Creación de tabla roles

CREATE TABLE roles
(
    idRol tinyint unsigned primary key auto_increment not null,
    rol varchar(30) unique not null
);

-- ---------------------------------
-- inserción de datos en tabla roles

INSERT INTO roles
    (idRol,rol)
  VALUES
    (DEFAULT, 'Administrador'),
    (DEFAULT, 'Supervisor'),
    (DEFAULT, 'Usuario'),
    (DEFAULT, 'Invitado');
