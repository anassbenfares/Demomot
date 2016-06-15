<?php
///Author : Benfares Anass
///Date : 14.06.2016
///Summary : Page use to add product on basket

//start session for var session
session_start();

//include all classes when it's call
spl_autoload_register(function($class)
{
        include './src/php/inc/classes/'.$class.'.inc.php';
});

$page="product";
//check if you re have the permission to go to this web page
if(empty($_SESSION['login']))
{
    header('location: index.php?p=login');
}

else
{
$idUsers=$_SESSION['idUsers'];
$idProducts=$_POST['idProduct'];
$idSize=$_POST['size'];

//Create object for use function
$connexion = new DbConnect();

//recover informations for login
$allProducts = $connexion->addProductOnBasket($idProducts,$idUsers,$idSize);

//redirect to pre page
header('location: index.php?p=products&idProduct='.$idProducts.'');
}


?>