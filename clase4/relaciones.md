# Consultas a dos o más tablas.

> Cuando queremos traer datos de dos o más tablas tenemos dos t´´ecnicas.

## Table relation

> La técnica ***table relation*** se implementa mencionando las tablas luego del FROM; pero además debemos igualar la columna en común (a ambas tablas)

> Sintáxis: 

    SELECT colTabla1, colTabla1, colTabla2    
        FROM tabla1, tabla2   
     WHERE tabla1.idfk = tabla2.idpk;   

> Ejemplo práctico:  

    SELECT destNombre, destPrecio, regNombre  
        FROM destinos, regiones  
       WHERE destinos.idRegion = regiones.idRegion;  


    SELECT prdNombre, prdPrecio, mkNombre, catNombre  
        FROM productos, marcas, categorias  
      WHERE productos.idMarca = marcas.idMarca  
       AND productos.idCategoria = categorias.idCategoria;  

## Técnica JOIN 

> Con la tácnica JOIN también podemos traer datos de dos o más tablas.

> Sintáxis:  

    SELECT colTabla1, colTabla1, colTabla2    
      FROM tabla1
        JOIN tabla2   
        ON tabla1.idfk = tabla2.idpk;   

> Ejemplo práctico  

    SELECT destNombre, destPrecio, regNombre  
      FROM destinos  
       JOIN regiones  
         ON destinos.idRegion = regiones.idRegion;  

    SELECT prdNombre, prdPrecio, mkNombre, catNombre  
      FROM productos  
       JOIN marcas  
         ON productos.idMarca = marcas.idMarca  
       JOIN categorias  
         ON productos.idCategoria = categorias.idCategoria;  
