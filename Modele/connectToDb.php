<?php
function connectToDb(){
    try
    { 
        return $bdd=new PDO('mysql:host=localhost; dbname=sportweb; charset=utf8', 'root', 'root', array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION));
    }
    catch (Exeption $e)
    {
        //En cas d'erreur PDO renvoie une exception
        die('Erreur :' . $e->getMessage());
    }
}
?>