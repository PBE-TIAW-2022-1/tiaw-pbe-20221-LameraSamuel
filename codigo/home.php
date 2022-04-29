<?php
session_start();
include("conexao.php");
include("funcoes.php");
$nome = $_SESSION["Nome"];

?>

<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="uft-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/login.css">
    <link rel="stylesheet" href="css/home.css">
    <title>Formulário Cadastro</title>

</head>



<?php

if( !$_SESSION ){
    header('location: login.php');
    exit();
}
?>

<body>
    <h1 class="titulo-aba-cursos">Áreas de TI</h1>

    <header>
        <navid="nav-container">
            <div id="navbar-links">
                <div class="controle">
                    <a id="Nome" href="#"><?=$nome?></a><br/>
                    <a id="sair" href="login.php" class="botao-direita">SAIR</a>
                </div>
            </div>
        </nav>
    </header>

    <div class="tela-login container">
        <ul class="nav nav-tabs" id=aba-cursos>
            <a href="#" class="botao-esquerda">Front-End</a>
            <a href="#" class="botao-direita">Back-End</a>
            <a href="#" class="botao-esquerda">Full-Stack</a>
            <a href="#" class="botao-direita">DevOps</a>
            <a href="#" class="botao-esquerda">Segurança</a>
            <a href="#" class="botao-direita">Redes</a>
            <a href="#" class="botao-final">Faça o Teste de Aptidão</a>
        </ul>
    </div>
    <script src="bootstrap/js/bootstrap.min.js"></script>
</body>
</html>