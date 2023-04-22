# Crear tablas en una base de datos 
> Para crear tablas enn  una base de datos utilizamos el comando ***CREATE***  

>  Sintáxis:

    CREATE TABLE nombre  
    (  
        col1 tipo características,  
        col2 tipo características,  
        col3 tipo características,  
        col4 tipo características
    )

> Ejemplo páctico: 

    CREATE TABLE billeteras  
    (
        id tinyint unsigned auto_increment primary key not null,    
        nombre varchar(35) not null,   
        precio float(8,2) unsigned  not null,    
        stock tinyint  not null   
    );  