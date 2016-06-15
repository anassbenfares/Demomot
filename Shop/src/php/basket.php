<?php 
///Author : Benfares Anass
///Date : 15.06.2016
///Summary : Page use to display the basket to the user and to order

//start session for var session
session_start();

//include all classes when it's call
spl_autoload_register(function($class)
{
        include './src/php/inc/classes/'.$class.'.inc.php';
});

$page="basket";

if(empty($_SESSION['login']))
{
    header('location: index.php?p=login');
}

else
{
//recover the id of the user to use in class
$idUsers=$_SESSION['idUsers'];

//Create object for use function
$connexion = new DbConnect();

//recover informations for login
$allProducts = $connexion->showBasket($idUsers);
$totalPrice = $connexion->basketTotalPrice($idUsers);

}

?>

<section class="homePageMessage">
	<div>
		<table style="width:100%">
  			<tr><th>Quantités</th><th>Articles</th><th>Prix Unité</th><th>Prix</th><th>Taille</th></tr>
				<?php  
				foreach ($allProducts as $basketProduct) 
				{	
					$total+=($basketProduct['number']*$basketProduct['priValue']);
					echo "<tr>";
					echo "<td>".$basketProduct['number']."</td>";
					echo "<td>".$basketProduct['fkBrands']." - ".$basketProduct['proName']."</td>";
					echo "<td>".$basketProduct['priValue'].",00 ".$basketProduct['idCurrency']."</td>";
					echo "<td>".$basketProduct['Prix'].",00 ".$basketProduct['idCurrency']."</td>";
					echo "<td>".$basketProduct['fkSizes']."</td>";
					echo "</tr>";
					
				}
					echo "<tr><td></td><td></td><td>Total: </td><td>".$total.",00 CHF<td></tr>";
				?>
			<tr>	
		</table>
	</div>
</section>