<?php  
   define('HOST', 'localhost');
   define('USUARIO', 'root');
   define('PASSWORD', '');
   define('DB', 'iquest');
   
   $conexao = mysqli_connect(HOST, USUARIO, PASSWORD, DB) or die('Não foi possível criar conexão com o banco');
?>