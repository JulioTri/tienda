<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="assets/css/styles.css">
    <title>Tienda de Camisetas</title>
</head>

<body>
    <div id="container">
        <!--Cabecera-->
        <header id="header">
            <div id="logo">
                <img src="assets/img/camiseta.png" alt="Camiseta Logo" title="Tienda inicio">
                <a href="index.php">
                    Tienda de camisetas
                </a>
            </div>
        </header>
        <!--Menu-->
        <nav id="menu">
            <ul>
                <li>
                    <a href="">Inicio</a>
                </li>
                <li>
                    <a href="">Categoria 1</a>
                </li>
                <li>
                    <a href="">Categoria 2</a>
                </li>
                <li>
                    <a href="">Categoria 3</a>
                </li>
                <li>
                    <a href="">Categoria 4</a>
                </li>
                <li>
                    <a href="">Categoria 5</a>
                </li>
            </ul>
        </nav>
        <div id="content">
            <!--BarraLateral-->
            <aside id="lateral">
                <div id="login" class="block_aside">
                    <h3>Entrar a la Web</h3>
                    <form action="" method="POST">
                        <label for="email">Email</label>
                        <input type="email" name="email" />
                        <label for="password">Contraseña</label>
                        <input type="password" name="password" />
                        <input type="submit" value="Eviar" />
                    </form>
                    <ul>
                        <li><a href="">Mis pedidos</a></li>
                        <li><a href="">Gestionar pedidos</a></li>
                        <li><a href="">Gestionar categorias</a></li>
                    </ul>
                </div>
            </aside>
            <!--ContenidoCentral-->
            <div id="central">
                <h1>Productos destacados</h1>
                <div class="product">
                    <img src="assets/img/camiseta.png" alt="Producto">
                    <h2>Camiseta azul ancha</h2>
                    <p>30$</p>
                    <a href="" class="button">Comprar</a>
                </div>
                <div class="product">
                    <img src="assets/img/camiseta.png" alt="Producto">
                    <h2>Camiseta azul ancha</h2>
                    <p>30$</p>
                    <a href="" class="button">Comprar</a>
                </div>
                <div class="product">
                    <img src="assets/img/camiseta.png" alt="Producto">
                    <h2>Camiseta azul ancha</h2>
                    <p>30$</p>
                    <a href="" class="button">Comprar</a>
                </div>
                <div class="product">
                    <img src="assets/img/camiseta.png" alt="Producto">
                    <h2>Camiseta azul ancha</h2>
                    <p>30$</p>
                    <a href="" class="button">Comprar</a>
                </div>
            </div>
        </div>
        <!--PieDePagina-->
        <footer id="footer">
            <p>Desarrolado por Julio Diaz T. &copy; <?= date('Y'); ?></p>
        </footer>
    </div>
</body>

</html>