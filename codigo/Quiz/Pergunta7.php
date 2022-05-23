<?php
session_start();
include("conexao.php");
include("Funcoes.php");
include("Funcoes7.php");
?>


<!DOCTYPE html>
<html lang="pt-br">



<head>
	<meta charset="utf-8">
	<title>Quiz</title>
	<link rel="stylesheet" href="reset.css">
	<link rel="stylesheet" href="style.css">
	<link rel="stylesheet" href="../css/home.css">

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
					<?php
						$arraybuscar = buscapergunta($conexao);
						foreach ($arraybuscar as $busca){
					?>
					<h1><?=$busca["Descricao"]?></h1>
				</form>
				<?php } ?>



				<form>
					<?php
						$arraypronto = buscaopcao1($conexao);
						foreach ($arraypronto as $buscando){
					?>
					<a href="Pergunta8.php"><input type="button" value=<?=$buscando["Descricao"]?> class="enviar"></input></a>
				</form>
				<?php } ?>

				<form>
					<?php
						$arraypronto = buscaopcao2($conexao);
						foreach ($arraypronto as $buscando){
					?>
				<a href="Pergunta8.php"><input type="button" value=<?=$buscando["Descricao"]?> class="enviar"></input></a>
				</form>
				<?php } ?>

				<form>
					<?php
						$arraypronto = buscaopcao3($conexao);
						foreach ($arraypronto as $buscando){
					?>
				<a href="Pergunta8.php"><input type="button" value=<?=$buscando["Descricao"]?> class="enviar"></input></a>
				</form>
				<?php } ?>

				<form>
					<?php
						$arraypronto = buscaopcao4($conexao);
						foreach ($arraypronto as $buscando){
					?>
				<a href="Pergunta8.php"><input type="button" value=<?=$buscando["Descricao"]?> class="enviar"></input></a>
				</form>
				<?php } ?>

				<p class="alert-success"><a href="Pergunta6.php"><input type="button" value="Pergunta Anterior" class="enviar"></input></a>
		
	</body>
</html>