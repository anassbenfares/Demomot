<?php 
///Author : Benfares Anass
///Date : 06.06.2016
///Summary : Page use to login to member space


 ?>
<section class="loginMarginTop">
	<div class="formLogin">
		<h2> Connexion</h2>
		<form method="post" action="index.php?p=login_V" >

		<div><span>Adresse Email</span></div><input class="inputText" type="text" name="email" placeholder="Adresse Email"/><br>
	    <div><span>Mot de passe </span></div><input class="inputText" type="password"  name="password" placeholder="Mot de passe"/><br>

	    <button class="formButton" type="submit"/>Connecter </button><br>

		</form>
	</div>

	<div class="forminscription">
		<h2> Inscription</h2>
		<form method="post" action="index.php?p=inscription_V" >
			<div>
			<span>Civilité:</span>
			<INPUT type= "radio" name="gender" value="madame"> Madame
			<INPUT type= "radio" name="gender" value="monsieur"> Monsieur
			</div>
			<div id="forminscriptionLastName"><span>Nom</span></div><input class="inputText"  type="text" name="lastName" placeholder="Nom"/>
			<div id="forminscriptionFirstName" ><span>Prénom</span></div><input class="inputText" type="text" name="firstName" placeholder="Prénom"/>
			<div id="forminscriptionMail"><span>Adresse Mail</span></div><input class="inputText"  type="text" name="mail" placeholder="Adresse Mail"/>
			<div id="forminscriptionLogin"> <span>Téléphone</span></div><input class="inputText" type="text" name="login" placeholder="Téléphone"/>
			<div id="forminscriptionPassword"><span>Choissisez un mot de passe</span></div><input class="inputText"  type="password" name="login" placeholder="Mot de passe"/>
			<div id="forminscriptionPasswordRepeat"><span>Confirmer le mot de passe</span></div><input class="inputText"  type="passwordRepeat" name="login" placeholder="Répéter le mot de passe"/>
		    <div id=""><button class="formButton" type="submit"/> s'inscrire</button></div>

		</form>
	</div>
</section>