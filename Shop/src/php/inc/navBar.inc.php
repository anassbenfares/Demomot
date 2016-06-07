<?php 
///ETML
///Author : Benfares Anass
///Date : 03.06.2016
///Summary : Create the navBar in one file and include in all page
/// of the web site.


?>
<body>
    <div class="container">
        <!--Header-->
        <div class="header">
            <span class="textLogo">Le Shop</span><br>
            <span class="textLogo2">by Anass</span>
        </div>    
        <!--Navbar-->
        <nav class="navBar" role="navigation">
            <div class="navHome">
                <a class="" href="index.php?p=index">Accueil</a>
            </div>
            <!-- Link-->
            <div class="navPage">
            <?php 
            //Determine what is the page to add the class "active"
            switch ($page) 
            {
            case "index":
                echo "
                <a class=\"active\" href=\"index.php?p=index\">Articles</a>
                <a href=\"index.php?p=contact\">Contact</a>";
                break;

            case "contact":
                echo "
                <a href=\"index.php?p=index\">Articles</a>
                <a class=\"active\" href=\"index.php?p=contact\">Contact</a>";
                break;

            default:
               echo "
               <a href=\"index.php?p=index\">Articles</a>
                <a href=\"index.php?p=contact\">Contact</a> ";
            }  
             ?>
                  
            </div>
            <!-- /.Link -->

            <!-- Login menu-->
            <div class="navSign">    
                <a href="index.php?p=login"><i class="">Se connecter</i></a> 
            </div>
            <!-- /.Login menu -->
            
        </nav>  
        <!-- /.navbar -->
