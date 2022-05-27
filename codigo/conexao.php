<?php  
   define('HOST', 'localhost');
   define('USUARIO', 'iquest');
   define('PASSWORD', '83565266');
   define('DB', 'iquest');
   
   $conexao = mysqli_connect(HOST, USUARIO, PASSWORD, DB) or die('Não foi possível criar conexão com o banco');
?>