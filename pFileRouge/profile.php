<?php
session_start();

include('header.php');
include('datacon.php');
include('navbar.php');

$data = "";
 if (isset($_SESSION['id_free']) && $_SESSION['id_free'] != "") {
 
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

<section id="ProflFrst">
    <div class="container " id="prfCont1">
        <div  class="row d-flex justify-content-center">
            <div class="col-4 lesCols" id="prfstRow">
                        <div class="d-flex justify-content-center">
                        <img class="d-flex justify-content-center" id="prleImge"  src="<?php echo $data['image']; ?>" alt="">
                            
                        </div>
                    
                    <h2 id="imgDiv" class="d-flex justify-content-center"><?php echo  $data['nom'] . " " . $data['prenom']; ?></h2>
                    <div class="d-flex justify-content-center">
                         <button id="btnEdite1" type="button" class="btn btn d-flex justify-content-center"><i class="fa-solid fa-pen-to-square"></i></button>
                    </div>
                    <hr>
                    <div class="row sousRow">
                        <div class="col">
                           <span class="editeProfIcon"><i class="fa-solid fa-calendar iconsInf"></i>&ensp; Date de naissance</span> 
                        </div>
                        <div class="col d-flex justify-content-end">
                        <span> <?php echo $data['date']; ?></span>
                        </div>
                    </div>
                    <div class="row sousRow">
                        <div class="col">
                        <span><i class="fa-solid fa-phone iconsInf"></i>&ensp;Téléphone</span>  
                        </div>
                        <div class="col d-flex justify-content-end">
                        <span><?php echo $data['telnumber']; ?></span> 
                        </div>
                    </div>
                    <div class="row sousRow">
                        <div class="col">
                        <span><i class="fa-solid fa-envelope-circle-check iconsInf"></i>&ensp; Email</span> 
                        </div>
                        <div class="col d-flex justify-content-end">
                        <span><?php echo $data['email']; ?></span>
                        </div>
                    </div>
                    <div id="iconsProf" class="d-flex justify-content-center" >
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
            <div class="col lesCols">
                    <div id="addProRow" class="row d-flex justify-content-end classPre">
                            <div class="col-8">
                                <p id="prepYou">Préparez vos projets pour réussir avec des pigistes experts et des outils avancés.</p>
                            </div>
                            <div class="col">
                            <button id="offerBut" type="button"  class="btn btn-3"><i class="fa-solid fa-plus"> </i>&ensp;Ajouter un Projet</button>
                            </div>
                    </div>
                    <div id="addProRow" class="row">
                        <div class="row">
                               <div class="col-9">
                                <span id="descrSpans"> <i class="fa-solid fa-file-pen"></i>&ensp;Description</span> 
                               </div>
                               <div  class="col editeBtn">
                                   <button id="btnEdite1" type="button" class="btn btn"><i class="fa-solid fa-pen-to-square "></i></button>
                               </div>
                        </div>
                        <div class="row ">
                               <p><?php echo $data['desription']; ?></p>
                        </div>
                           
                    </div>
                    <div id="addProRow" class="row">
                        <span id="compSpan" ><i class="fa-solid fa-laptop-file"></i>&ensp;Ajouter votre compétences</span>
                    <div class="row row-cols-4" id="compRow1">
                        
                            <?php
                    $i =0;
                    $sql = "SELECT nomCompetence FROM competences";
                    $query = mysqli_query($conn, $sql);

                    while($row = mysqli_fetch_array($query)){

                    echo '
                    <div class="form-check col" id="compCheck">
                            <input class="form-check-input" type="checkbox" name="flexCheckDefault" id="flexCheckDefault '.  $i++ .'">
                            <label class="form-check-label" for="flexCheckDefault">
                            ' .$row['nomCompetence'].'
                            </label>
                            </div> ';
                    }
                           
            ?>
                    </div>
                    <div class="container d-flex justify-content-end">
                    <input  type="submit" id="btnlogin"   class="btn btn-outline btnAddproject">
                    </div>
                   
                    </div>
            </div>

        </div>
        <div>
        <div id="rowleftCom" class="row ">
            <div class="col-4 " id="prscnRow">
                hello
            </div>
        </div>

    </div>
</section>