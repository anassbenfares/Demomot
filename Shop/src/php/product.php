<?php 
///Author : Benfares Anass
///Date : 15.06.2016
///Summary : Page use to display by category articles

//start session for var session
session_start();

//include all classes when it's call
spl_autoload_register(function($class)
{
        include './src/php/inc/classes/'.$class.'.inc.php';
});

$page="category";

?>