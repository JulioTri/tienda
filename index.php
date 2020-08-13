<?php
session_start();
require_once 'autoload.php';
require_once 'config/db.php';
require_once 'config/parameters.php';
require_once 'helpers/utils.php';
require_once 'views/layout/header.php';
require_once 'views/layout/sidebar.php';
function showerror(){
    $error=new errorController();
    $error->index();
}
if (isset($_GET['controller'])) {
    $nombre_controlador=$_GET['controller'].'Controller';
}elseif(!isset($_GET['controller'])&&!isset($_GET['action'])){
    $nombre_controlador=controller_default;
}else{
    showerror();
    exit();
}

if (class_exists($nombre_controlador)) {
    $controlador=new $nombre_controlador();
    if (isset($_GET['action'])&& method_exists($controlador,$_GET['action'])) {
        $action=$_GET['action'];
        $controlador->$action();
    }elseif(!isset($_GET['controller'])&&!isset($_GET['action'])){
        //en caso de no tener ni controlador ni accion se ejecuta el controlador por defecto y accion por defecto
        //definidas en parameters.php
        $action_default=action_default;
        $controlador->$action_default();
    }else {
        showerror();
    }
}
else {
    showerror();
}
require_once 'views/layout/footer.php';