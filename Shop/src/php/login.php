<?php 
///Author : Benfares Anass
///Date : 06.06.2016
///Summary : Page use to login to member space


 ?>
<section class="homePageMessage">
	<h2> Page de connexion</h2>
	<div class="formLogin">
	<form methode="post" action="index.php?p=login_V" >

	<span>Identifant:</span><input class="inputText" type="text" name="login" placeholder="Identifiant"/><br>
    <span>Mot de passe: </span><input class="inputText" type="password"  name="password" placeholder="Mot de passe"/><br>

    <input class="formButton" type="submit"/><br>

	</form>
	</div>

	<div class="forminscription">
	<form methode="post" action="index.php?p=inscription_V" >

	<span>Nom:</span><input class="inputText" type="text" name="login" placeholder="Identifiant"/><br>
	<span>Prénom:</span><input class="inputText" type="text" name="login" placeholder="Identifiant"/><br>

    <input class="formButton" type="submit"/><br>

	</form>
	</div>
</section>