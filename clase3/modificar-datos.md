# Modificación de datos dentro de una tabla 

> Para modificar datos dentro de una tabla 
> utilizamos el comando *** UPDATE *** 

> Sintáxis 

    UPDATE nombreTabla  
        SET 
            nombreCampo = valor  
      WHERE id = valorID;  

> Ejemplo: 

    UPDATE destinos  
      SET  
          destPrecio = 6250  
      WHERE idDestino = 2;

> Ejemplo práctico: 
> Modificar el idRegion de los destinos 5 y 6.
> A ambos le tenemos que configurar el idRegion 7.

    UPDATE destinos  
    SET  idRegion = 7  
    WHERE idDestino IN (5,6); 

> Mismo resultado: 

    UPDATE destinos
      SET  idRegion = 7
    WHERE idDestino = 5
       OR idDestino = 6;

> Aumentar el precio de todos los destinos 
> por un valor con un 5% de incremento incluído 

    UPDATE destinos  
      SET destPrecio = destPrecio * 1.05;  



