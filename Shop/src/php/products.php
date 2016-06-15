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
	

//recover informations for product
$allProducts = $connexion->getProductWithId($id);

//recover informations for size
$allSizes = $connexion->getProductSizes($id);


 ?>
<section class="homePageMessage">
	<div>
	<?php  
		
		foreach ($allProducts as $value) 
		{
			echo 
			$value['fkBrands']."<br>".
			$value['proName']."<br>".
			$value['proDescription']."<br>".
			$value['priValue'].
			",00".$value['idCurrency'];
		}
	?>
	<form action="index.php?p=addbasket" method="post">
		<?php echo "<input type=\"hidden\" name=\"idProduct\" value=".$id.">"; ?>
		<br><span>Taille:</span>
		<select name="size">
			<?php 
			foreach ($allSizes as $sizes) 
			{
				echo "<option value=".$sizes['idfkSize'].">".$sizes['idfkSize']."</option>";
			}
		 	?>
		</select><br>
		<button class="formButton" type="submit"/> Ajouter au panier</button>
	</form>		 
	</div>
</section>














