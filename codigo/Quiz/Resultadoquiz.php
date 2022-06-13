<?php
session_start();
include("conexao.php");
include("Funcoes.php");
$nome = $_SESSION["Nome"];
?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
	<meta charset="utf-8">
	<title>Quiz</title>
	<link rel="stylesheet" href="reset.css">
	<link rel="stylesheet" href="style.css">
	<link rel="stylesheet" href="home.css">
	
</head>

<?php
if( !$_SESSION ){
    header('location: ../login.php');
    exit();
}
?>

<body>


	<header>
		<h1 class="titulo-aba-cursos">Teste De Aptidão</h1>
		<script src="bootstrap/js/bootstrap.min.js"></script>
	</header>

	<div class="tela-login">
		<form>
        <h1 class="titulo-aba-cursos">Resultado do seu teste</h1>
		<?php


$qtd = maior($conexao, $nome);
foreach ($qtd as $quantidade){



echo "<div class=\"titulo-aba-cursos\">De acordo com suas respostas indicamos que voce procure saber mais sobre a area de $quantidade[Area]</div>";
$salvar = $quantidade["Area"];

?>

<?php } ?>

<a href="../<?=$salvar?>.html"><input type="button" value="Saber mais sobre a area" class="enviar"></input></a>

</body>
</html>