<?php 
///Author : Benfares Anass
///Date : 13.06.2016
///Summary : Page use to display all brands

//start session for var session
session_start();

$page="brands";


//include all classes when it's call
spl_autoload_register(function($class)
{
        include './src/php/inc/classes/'.$class.'.inc.php';
});

//Create object for use function
$connexion = new DbConnect();

//recover informations for login
$allBrands = $connexion->getAllBrands($id);

print_r($allBrands);

 ?>


