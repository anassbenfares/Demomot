<?php 
///Author : Benfares Anass
///Date : 03.06.2016
///Summary : Home page of the web site
/// with all article  

//start session for var session
session_start();

$page="index";

//include all classes when it's call
spl_autoload_register(function($class)
{
        include './src/php/inc/classes/'.$class.'.inc.php';
});

//Create object for use function
$connexion = new DbConnect();
//recover informations for login
$allProducts = $connexion->getAllProductsByGender();
 ?>
<section class="homePageMessage">
	<img src="./ressources/images/header/bann.png" alt="Smiley face" />
		
			<?php 
			foreach ($allProducts as $product => $value) 
			{	
				echo 
				"
				<a href=\"index.php?p=products&idProduct=".$value['idProducts']."\">
					<div class=\"products\">
						<div class= \"productsImg\" style=\"background:url('./ressources/images/data/products/".$value['idProducts']."/".$value['proNamePicture']."')\">
							<div class=\"clearProducts\"></div>
							<div class=\"productsDescription\">
								".$value['fkBrands']." 
								".$value['proName']." <br>
								".$value['priValue'].",00 ".$value['idCurrency']."
							</div>			
						</div>
					</div>
				</a>
				";
			}

			 ?>
		
</section>

