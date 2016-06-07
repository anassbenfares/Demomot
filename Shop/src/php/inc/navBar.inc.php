<?php 
///ETML
///Author : Benfares Anass
///Date : 03.06.2016
///Summary : Create the navBar in one file and include in all page
/// of the web site.


?>
<body>
    <div class="container">
        <!--Navbar Gender-->
            <nav class="firstNavBar" role="navigation">
                <!-- Link-->
                <div class="navSquare"><a class="" href="index.php">Homme</a></div>
                <div class="navSquare"><a class="" href="index.php">Femme</a></div>
                <div class="navSquare"><a class="" href="index.php"> </a></div>
            </nav>    
        <!--Navbar Gender-->
        <!--Header-->
        <div class="header">
            <span class="textLogo">Le Shop</span><br>
            <span class="textLogo2">by Anass</span>
        </div>    
        <!--Navbar-->
        <nav class="navBar" role="navigation">
            <!-- Link-->
            <div class="navSquare"><a class="" href="index.php?p=index">Le shop</a></div>
            <div class="navSquare"><a class="active\" href="index.php?p=index">Nouveauté</a></div>
            <div class="navSquare"><a href="index.php?p=contact">Marque</a></div>
            <div class="navSquare"><a href="index.php?p=contact">T-Shirt</a></div>
            <div class="navSquare"><a href="index.php?p=contact">Pantalon</a></div>
            <div class="navSquare"><a href="index.php?p=contact">Sneakers</a></div>
            <div class="navSquare"><a href="index.php?p=contact">Autres</a></div>
            <!-- /.Link -->

            <!-- Login menu-->
            <div class="navSquare">    
                <a href="index.php?p=login"><i class="">Se connecter</i></a> 
            </div>
            <!-- /.Login menu -->
            
        </nav>  
        <!-- /.navbar -->
