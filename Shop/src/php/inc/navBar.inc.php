<?php 
///ETML
///Author : Benfares Anass
///Date : 03.06.2016
///Summary : Create the navBar in one file and include in all page
/// of the web site.


//Determine what is the page to add the class "active"
?>
<body>
    <div class="container">
        <!--Header-->
        <div class="header">
            <span class="textLogo">K.A.R.M.A.H</span><br>
            <span class="textLogo2">Shop</span>
        </div>    
        <!--Navbar-->
        <nav class="navBar" role="navigation">
            <div class="navHome">
                <a class="" href="index.php?p=index">Accueil</a>
            </div>
            <!-- Link-->
    	 	<div class="navPage">
                <a href="index.php?p=index">Articles</a>
                <a href="index.php?p=about">About</a>
                <a href="index.php?p=contact">Contact</a>   
            </div>
            <!-- /.Link -->

            <!-- Login menu-->
            <div class="navSign">    
                <a href="index.php?p=login"><i class="">Se connecter</i></a> 
            </div>
            <!-- /.Login menu -->
            
        </nav>  
        <!-- /.navbar -->
