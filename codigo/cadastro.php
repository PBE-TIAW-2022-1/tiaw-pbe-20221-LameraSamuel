<?php  
//6session_start();
include('conexao.php');
include('funcoes.php');

// verifica se os campos não estão vazios
if (!empty($_POST['Nome']) && !empty($_POST['Email']) && !empty($_POST['Senha']) ){

      $nome = $_POST['Nome'];
      $email = $_POST['Email'];
      $senha = $_POST['Senha'];
      

      // verifcar email repetido e barrar
     // $queryemail = "select Email from login where Email = '{$email}'";
      //$resultado = mysqli_query($conexao, $queryemail);

         //if(mysqli_num_rows($resultado) >= 1){
               
            //exit();
        // }
      
         cadastrarUsuario($conexao, $nome, $email, $senha);
         header('location: PrimeiroAcesso.php?email=2');
   }
  


else{
   header( "location: PrimeiroAcesso.php?campos=1");
 
   exit();
}

echo "<br><a href='PrimeiroAcesso.php' style='padding: 1px; background-color: #efefef; border:#efefef 1px solid; text-decoration: none; color: #000;'>Voltar</a>";