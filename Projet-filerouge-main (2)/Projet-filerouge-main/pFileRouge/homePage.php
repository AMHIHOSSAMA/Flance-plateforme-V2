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



?>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />

<section id="hpfrsSct">
    <div class="container" id="salut">
        <div class="row ">
            <div class="col-3" id="pinkCol">
                <h3> <?php echo "Salut" . " " . $data['nom'] ; ?></h3>
                <p>Recevez des offres de vendeurs pour votre projet</p>
                <button id="offerBut" type="button"  class="btn btn-3">Toute catégorie</button>
            </div>
            <div class="col-7" id="salut2">
                <h2>Voici ce que vous <br> devez créer</h2>

            </div>

        </div>
    </div>
</section>








<section id="hpsndSct">
    <div class="container   treefrms">
        <div class="row">
            <div class="col-4">
            <select class="form-select form-control-lg" aria-label="Default select example">
           
            <!-- Geting the 3 categoris from database to selecte chois -->

           <?php
            $i =0;
            $sql = "SELECT * FROM categories";
            $query = mysqli_query($conn, $sql);

            while($row = mysqli_fetch_array($query)){

            echo '
            
            <option value='.$row['nom'].'>' .$row['nom'].'</option>
            ';
            }
        ?>
        
        <!-- end  -->
        </select>

            </div>
            <div class="col-4">
            <input class="form-control form-control-lg" type="text" placeholder="Rechercher">
            </div>
            <div class="col-4">
                <button class="btn Searchhmpbtn" type="button" id="Searchhmpbtn" >Recherche Avancée</button>
            </div>

        </div>

    </div>

</section>

</section>


<section>
    
    CARESOLE SECTION   
</section>


<section class="container" id="projectsSecti">
    <div id="proRow1" class="row">
                <div class="col">
                    <h2>Digital Marketing</h2>
                </div>
                <div class="col">
                    <a class="lnkCompts" href="marketingPage.php">Voir tout <i class="fa-solid fa-angle-right"></i></a>
                </div>
            </div>


            
            <div class="card-deck">
            <div class="row row-cols-1 row-cols-md-4 g-4">
            <?php
                    $sql = "SELECT * FROM projets_profss   INNER JOIN freelancers ON projets_profss.idFreelancer = freelancers.idFreelancer WHERE categorie='Digital Mark' ORDER BY RAND () LIMIT 4";
                    if ($result = mysqli_query($conn, $sql)) {
                        if (mysqli_num_rows($result) > 0) {
                            while($row = mysqli_fetch_array($result)){
                            echo "
                            <div class='col'>
                            <div id='cards' class='card'>
                            <img class='card-img-top' src=". $row['imageProj'] ." alt='Card image cap'>
                            <div class='card-body'>
                              <h5 id='titlePro' class='card-title'>". $row['titre'] ."</h5>
                              <div class='row persInf'>
                                <div class='col-3'>
                                <img id='hmpHero' class='card-img-top' src=". $row['image'] . " alt='Card image cap'>
                                </div>
                                 <div class='col-8'>
                                    <h6>". $row['nom'] . " " . $row['prenom'] ."</h6>
                                </div>
                            </div>
                              <p class='card-text prProj'>". $row['descriProj'] ."</p>
                              <i id='star' class='fa-solid fa-star'>&nbsp;5.0</i>
                            </div>
                            <div class='card-footer'>
                              <small class='text-muted'>Last updated 3 mins ago</small>
                            </div>
                          </div>
                          </div>
                            ";
                        }
                    }

                    }
            ?>
   </div>
   </div>
</div>

<div id="proRow2" class="row">
                <div class="col">
                    <h2>Design</h2>
                </div>
                <div class="col">
                    <a class="lnkCompts" href="designPage.php">Voir tout <i class="fa-solid fa-angle-right"></i></a>
                </div>
            </div>


            
            <div class="card-deck">
            <div class="row row-cols-1 row-cols-md-4 g-4">
            <?php
                    $sql = "SELECT * FROM projets_profss   INNER JOIN freelancers ON projets_profss.idFreelancer = freelancers.idFreelancer WHERE categorie='Design' ORDER BY RAND () LIMIT 4";
                    if ($result = mysqli_query($conn, $sql)) {
                        if (mysqli_num_rows($result) > 0) {
                            while($row = mysqli_fetch_array($result)){
                            echo "
                            <div class='col'>
                            <div id='cards' class='card'>
                            <img class='card-img-top' src=". $row['imageProj'] ." alt='Card image cap'>
                            <div class='card-body'>
                              <h5 id='titlePro' class='card-title'>". $row['titre'] ."</h5>
                              <div class='row persInf'>
                                <div class='col-3'>
                                <img id='hmpHero' class='card-img-top' src=". $row['image'] . " alt='Card image cap'>
                                </div>
                                 <div class='col-8'>
                                    <h6>". $row['nom'] . " " . $row['prenom'] ."</h6>
                                </div>
                            </div>
                              <p class='card-text prProj'>". $row['descriProj'] ."</p>
                              <i id='star' class='fa-solid fa-star'>&nbsp;5.0</i>
                            </div>
                            <div class='card-footer'>
                              <small class='text-muted'>Last updated 3 mins ago</small>
                            </div>
                          </div>
                          </div>
                            ";
                        }
                    }

                    }

            ?>
   </div>
   </div>
</div>
<div id="proRow3" class="row">
                <div class="col">
                    <h2>Programmation</h2>
                </div>
                <div class="col">
                    <a class="lnkCompts" href="programPage.php">Voir tout <i class="fa-solid fa-angle-right"></i></a>
                </div>
            </div>


            
            <div class="card-deck">
            <div class="row row-cols-1 row-cols-md-4 g-4">
            <?php
                    $sql = "SELECT * FROM projets_profss   INNER JOIN freelancers ON projets_profss.idFreelancer = freelancers.idFreelancer WHERE categorie='Programmation' ORDER BY RAND () LIMIT 4";
                    if ($result = mysqli_query($conn, $sql)) {
                        if (mysqli_num_rows($result) > 0) {
                            while($row = mysqli_fetch_array($result)){
                            echo "
                            <div class='col'>
                            <div id='cards' class='card'>
                            <img class='card-img-top' src=". $row['imageProj'] ." alt='Card image cap'>
                            <div class='card-body'>
                              <h5 id='titlePro' class='card-title'>". $row['titre'] ."</h5>
                              <div class='row persInf'>
                                <div class='col-3'>
                                <img id='hmpHero' class='card-img-top' src=". $row['image'] . " alt='Card image cap'>
                                </div>
                                 <div class='col-8'>
                                    <h6>". $row['nom'] . " " . $row['prenom'] ."</h6>
                                </div>
                            </div>
                              <p class='card-text prProj'>". $row['descriProj'] ."</p>
                              <i id='star' class='fa-solid fa-star'>&nbsp;5.0</i>
                            </div>
                            <div class='card-footer'>
                              <small class='text-muted'>Last updated 3 mins ago</small>
                            </div>
                          </div>
                          </div>
                            ";
                        }
                    }

                    }



            ?>
   </div>
   </div>
</div>
</section>

</section>



<section class="container">


</section>