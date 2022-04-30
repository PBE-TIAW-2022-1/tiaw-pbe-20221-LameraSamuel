<?php  
   define('HOST', '132.148.101.182');
   define('USUARIO', 'iquest_user');
   define('PASSWORD', 'N#=2h&5$rj');
   define('DB', 'bd_iquest');
   
   $conexao = mysqli_connect(HOST, USUARIO, PASSWORD, DB) or die('Não foi possível criar conexão com o banco');
?>