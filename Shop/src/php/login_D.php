<?php 
///Author : Benfares Anass
///Date : 06.06.2016
///Summary : Page use to disconnect to member space


//start session
session_start();

//check if you re have the permission to go to this web page
if(empty($_SESSION['login']))
{
    header('location: index.php?p=404');
}

//Delete all sessions
session_destroy();

//redirection to index
header('location: index.php');

 ?>