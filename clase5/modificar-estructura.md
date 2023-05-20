# Modificar estructura de una tabla

## Cambiar nombre de una columna

> Sintáxis: 

    ALTER TABLE nombreTabla   
    CHANGE nombreOriginal nombreNuevo tipoDato;  

> Ejemplo práctico: 

    ALTER TABLE destinos  
    CHANGE destAsientos  
           destTotales tinyint unsigned not null;

    ALTER TABLE billeteras  
    CHANGE stock  
           cantidad tinyint unsigned not null;  

## Cambiar el tipo de datos de una columna 

> Sintáxis:  

    ALTER TABLE nombreTable  
    MODIFY nombreCampo tipo modificador;  

> Ejemplo práctico: 

    ALTER TABLE destinos  
    MODIFY destNombre varchar(60) not null;  

## Agregar una columna a una tabla

> Sintáxis: 

    ALTER TABLE nombreTable  
    ADD nombreCampo tipo modificador; 

> Ejemplo práctico:  
 
    ALTER TABLE billeteras  
    ADD descripcion varchar(200) not null; 

## Agregar una columna después de una columne existente (no al final)

> Sintáxis:  

    ALTER TABLE nombreTable  
    ADD nombreCampoNuevo tipo modificador    
    AFTER nombreCampoExistente;  

> Ejemplo práctico: 

    ALTER TABLE billeteras  
    ADD descripcion varchar(200) not null  
    AFTER precio;  

## Eliminar una columna de una tabla 

> Sintáxis 

    ALTER TABLE nombreTable  
    DROP nombreCampo;  

> Ejemplo práctico:  

    ALTER TABLE billeteras  
    DROP descripcion;  
