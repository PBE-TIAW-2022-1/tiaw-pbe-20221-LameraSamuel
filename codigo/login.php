<?php  
session_start();
session_destroy();
?>
<!DOCTYPE html>
<html lang="pt-br">

</html>

<html>

<head>
    <meta charset="uft-8">
    <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/login.css">
    <title>Login</title>

</head>



<body>
    <h1 class="titulo-sistema-login">IQUEST</h1>
            <div class="tela-login container">
                <ul class="nav nav-tabs" id=login-container>
                    <li role="presentation" class="active"><a href="login.php">Login</a>
                        <div>
                            <?php if( isset($_GET['success']) == 1 ){ echo "<p style='color: #008000;'>Cadastro realizado com sucesso!</p>"; } ?>
                            <?php if( isset($_GET['alter']) == 2 ){ echo "<p style='color: #008000;'>Usuario alterado com sucesso!</p>"; } ?>
                            <form class="form-horizontal"  action="ValidacaoLogin.php" method="POST">
                                <div class="form-group">
                                  <label for="inputEmail3" class="col-sm-2 control-label">Email</label>
                                    <div class="col-sm-10">
                                        <input type="email" name="email"class="form-control" id="inputEmail3"
                                            placeholder="Escreva seu email">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="inputPassword3" class="col-sm-2 control-label">Senha</label>
                                    <div class="col-sm-10">
                                        <input type="password" name="senha" class="form-control" id="inputPassword3"
                                            placeholder="Insira sua senha">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-offset-2 col-sm-10">
                                        <div class="checkbox">
                                            <label>
                                                <input type="checkbox">Lembrar-me
                                            </label>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-offset-2 col-sm-10">
                                        <button type="submit" class="btn btn-default">Entrar</button>
                                    </div>
                                    <?php if( isset($_GET['falta'])== 1 ){ echo "<p style='color: #f00;'>Os campos precisam estar preenchidos</p>"; }?>
                                    <?php if( isset($_GET['falha'])== 1 ){ echo "<p style='color: #f00;'>Ocorreu uma falha no Login, tente novamente</p>"; }?>
                                </div>
                            </form>
                        </div>
                    </li>
            <li role="presentation"><a style="color:#FFFFFF" href="./PrimeiroAcesso.php">Primeiro Acesso </a></li>
        </ul>

    </div>
    <script src="bootstrap/js/bootstrap.min.js"></script>
</body>

</html>