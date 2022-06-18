<?php

session_start();

include('header.php');
include('datacon.php');
include('navbar.php');


$data = "";
if (isset($_SESSION['id_free']) && $_SESSION['id_free'] != "") {

    // $requet="SELECT * FROM client WHERE email='$email' AND passwords='$pass'";
    //   $result=mysqli_query($conn,$requet);

    $idFreelancer = $_SESSION["id_free"];
    $data = mysqli_fetch_assoc(
        mysqli_query($conn, "SELECT * FROM freelancers WHERE  idFreelancer = $idFreelancer")
    );
   
    ?>
    
    <?php
}

if (isset($_SESSION['id_cli']) && $_SESSION['id_cli'] != "") {
    $idClient = $_SESSION["id_cli"];
    $data = mysqli_fetch_assoc(
        mysqli_query($conn, "SELECT * from client WHERE  idclient = $idClient")
    );
   
    ?>
    
    <?php
}


// get id of post client


if (isset($_SESSION['id_offer'])) {

    
    // $sql = "SELECT * FROM publication INNER JOIN client ON publication.idclient = client.idclient "; 

    $id = $_GET['id'];
    $data = mysqli_fetch_assoc(
        mysqli_query($conn, "SELECT * FROM publication INNER JOIN client ON publication.idclient = client.idclient  WHERE  id_post = $id")
    );
   
    ?>
    
    <?php
}



?>
<div class="container row">
    <div class="col-8">
    
        <h6><?php echo $data['nom']. " " .$data['prenom']; ?></h6><span>Crée le <?php echo $data['date'] ?></span>
        <h3><?php echo $data['nomPost'] ;?></h3>
        <h5><?php echo $data['categorie'] ?></h5>
        <div class="row">
            <div class="col">
            <button class="btn btn-primary" type="submit">Postuler</button>
            </div>
           
            
            <div id="" class="col d-flex justify-content-end" >
                        <a href="" class="me-4 text-reset">
                        <i class="fab fa-facebook"></i>
                        </a>
                        <a href="" class="me-4 text-reset">
                            <i class="fab fa-twitter"></i>
                        </a>
                        <a href="" class="me-4 text-reset">
                            <i class="fab fa-instagram"></i>
                        </a>
                        <a href="" class="me-4 text-reset">
                        <i class="fab fa-linkedin"></i>
                        </a>
                        <a href="" class="me-4 text-reset">
                         <i class="fab fa-github"></i>
                         </a>
                     </div>
            </div>
            <img src="<?php echo $data['imageOffer'] ;?>" alt="">
            <p><?php echo $data['description'] ;?></p>

        </div>
 
    <div  class="col" >
            <img src="<?php echo $data['image'] ;?>" alt="">           
            <div class="row">
                <div class="col">
                <h4><?php echo $data['nom']. " " .$data['prenom']; ?></h4>
                </div>
                <div class="col">

                </div>

            </div>

    </div>

</div>