<?php 
///Author : Benfares Anass
///Date : 13.06.2016
///Summary : Page use to display the or all products

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


//recover informations for login
$allProducts = $connexion->getProductWithId($id);


 ?>
<section class="homePageMessage">
	<div>
	<?php  
		echo "<a href=\"index.php?p=basket&idProduct=$id\">Ajouter au Panier</a><br>";
		foreach ($allProducts as $value) 
		{
			echo 
			$value['fkBrands']."<br>".
			$value['proName']."<br>".
			$value['proDescription']."<br>".
			$value['proPrice'];
		}
	?>
	</div>
</section>