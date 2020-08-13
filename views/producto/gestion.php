<h1>Gestion de Productos</h1>
<a href="<?= base_url ?>producto/crear" class="button button-small">Crear producto</a>

<?php //Verifica la sesion creada en el controlador para manejar aviso de creacion de producto?>
<?php if (isset($_SESSION['producto']) && $_SESSION['producto'] == 'complete') : ?>
    <strong class="alert_green">El producto se ha creado corectamente</strong>
<?php elseif (isset($_SESSION['producto']) && $_SESSION['producto'] == 'failed') : ?>
    <strong class="alert_red">Error al crear el producto</strong>
<?php endif; ?>
<?php Utils::deleteSession('producto'); ?>

<?php //Verifica la sesion creada en el controlador para manejar aviso de eliminacion de producto?>
<?php if (isset($_SESSION['delete']) && $_SESSION['delete'] == 'complete') : ?>
    <strong class="alert_green">El producto se ha eliminado corectamente</strong>
<?php elseif (isset($_SESSION['delete']) && $_SESSION['delete'] == 'failed') : ?>
    <strong class="alert_red">Error al eliminar el producto</strong>
<?php endif; ?>
<?php Utils::deleteSession('delete'); ?>
<table>
    <tr>
        <th>ID</th>
        <th>NOMBRE</th>
        <th>PRECIO</th>
        <th>STOCK</th>
        <th>ACCIONES</th>
    </tr>
    <?php while ($pro = $productos->fetch_object()) : ?>
        <tr>
            <td><?= $pro->id ?></td>
            <td><?= $pro->nombre ?></td>
            <td><?= $pro->precio ?></td>
            <td><?= $pro->stock ?></td>
            <td>
                <a href="<?=base_url?>producto/editar&id=<?=$pro->id?>" class="button button-gestion">Editar</a>
                <a href="<?=base_url?>producto/eliminar&id=<?=$pro->id?>" class="button button-gestion button-red">Eliminar</a>
            </td>
        </tr>
    <?php endwhile; ?>
</table>