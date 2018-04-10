$(document).ready(function(){
    
   var emailRegex=/^[a-zA-Z0-9._-]+@[a-z0-9._-]{1,}\.[a-z]{1,}$/,
    tip=$(".manque");
    var bien=0;
    //fonction lorsque on click sur inscription
    $('#inscription').click(function(){
       var prenom=document.getElementById('prenom').value;
        var nom=document.getElementById('nom').value;
        var login=document.getElementById('loginI').value;
        var loginC=document.getElementById('loginC').value;
        var mp=document.getElementById('password').value;
    var aniv=document.getElementById('aniv').value;
    var H=document.getElementById('sexeH').checked;
    var F=document.getElementById('sexeF').checked;
        var sexe="";
        if(H==true){
            sexe="M";
        }
        else if(F==true){
            sexe="F";
        }
   inscrition(prenom,nom,login,loginC,mp,aniv,sexe);
    });
    //verif tout les variable pour pouvoir faire inscrition
    function inscrition(prenom,nom,login,loginC,mp,aniv,sexe){ 
         var valid=true;
        valid=valid &&checkLength(mp,"mot de passe ",5,100);
        
        valid=valid && checkRegexp(prenom,/^[a-zA-Z_-]+$/,"un prenom est composer que de lettre ");
        valid=valid && checkRegexp(nom,/^[a-zA-Z_-]+$/,"un nom est composer que de lettre ");
                
            
         
        valid=valid && veriflogin(login);
        valid=valid && verifmeme(login,loginC);
        valid=valid && nonnull(sexe,"sexe");
        valid=valid && nonnull(aniv,"date de naissance");
        if(valid){
               $.ajax({
            type:"POST",
            url:"Modele/add.php",
            dataType:"json",
            cache:false,
            data:{functionname:'veri',login:login},
            success:function(obj,texte){
                pos(obj,prenom,nom,login,loginC,mp,aniv,sexe);
        }   
        });
        }
        return valid;
        
    }
    //verifie que le numero de telephone ou email est le même dans "Numero de mobil ou email" et confirmer
    function verifmeme(login,loginC){
        if(login==loginC){
            return true;
        }
        else{
            updateTips("vous avez pas mis la même login dans login et login confimation");
            return false;
        }
    }
    //verifie que le login est bien un numero de telephone ou un email 
    function veriflogin(login){
        var num=/^[0-9_+]+$/;
        var bol=true;
        //verifie que c'est vide
        if(login==""){ 
            updateTips("vous avez rien mis dans numero de mobil ou email");
            return false;
        }
        //verifie que il y a que de chiffre (numero de telephone)
        else if(num.test(login)){
            bol=bol && checkLength(login,"numero de telephone ",10,12);
            return bol;
        }
        //verifie que email est bien dur la forme a@a.com
        else {
     bol=bol&&checkRegexp(login,emailRegex,"vous avez pas mis un email. ex:a@a.com");
                 return bol;
        }
    }
 

    
    //fonction qui inscrit le nouvelle utilisareur si l'email ou le numero de mobile n'est pas encore utiliser
    function pos(mas,prenom,nom,login,loginC,mp,aniv,sexe){ 
        if(mas==1){
        $.ajax({
            type:"POST",
            url:"Modele/add.php",
            dataType:'text',
            cache:false,
            data:{functionname:'ins',
                 login:login,mp:mp,prenom:prenom
                 ,nom:nom,aniv:aniv,sexe:sexe},
        });
            updateTips("vous être enregistrer");
            mas==0;
        }
        else{
            updateTips("email ou numero de telephone déjà utiliser");
        }
    }
    //verfie que la veriable n'est pas null ou vide
    function nonnull(o,n){
        if(o=="" || o==null){
          updateTips("vous n'avez pas renseigner votre "+n+".");  
            return false;
        }
        else{
        return true;
        }
    }
    //verifie que la longeur de la variable est valide
    function checkLength(o,n,min,max){
        if(o.length>max||o.length<min){
            if(max==min){
                updateTips("La longeur de "+n+"   doit être de "+max+".");
            }
            else{
            updateTips("Longeur du "+n+ "doit être entre "+min+" et "+max+".");
            }
            return false;
        }else{
            return true;
        }
    }
    //affiche un message
    function updateTips(t){
        tip
            .text(t)
        .addClass("masque");
        setTimeout(function() {
        tip.removeClass( "masque", 1500 );
      }, 500 );
    }
    //verifie que la variable resperte les contreinte 
    function checkRegexp(o,regexp,n){
        if(!(regexp.test(o))){
            updateTips(n);
            return false;
        }
        else{
            return true;
        }
    }
});