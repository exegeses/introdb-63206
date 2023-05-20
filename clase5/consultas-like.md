# Consultas de coincidencias (que contenga) 

> traer nombre, precio y descripcion
> de tabla productos
> que contenga la palabra Altavoz 
 
    SELECT prdNombre, prdPrecio, prdDescripcion
    FROM productos
    WHERE prdDescripcion LIKE '%Altavoz%';

> traer nombre de producto 
> precio de producto
> marca (nombre de la marca)
> que contenga bluetooth (en el campo descripcion)

    SELECT prdNombre, prdPrecio, mkNombre  
    FROM productos  
    JOIN marcas  
    ON productos.idMarca = marcas.idMarca  
    WHERE prdDescripcion LIKE "%bluetooth%"; 

> traer nombre, precio y categoria
> de tabla productos
> que contenga la palabra bluetooth en descripcion

    SELECT prdNombre, prdPrecio, catNombre  
    FROM productos  
    JOIN categorias  
    ON productos.idCategoria = categorias.idCategoria  
    WHERE prdDescripcion LIKE '%bluetooth%';


    SELECT prdNombre, prdPrecio, mkNombre, catNombre
    FROM productos
    JOIN marcas
    ON productos.idMarca = marcas.idMarca
    JOIN categorias
    ON productos.idCategoria = categorias.idCategoria
    WHERE prdDescripcion LIKE '%bluetooth%';