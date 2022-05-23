<?php
session_start();
include("../conexao.php");
include("../funcoes.php");
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
	<div class="header">
		<div class="header-right">
			<a class="active" href="../home.php">Home</a>
			<a href="index.php">Quiz</a>
			<a href="amostra_sobre.html">Sobre</a>
   		</div>  
	</div>
	
	<div class="tela-login">
		<form>
			<h1>Pergunta 4</h1>
			<a href="Pergunta5.php"><input type="button" value="Teste" class="enviar"></input></a>
			<a href="Pergunta5.php"><input type="button" value="Teste" class="enviar"></input></a>
			<a href="Pergunta5.php"><input type="button" value="Teste" class="enviar"></input></a>
			<a href="Pergunta5.php"><input type="button" value="Teste" class="enviar"></input></a>

            <p class="alert-success"><a href="Pergunta3.php"><input type="button" value="Pergunta Anterior" class="enviar"></input></a>

</body>
</html>