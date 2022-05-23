<!DOCTYPE html>
<html lang="pt-br">
<head>
	<meta charset="utf-8">
	<title>Quiz</title>
	<link rel="stylesheet" href="reset.css">
	<link rel="stylesheet" href="style.css">
	<link rel="stylesheet" href="../css/home.css">
	
</head>

<body>


	<header>
		<h1 class="titulo-aba-cursos">Teste De Aptidão</h1>
		<script src="bootstrap/js/bootstrap.min.js"></script>
	</header>
	<div class="tela-login">
		<form>
        <h1 class="titulo-aba-cursos">Resultado do seu teste</h1>
		<?php
$frase[0] = 'Front-End';
$frase[1] = 'Back-End';
$frase[2] = 'Full-Stack';
$frase[3] = 'Segurança';
$frase[4] = 'Dev Ops';
$frase[5] = 'Redes';

$numero = rand(0,5);

echo "<div class=\"titulo-aba-cursos\">De acordo com suas respostas indicamos que voce procure saber mais sobre a area de $frase[$numero]</div>";



?>            <a href="Area.php"><input type="button" value="Saber mais sobre a area" class="enviar"></input></a>
</body>
</html>