<html>
    <head>
    <title>Connextion/Inscrition</title>
         <script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>

        <script src="http://cdn.leafletjs.com/leaflet-0.7.1/leaflet.js"></script>
              <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css">
<link rel="stylesheet" href="http://cdn.leafletjs.com/leaflet-0.7.1/leaflet.css" />
        <script type="text/javascript" src="Vue/Js/Connextion.js"></script>
        <link rel="stylesheet" href="Vue/Css/Connextion.css">
    </head>
    <body>
    <div id="connextionF">
        <form method="POST"  action="">
            <div id="email">
        <label class="white">Adresse email ou mobile</label>    
        <input type="text" name="login" id="login" placeholder="votre login" required>
            </div>
            <div id="mp">
            <label class="white">mot de passe</label>
                <input type="password"  name="motdepasse" id="motdepasse" placeholder="Votre mot de passe" required></div>
        <button type="submit" class="connextion" id="connextion">Connexion</button><br>
        </form>
    </div>
    <div id="inscriptionF">
        <form method="POST"  action="">
              <tes> </tes>
            <p class="manque" id="manque"></p>
        Inscription<br>
        C'est Gratuit(et ça le restera toujours)<br>
        <input type="text"  name="prenom" id="prenom" placeholder="Prénom">
        <input type="text"  name="nom" id="nom" placeholder="Nom de famille" ><br>
        <input type="text" name="loginI" id="loginI" placeholder="Numéro de mobile ou email"><br>
        <input type="text" name="loginC" id="loginC" placeholder="Confirmer numéro de mobile ou email"><br>
        <input type="password"  name="password" id="password" placeholder="Nouveau mot de passe"><br>
        Date de naissance<br>
        <input type="date" name="aniv" id="aniv"><br>
        <input type="radio" name="sexe" id="sexeH">Homme
        <input type="radio"  name="sexe" id="sexeF">Femme<br>
            <p>En cliquant sur inscription...</p>
    <button type="button" class="inscription" id="inscription">inscription</button>
            </form>
        </div>
    </body>

</html>