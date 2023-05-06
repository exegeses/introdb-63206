# Consultas en SQL

## Ordenar los resultados

> Para ordenar los resultados de una consulta 
> utilizamos *** ORDER BY ***

> Sintáxis
 
    SELECT nCampo, nCampo  
      FROM nTabla   
      ORDER BY nCampo; 

> Ejemplo práctico 

    SELECT destNombre, destPrecio  
      FROM  destinos  
      ORDER BY destPrecio;  

## Filtrado de registros

> Filtrar registros significa traer sólamente los registros que cumplan con alguna condición dada.   
> Para especificar la condición utilizamos la palabra reservada *** WHERE *** 

> Ejemplo práctico:  
> Traer todos los registros con un precio que no supere los 8600

    SELECT destNombre, destPrecio
      FROM destinos
      WHERE destPrecio <= 8600;

> Traer todos los registros con un precio entre 6600 y 8600

    SELECT destNombre, destPrecio  
    FROM destinos  
    WHERE destPrecio >= 6600  
    AND destPrecio <= 8600;  

> Ahora la misma práctica utilizando
> la palabra ***BETWEEN*** 

    SELECT destNombre, destPrecio  
      FROM destinos  
      WHERE destPrecio  
        BETWEEN 6600 AND 8600;  

> Traer nombre y precio los destinos de la región 5

    SELECT destNombre, destPrecio  
    FROM destinos  
    WHERE idRegion = 5;  

> Traer nombre y precio los destinos de la región 5 y de la región 8 

    SELECT destNombre, destPrecio  
    FROM destinos  
    WHERE idRegion = 5  
    OR idRegion = 8;  

> Misma práctica utilizando WHERE ... IN () 

    SELECT destNombre, destPrecio  
    FROM destinos  
    WHERE idRegion IN (5,8);

