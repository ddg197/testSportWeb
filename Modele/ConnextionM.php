<?php
include('/../Modele/connectToDb.php');
//function qui verif que le login et le mom de passe sont les bon.
function verif_ident($login,$mp,&$profil)
{
    $link=connectToDb();
    
    $sql="SELECT login,MotDePasse,Nom,Prénom FROM login WHERE login=:log and MotDePasse=:mp";
    $req=$link->prepare($sql);
    $req->execute(array(
        ':log'=>$login,
        ':mp'=>$mp
    ));
    //$_POST['']
    if($req->rowCount()==0)
    {
        return false;
    }
    else
    {
        $profil=$req->fetch();
        return true;
    }
    $req->closeCursor();
}
//fonction pour l'inscrition
function inscrition($prenom,$nom,$login,$mp,$date,$sexe)
{
    $link=connectToDb();
    $sql='INSERT INTO login (Prénom,Nom,login,MotDePasse,DateNée,Sexe) VALUES(:pre,:nom,:log,:mp,:d,:s)';
    $req=$link->prepare($sql);
    $req->execute(array(
        'pre'=>$prenom,
        'nom'=>$nom,
        'log'=>$login,
        'mp'=>$mp,
        'd'=>$date,
        's'=>$sexe
    ));
     $req->closeCursor();
}
//function qui verifie que le login n'est pas deja utiliser(numero de mobil et email)
function deja($login){
     $link=connectToDb();
    $sql="select login from login where login=:login";
    $req = $link->prepare($sql);
    $req->execute(array(
        'login' => $login));
  
    if($req->rowCount()==0){
        return true;
    }
    else{
        return false;
    }
    $req->closeCursor();
}
?>