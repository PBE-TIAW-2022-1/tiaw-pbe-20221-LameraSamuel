<?php
session_start(); 
include("conexao.php");
include("funcoes.php");

// valida se os campos estão preenchidos
if(!empty($_POST['email']) && !empty($_POST['senha'])){
   
    // escape_string para evitar sql injection
    $email = mysqli_real_escape_string($conexao, $_POST['email']);
    // $senha = sha1($_POST['senha']);
    $senha = SHA1($_POST['senha']);

    $query = "select Email, Senha from login where Email = '{$email}' AND Senha = '{$senha}'";
    $login = mysqli_query($conexao, $query);
    
    // valida se tem usuario com os dados informados
    if($login && mysqli_num_rows($login) == 1 )
    {
            $query = "select Email from login where Email = '{$email}'";
            $resultado = mysqli_query($conexao, $query);
            header("Location: home.php");


      
    }else{
        header( "location: login.php?falha=1");
         exit();
    }
}

  
    else{
         header( "location: login.php?falta=1");
         exit();
    }   
