<?php
session_start();
include("conexao.php");
include("Funcoes4.php");
$nome = $_SESSION["Nome"];
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
				<a href="../paginaconstrução.html">Sobre</a>
			</div>  
		</div>

		
		<div class="tela-login">

		<div id="login">
                <form method="post" action="">
					
						<?php
							$arraybuscar = buscapergunta($conexao);
							foreach ($arraybuscar as $busca){
						?>
					<h1><?=$busca["Descricao"]?></h1>
					
				<?php } ?>

                    

				
					<p>
						<?php
							$arraypronto = buscaopcao1($conexao);
							foreach ($arraypronto as $buscando){
						?>
                        <input id="nome_login" name="A" value=<?=$buscando["Descricao"]?> type="submit" />
                    </p><?php } ?>

					

				

					<p>
						<?php
							$arraypronto = buscaopcao2($conexao);
							foreach ($arraypronto as $buscando){
						?>
                        <input id="nome_login" name="B" value=<?=$buscando["Descricao"]?> type="submit" />
                    </p><?php } ?>

					<p>
						<?php
							$arraypronto = buscaopcao4($conexao);
							foreach ($arraypronto as $buscando){
						?>
                        <input id="nome_login" name="D" value=<?=$buscando["Descricao"]?> type="submit" />
                    </p><?php } ?>


					<p>
						<?php
							$arraypronto = buscaopcao3($conexao);
							foreach ($arraypronto as $buscando){
						?>
                        <input id="nome_login" name="C" value=<?=$buscando["Descricao"]?> type="submit" />
                    </p><?php } ?>

					
					<p>
						<?php
							$arraypronto = buscaopcao5($conexao);
							foreach ($arraypronto as $buscando){
						?>
                        <input id="nome_login" name="E" value=<?=$buscando["Descricao"]?> type="submit" />
                    </p><?php } ?>

					
					<p>
						<?php
							$arraypronto = buscaopcao6($conexao);
							foreach ($arraypronto as $buscando){
						?>
                        <input id="nome_login" name="F" value=<?=$buscando["Descricao"]?> type="submit" />
                    </p><?php } ?>
				

		                    
                </form>
            </div>

			<?php
    	
		if (isset($_POST['A'])) {
			$valor1 = 1;
			Resposta($conexao,$nome,'Front');
			header( "location: Pergunta5.php");
		}
		if (isset($_POST['B'])){
			$valor1 = 2;
			Resposta($conexao,$nome,'Back');
			header( "location: Pergunta5.php");
		}
		if (isset($_POST['C'])){
			$valor1 = 3;
			Resposta($conexao,$nome,'Full');
			header( "location: Pergunta5.php");
		}
		if (isset($_POST['D'])){
			$valor1 = 4;
			Resposta($conexao,$nome,'DevOps');
			header( "location: Pergunta5.php");
		}
		if (isset($_POST['E'])){
			$valor1 = 5;
			Resposta($conexao,$nome,'Seguranca');
			header( "location: Pergunta5.php");
		}
		if (isset($_POST['F'])){
			$valor1 = 6;
			Resposta($conexao,$nome,'Redes');
			header( "location: Pergunta5.php");
		}


    ?>

			
		
	</body>
</html>