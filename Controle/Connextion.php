<?php
include('/../Modele/ConnextionM.php');
function connextion(){
    
    $login=(isset($_POST['login'])?($_POST['login']):'');
    $mp=(isset($_POST['motdepasse'])?($_POST['motdepasse']):'');
    $profil=array();
    
    if(($login=='' && $mp=='') OR !verif_ident($login,$mp,$profil))
    {
        require("/../Vue/ConnextionV.tpl");
    }
    else{
        $_SESSION['profil']=$profil;
        header('Location:index.php?Controle=page&Action=page');
    }
}
?>