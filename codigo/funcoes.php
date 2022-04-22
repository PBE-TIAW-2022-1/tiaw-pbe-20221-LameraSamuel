<?php
include_once('conexao.php');

function cadastrarUsuario($conexao,$nome, $email, $senha){
   $query = "insert into login (Email, Senha, Nome) values ('{$email}', SHA1('{$senha}'),'{$nome}')";
   $result = mysqli_query($conexao, $query);
   if($result){
      header('location: login.php?success=1');
      exit();
   } else {
      header('location: PrimeiroAcesso.php?error=1');
      exit();
   }
}

function alterausuario($conexao, $nome, $cpf, $email, $perfil, $senha, $cpfAntigo){
   $query = "update usuarios set Nome = '{$nome}', CPF = {$cpf}, Email = '{$email}', Perfil = {$perfil}, Senha = SHA1('{$senha}') where CPF = {$cpfAntigo}";
   $result =  mysqli_query($conexao, $query);

   if($result){
      header('location: ../login.php?alter=2');
      exit();
   }
   else{
      header('location: ../PaginaGerenciador.php?altererror=1');
      exit();
   }
}

function cadastroCurso($conexao, $curso){
   $query = "insert into curso (Nome_curso) values ('{$curso}')";
   $result = mysqli_query($conexao, $query);
   if($result){
      header('location: index.php?a=1');
      exit();
   } else {
      die("Não foi possível cadastrar o nome do curso");
   }
}


function listausuario($conexao){
   $usuarios = array();
   $resultado = mysqli_query($conexao,"select Nome, Email, Situacao, CPF from usuarios");
   while($usuario = mysqli_fetch_assoc($resultado)){       
      array_push($usuarios, $usuario);
  }
   return $usuarios;
}


function buscausuario($conexao,$cpf){
   $arraybuscar = array();
   $result = mysqli_query( $conexao, "Select * from usuarios where CPF = {$cpf}" );
   $busca = mysqli_fetch_assoc($result);
   array_push($arraybuscar, $busca);
   return $arraybuscar;
}

