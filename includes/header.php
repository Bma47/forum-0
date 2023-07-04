<?php 

session_start();
define("APPURL", "http://localhost/forum");

?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Welcome To Forum</title>

    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Delicious+Handrawn&family=Forum&family=Merienda&display=swap" rel="stylesheet">

    <link href="<?php echo APPURL; ?>../css/bootstrap.css?v=<?php echo time();?>" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="<?php echo APPURL; ?>../css/custom.css?v=<?php echo time();?>" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
  </head>

  <body>
    <div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="<?php echo APPURL; ?>/index.php"><img  class="logo"src="<?php echo APPURL; ?>../img/logo.png" style="width:100px; margin-top:-30px"  ></a>
        </div>
        <div class="collapse navbar-collapse">
          <ul class="nav navbar-nav navbar-right">
            <li class="active"><a href="<?php echo APPURL; ?>/index.php">Home</a></li>
            <?php if (isset($_SESSION['username'])) : ?>
            <li><a href="<?php echo APPURL; ?>/topics/create.php">Topic toevoegen</a></li>
            <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
          <?php echo $_SESSION['username'];?>
          <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Profail</a></li>
            <li><a href="#">user</a></li>
            <li><a href="<?php echo APPURL; ?>/auth/logout.php">Logout</a></li>
          </ul>
        </li>
          <?php else : ?>
          <li><a href="<?php echo APPURL; ?>/auth/register.php">Register</a></li>
          <li><a href="<?php echo APPURL; ?>/auth/login.php">login</a></li>
          <?php endif ; ?>
          </ul>
        </div><!--/.nav-collapse -->
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="<?php echo APPURL; ?>/js/bootstrap.js"></script>
