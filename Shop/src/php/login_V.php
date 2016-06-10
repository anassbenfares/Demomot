<?php 
///Author : Benfares Anass
///Date : 06.06.2016
///Summary : Page use to verif the form to member space

//start session for var session
session_start();

//include all classes when it's call
spl_autoload_register(function($class)
{
        include './src/php/inc/classes/'.$class.'.inc.php';
});

//Create object for use function
$connexion = new DbConnect();

//recover informations for login
$aboutLogin = $connexion->getLoginUser();

//encapsulasion of var post in local variables
$password = ($_POST['password']);
$email = ($_POST['email']);
 ?>
<section class="homePageMessage">
<?php  
    //if the db isn't empty
    if(count($aboutLogin)!=0) {
        //go in the table
        foreach ($aboutLogin as $login) {
            //check the id and the password
            if(($email == $login['useEmail']) and (password_verify($password, $login['usePassword'])))
            {
                    $_SESSION['name'] = $login['useEmail'];
                    $_SESSION['login'] = 1;
                    $_SESSION['rank'] = $login['useRank'];
                    header('location: index.php?p=index');
            }//end if login    
            else 
            {
                    echo' 
                        <span>Identifiant ou mot de passe incorrect !</span> <br><br>
                        <div class="formLogin">
                            <h2> Connexion</h2>
                            <form method="post" action="index.php?p=login_V" >

                            <div><span>Adresse Email</span></div><input class="inputText" type="text" name="email" placeholder="Adresse Email"/><br>
                            <div><span>Mot de passe </span></div><input class="inputText" type="password"  name="password" placeholder="Mot de passe"/><br>

                            <button class="formButton" type="submit"/>Connecter </button><br>

                            </form>
                        </div>';
            } //end if password with else
        }//end foreach 
    }//end if db empty
    else
    {
        die ("Erreur dans la base de données");
    }
?>
</section>