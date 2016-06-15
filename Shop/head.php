<!DOCTYPE html>
<html>
<head>

	<meta charset="utf-8">
    <meta name="description" content="Welcome to the web site of Klothing">
    <meta name="author" content="Benfare Anass">

	<title>Le - Shop</title>

	<!-- Link CSS-->
    <link href="ressources/styles/structures-css.css" rel="stylesheet">

    <script src="src/js/script.js"></script>


</head>
<?php 
///Author : Benfares Anass
///Date : 03.06.2016
///Summary : Containe the header (all meta, link and informatio about all page)  

//Include the nav
Include_once './src/php/inc/navBar.inc.php';

//Display the content of  the page
echo $content;

//Include the footer
Include_once './src/php/inc/footer.inc.php';


 ?>