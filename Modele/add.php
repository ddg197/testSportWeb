<?php
 header('Content-Type: application/json');
session_start();
include_once("./ConnextionM.php");
$aResult=array();

 if( !isset($_POST['functionname']) ) 
 {
     $aResult['error'] = 'No function name!'; 
 }
if( !isset($aResult['error']) ) 
{
    switch($_POST['functionname'])
    {       //le cas quand on s'inscription
            case 'ins': 
            $login=$_POST['login'];
            $mp=$_POST['mp'];
            $prenom=$_POST['prenom'];
            $nom=$_POST['nom'];
            $aniv=$_POST['aniv'];
            $sexe=$_POST['sexe'];
            inscrition($prenom,$nom,$login,$mp,$aniv,$sexe);
            break;
            //le cas pour verifier que login n'est pas deja utiliser($valeur=1:true $valeur=2:false)
            case 'veri':
            $login=$_POST['login'];
            $val=deja($login);
            if($val==1){
                $valeur=1;
            }
            else{
                $valeur=2;
            }
            break;
            
            default:
                 $aResult['error'] = 'Not found function '.$_POST['functionname'].'!';
             break;

    }
    echo $valeur;
}
?>