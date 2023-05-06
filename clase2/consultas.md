# Consultas en SQL

## Consultas a server

> Para hacer consultas al server utilizamos
> la palabra reservada ***SELECT***

    SELECT CURDATE();  

## Consultas para traer datos en una tabla

> Para hacer consultas a tablas utilizamos
> la palabra reservada ***SELECT***
> pero además debemos especificar la(s) tablas desde dónde queremos traer información  

> Sintáxis: 

    SELECT campo2, campo4 FROM nombreTabla  

> Ejemplo práctico:  traer nombre de region de la tabla regiones  

    SELECT regNombre FROM regiones;  

> Traer nombre y el precio de la tabla destinos

    SELECT destNombre, destPrecio  
        FROM destinos;  
