<?php

include_once('conexao.php');

function buscapergunta($conexao){
    $arraybuscar = array();
    $result = mysqli_query($conexao, "Select Descricao from pergunta where Id_pergunta = '1'");
    $busca = mysqli_fetch_assoc($result);
    array_push($arraybuscar, $busca);
    return $arraybuscar;
 
 }


 function buscaopcao1($conexao){
     $arraypronto = array();
     $resultado = mysqli_query($conexao, "Select Descricao from opcao_para_marcar where Pergunta_Id_pergunta ='1' and Id_opcao ='1'");
     $buscando = mysqli_fetch_assoc($resultado);
     array_push($arraypronto,$buscando);
     return $arraypronto;
 }

 function buscaopcao2($conexao){
    $arraypronto = array();
    $resultado = mysqli_query($conexao, "Select Descricao from opcao_para_marcar where Pergunta_Id_pergunta ='1' and Id_opcao ='2'");
    $buscando = mysqli_fetch_assoc($resultado);
    array_push($arraypronto,$buscando);
    return $arraypronto;
}

function buscaopcao3($conexao){
    $arraypronto = array();
    $resultado = mysqli_query($conexao, "Select Descricao from opcao_para_marcar where Pergunta_Id_pergunta ='1' and Id_opcao ='3'");
    $buscando = mysqli_fetch_assoc($resultado);
    array_push($arraypronto,$buscando);
    return $arraypronto;
}

function buscaopcao4($conexao){
    $arraypronto = array();
    $resultado = mysqli_query($conexao, "Select Descricao from opcao_para_marcar where Pergunta_Id_pergunta ='1' and Id_opcao ='4'");
    $buscando = mysqli_fetch_assoc($resultado);
    array_push($arraypronto,$buscando);
    return $arraypronto;
}