<?php
///Author : Benfares Anass
///Date : 14.06.2016
///Summary : Page use to add product on basket

//start session for var session
session_start();


$page="product";

$id=$_GET['idProduct'];

//include all classes when it's call
spl_autoload_register(function($class)
{
        include './src/php/inc/classes/'.$class.'.inc.php';
});

//Create object for use function
$connexion = new DbConnect();


$idUsers=$_SESSION['idUsers'];

//recover informations for login
$allProducts = $connexion->addProductOnBasket($id,$idUsers);

header('location: index.php?p=products&idProduct='.$id.'')


?>