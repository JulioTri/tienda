<h1>Registrarse</h1>
<?php if (isset($_SESSION['register'])&&$_SESSION['register']=='complete'):?>
    <strong class="alert_green">Registro completado correctamente</strong>
<?php elseif(isset($_SESSION['register'])&&$_SESSION['register']=='failed'):?>
    <strong class="alert_red">Registro fallido, introduce bien los datos</strong>
<?php endif;?>
<?php Utils::deleteSession('register');?>

<form action="<?=base_url?>usuario/save" method="POST">
    <label for="nombre">Nombre</label>
    <input type="text" name="nombre" required placeholder="Nombre">
    <label for="apellido">Apellidos</label>
    <input type="text" name="apellido" required placeholder="Apellidos">
    <label for="email">Correo</label>
    <input type="email" name="email" placeholder="Correo" required>
    <label for="password">Contraseña</label>
    <input type="password" name="password" required>
    <input type="submit" value="Registrarse">
</form>