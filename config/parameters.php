<?php
    /*Constante para acortar la url, por otro lado cuando se configura apache en .htaccess los estilos y demas 
    no se aplicaran devido a que no los tomara por tanto es necesario agregar la variable siguiente
    antes cargar una url o un fichero*/
    define('base_url',"http://localhost/ProyectoPHP/proyecto-php-poo/tienda/");
    /*Controlador por defecto */
    define('controller_default',"productoController");
    /*Metodo por defecto */
    define('action_default',"index");

    /*Para reescribir las urls es necesario tener activa la opcion rewrite_module, luego se debe 
    crear un archivo .htaccess que es un archivo de apache y en el crear condiciones*/
?>