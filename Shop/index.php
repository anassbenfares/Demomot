<?php 
///Author : Benfares Anass
///Date : 03.06.2016
///Summary : Redirect the user to the page index in the folder ./php/index.php and include the header  

//check the get variable to define $p
if(!isset($_GET['p'])){
	$p="index";
}
else{
	$p = $_GET['p'];	
}

//Check if page exist and if not call page 404
if(!file_exists("src/php/".$p.".php"))
{
		$p = 'inc/404';
}

//add the header in each page
ob_start();

//include the page call in this page
include "./src/php/".$p.".php";
$content = ob_get_contents();
ob_end_clean();


//Include the header of file
include "head.php";
 ?>