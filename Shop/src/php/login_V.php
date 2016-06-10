<?php 
///Author : Benfares Anass
///Date : 06.06.2016
///Summary : Page use to verif the form to member space

//start session
session_start();


//include all classes when it's call
/*spl_autoload_register(function($class)
{
        include './src/php/inc/classes/'.$class.'.php';
});*/
include 'src/php/inc/classes/DbConnect.php';


//recover information for login
$connexion = new DbConnect();

$ExecuteRequestLogin = $connexion->getLogin();
/*
//password and id
$password = ($_POST['password']);
$email = ($_POST['email']);

echo $ExecuteRequestLogin;
/*
//if the db isn't empty
if(count($ExecuteRequestLogin)!=0) {
    //go in the table
    foreach ($ExecuteRequestLogin as $login) {
        //check the id
        if ($email == $login['useEmail']) {
            //check the password
            if (password_verify($password, $login['usePassword'])) {
                $_SESSION['name'] = $login['useEmail'];
                $_SESSION['login'] = 1;
                header('location: index.php?p=index');
            } //end if password
        }//end if login
        else {
            echo '
            <body>
            <!-- Container -->
                <div id="wrapper">';
            include_once('inc/navbar.inc.php');
            echo'
                    <div id="page-wrapper">
                        <div class="container-fluid">
                        <!-- Text zone -->
                            <div class="row">
                                <div class="col-lg-12">
                                    <h1 class="page-header">
                                        Erreur<small></small>
                                    </h1>
                                </div>
                            </div>
                            <span>Identifiant ou mot de passe incorrect !</span> <br><br>
                            <a href="index.php?p=login"> Retour</a>
                        </div>
                    </div>
                </div>
            </body>';
        }

    }
}//end if db empty
else
{
    die ("Erreur dans la base de données");
}*/
 ?>