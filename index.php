<?php
    session_start();

    if(isset($_GET['Controle']) & isset ($_GET['Action']))
    {
        $controle=$_GET['Controle'];
        $action=$_GET['Action'];
    }
    else
    {
        $controle="Connextion";
        $action="connextion";
    }
    require('Controle/'.$controle.'.php');
    $action();
?>