<?php 
///ETML
///Author : Benfares Anass
///Date : 03.06.2016
///Summary : Create the navBar in one file and include in all page
/// of the web site.

//start session
session_start();


?>
<body>
    <div class="container">
        <!--Navbar Gender-->
            <nav class="firstNavBar" role="navigation">
                <!-- Link-->
                <div class="navBar"> 
                    <div class="navSquare"><a class="" href="index.php">Homme</a></div>
                    <div class="navSquare"><a class="" href="index.php">Femme</a></div>
                    <div class="navSquare"><a class="" href="index.php">Panier(0)</a></div>
                </div>
               
            </nav>    
        <!--Navbar Gender-->
        <!--Header-->
        <a href="index.php?p=index">
        <div class="header">
            <span class="textLogo"></span><br>
            <span class="textLogo2"></span>
        </div>    
        </a>
        <!--Navbar-->
        <nav class="navBar2" role="navigation">
            <!-- Link-->
            <div class="navSquare"><a class="" href="index.php?p=index">Le shop</a></div>
            <div class="navSquare"><a class="active\" href="index.php?p=index">Nouveauté</a></div>
            <div class="navSquare"><a href="index.php?p=Brands">Marque</a></div>
            <div class="navSquare"><a href="index.php?p=Products">T-Shirt</a></div>
            <div class="navSquare"><a href="index.php?p=Products">Pantalon</a></div>
            <div class="navSquare"><a href="index.php?p=Products">Sneakers</a></div>
            <div class="navSquare"><a href="index.php?p=Products">Autres</a></div>
            <div class="navSquare"><a href="index.php?p=Contact">Contact</a></div>
            <!-- /.Link -->

<?php 
            //Display the name if you're connected in space member
            if(empty($_SESSION['login']))
            {
            
            echo "
            <!-- Login menu-->
            <div class=\"navSquare\">    
                <a href=\"index.php?p=login\"><i>Se connecter</i></a> 
            </div>
            <!-- /.Login menu -->";
            }
            else
            {
            if($_SESSION['rank']=="1")
            {
            echo "
            <div class=\"navSquare\">   
                <a href=\"index.php\"><i>Suivi de commande</i></a> 
            </div>";
            }          
            echo"
            <div class=\"navSquare\">   
                <a href=\"index.php?p=login_D\"><i>Se déconnecter</i></a> 
            </div>";
            }
   

 ?>             
        </nav>  
        <!-- /.navbar -->
