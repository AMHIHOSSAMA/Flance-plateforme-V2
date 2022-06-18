<?php

$errname =$errprenom=$erraddresse=$erroremail=$errorpass=$validpass=$emailExist="";

if($_SERVER['REQUEST_METHOD']== 'POST'){
    if(empty($_POST['nom'])){

        $errname='<span class="error"> Veuillez entrer votre nom  </span>';
        
  }else{
      if(!preg_match("/^[a-zA-Z-']{3,}$/",$_POST['nom'])){

        $errname='<span class="error"> seules les lettres sont autorisées</span>';
      }
  }

  if(empty($_POST['prenom'])){

        $errprenom='<span class="error"> entrez votre prénom sil vous plait </span>'; 
  }else{
        if(!preg_match("/^[a-zA-Z-']{3,}$/",$_POST['prenom'])){
        
            $errprenom='<span class="error"> only letters allowed </span>';
        }
    }

 

if(empty($_POST['email'])){
    
    $erroremail='<span class="error">veuillez entrer votre email</span>'; 
}
else{ $testemail=validateInput($_POST['email']);


    if(!filter_var($testemail,FILTER_VALIDATE_EMAIL)){
        $erroremail='<span class="error">Email invalide</span>';
    }
}
$pass=$_POST['password'];
$number = preg_match('@[0-9]@', $pass);
$lowercase = preg_match('@[a-z]@', $pass);
if(strlen($pass)<= 8 || !$lowercase  || !$number ) {
    $errorpass=' <span class="error"> Le mot de passe doit comporter au moins 8 caractères et doit contenir au moins un chiffre, une lettre majuscule, une lettre minuscule et un caractère spécial.</span>';
   } else {
    $validpass= '<span class="valid">Votre mot de passe est fort.</span>';
   }



function validateInput($data){
    $data=trim($data);
    $data=stripslashes($data);
    $data=htmlspecialchars($data);
    return $data;
}

?>
<?php
//Connecter la base des données


if(isset($_POST['submits'])){
 
    $nom =$_POST['nom'];
    $prenom=$_POST['prenom'];
    $email=$_POST['email'];
    $pass=$_POST['password'];

    // sélectionnez où nom du champ = e-mail
    
    $select="SELECT * from freelancers where email='$email'";
    $query=mysqli_query($conn,$select) or die('query failed, '.$select);

    if(mysqli_num_rows($query)>0){
        $emailExist = "l'e-mail existe déjà, veuillez vous connecter";
    }
    elseif($errname == ""  && $errprenom == "" && $erroremail== "" && $errorpass =="passwords") {
        $insert="INSERT INTO `freelancers`(`nom`, `prenom`, `email`, `pass`)
            VALUES ('$nom','$prenom','$email','$pass')";
            
        $query2=mysqli_query($conn,$insert) or die('query failed, '.$insert);
    }
}
}
?>