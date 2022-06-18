<link rel="stylesheet" href="login.css">
<?php
include('header.php');
include('datacon.php');

session_start();

if (isset($_POST['entre'])) {
    $users = $_POST['user'];
    $pass = $_POST['pass'];
    $query_client = "SELECT * FROM client WHERE email='$users' && passwords='$pass' ";
    $query_freelancer = "SELECT * FROM freelancers WHERE email='$users' && passwords='$pass' ";
    if (mysqli_num_rows($result_clt = myqsl_query())) {
        # code...
    }
}

?>


<div class="login-box">
  <h2>Login</h2>
  <form methode="POST">
    <div class="user-box">
      <input type="text" name="user" required="" >
      <label>Username</label>
    </div>
    <div class="user-box">
      <input type="password" name="pass" required="">
      <label>Password</label>
    </div>
    <button type="submit" name="entre">Submit</button>
  </form>
</div>



