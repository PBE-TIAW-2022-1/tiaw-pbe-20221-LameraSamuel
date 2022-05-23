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
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/home.css">
    <link rel="stylesheet" href="css/login.css">

</head>

<?php
if( !$_SESSION ){
    header('location: login.php');
    exit();
}
?>

<body>

    <div class="header">
    <div class="header-right">
        <a class="active" href="home.php">Home</a>
        <a href="Quiz/index.php">Quiz</a>
        <a href="amostra_sobre.html">Sobre</a>
    </div>  
    </div>

    
    <header>
        <navid="nav-container">
            <div id="navbar-links">
                <div class="controle">
                    <a id="Nome" href="#"><?=$nome?></a><br/>
                    <a id="sair" href="Gerenciado.php" class="botao-up">Editar perfil</a>
                    <a id="sair" href="login.php" class="botao-down">Sair</a>
                </div>
            </div>
        </nav>
    </header>


    <div class="tela-login container">
        <ul class="nav nav-tabs" id="aba-cursos">
            <a onclick="abre_modal('front.html')" id="botao_front" class="botao-esquerda" onmouseover="mudar_background('#1E90FF')" onmouseout="mudar_background('#272727')">Front-End</a>
            <a onclick="abre_modal('BackEnd.html')" id="botao_back" class="botao-direita" onmouseover="mudar_background('#1E90FF')" onmouseout="mudar_background('#272727')">Back-End</a>
            <a onclick="abre_modal('stack.html')" id="botao_full" class="botao-esquerda" onmouseover="mudar_background('#1E90FF')" onmouseout="mudar_background('#272727')">Full-Stack</a>
            <a onclick="abre_modal('DevOps.html')" id="botao_devops" class="botao-direita" onmouseover="mudar_background('#1E90FF')" onmouseout="mudar_background('#272727')">DevOps</a>
            <a onclick="abre_modal('seguranca.html')" id="botao_seg"class="botao-esquerda" onmouseover="mudar_background('#1E90FF')" onmouseout="mudar_background('#272727')">Segurança</a>
            <a onclick="abre_modal('Redes.html')" id="botao_redes" class="botao-direita" onmouseover="mudar_background('#1E90FF')" onmouseout="mudar_background('#272727')">Redes</a>
            <a onclick="abre_modal('Quiz/index.php')" id="botao_quiz" class="botao-final" onmouseover="mudar_background('#1E90FF')" onmouseout="mudar_background('#272727')">Faça o Teste de Aptidão</a>
        </ul>
    </div>


    <!-- O Modal -->
    
    <div id="myModal" class="modal">

    <!-- Conteúdo do Modal -->

        <div class="modal-content">
        <span class="close">&times;</span>
        <h1 id="titulo_modal"> Você deseja ser redirecionado para página com informações sobre a área escolhida?</h1>

        <a id="botao_sim" class="botao-esquerda-modal">Sim</a>
        
        <a id="botao_nao" class="botao-direita-modal">Não</a>
        </div>
    
        

    </div>


    <script src="bootstrap/js/bootstrap.min.js"></script>
</body>

<script>
        // Função para alterar a cor do background da aba de cursos
        function mudar_background(bg) {

        var aba_cursos = document.getElementById('aba-cursos')
        aba_cursos.style.background = bg      

        }

        // Pega o elemento do modal
        var modal = document.getElementById("myModal");

        // Pega o <span> que fecha o modal
        var span = document.getElementsByClassName("close")[0];

        // Pega os botões.
        var botao_sim = document.getElementById('botao_sim');
        var botao_nao = document.getElementById('botao_nao');

        function abre_modal(nome_pagina) {
            modal.style.display = "block";

            botao_sim.onclick = function() {
                window.location.href=nome_pagina;
            }

            botao_nao.onclick = function() {
              modal.style.display = "none";
            }
        }

        span.onclick = function() {
        modal.style.display = "none";
        }

        botao_nao.onclick = function() {
              modal.style.display = "none";
        }

        // Fecha o modal se clicar em qualquer lugar fora dele
        window.onclick = function(event) {
        if (event.target == modal) {
            modal.style.display = "none";
        }
        }

    </script>

</html>