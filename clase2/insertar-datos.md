# Insertar datos en una tabla

> Para insertar datos en una tabla itilizamos el comando ***INSERT***   
> ***Nota:*** Vamos a ver dos variantes de este comando.


## Variante de sint´´axis completa (se mencionan los campos) 

> Sintáxis:   

    INSERT INTO nombreTabla 
        ( nCampo3, nCampo4, nCampo6 )  
    VALUES  
        ( valor3, valor4, valor6 );  

> Ejemplo práctico: 

    INSERT INTO billeteras  
        ( nombre, precio, stock )  
    VALUES  
        ( 'Ledger Nano S', 16000, 30 );

## Variante de sintáxis simplificada (***NO*** se mencionan los campos) 

> Sintáxis:

    INSERT INTO nombreTabla
    VALUES  
        ( valor1, valor2, valor3 );  

> Ejemplo práctico  

    INSERT INTO billeteras  
    VALUES  
        ( DEFAULT, 'Trezor One', 19500, 30 ); 

## Se pueden dar de alta varios registros en un sólo comando  

    INSERT INTO billeteras  
        ( nombre, precio, stock )  
    VALUES  
        ( 'Trezor T', 78000, 20 ),
        ( 'Ledger Nano X', 78000, 20 );



    INSERT INTO billeteras
    VALUES  
        ( DEFAULT, 'Trezor T', 78000, 20 ),
        ( DEFAULT, 'Ledger Nano X', 78000, 20 );

